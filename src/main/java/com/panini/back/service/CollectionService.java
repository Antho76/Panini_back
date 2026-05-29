package com.panini.back.service;

import com.panini.back.dto.CollectionDtos.UpsertItemRequest;
import com.panini.back.dto.CollectionUpdateRequest;
import com.panini.back.dto.DashboardResponse;
import com.panini.back.entity.CollectionItem;
import com.panini.back.entity.Sticker;
import com.panini.back.entity.User;
import com.panini.back.entity.UserCollectionItem;
import com.panini.back.repository.CollectionItemRepository;
import com.panini.back.repository.StickerRepository;
import com.panini.back.repository.UserCollectionItemRepository;
import com.panini.back.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.*;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CollectionService {
    private final CollectionItemRepository items;
    private final StickerRepository stickers;
    private final UserRepository users;
    private final UserCollectionItemRepository userCollectionItems;

    public CollectionService(CollectionItemRepository items, StickerRepository stickers, UserRepository users, UserCollectionItemRepository userCollectionItems) {
        this.items = items;
        this.stickers = stickers;
        this.users = users;
        this.userCollectionItems = userCollectionItems;
    }

    public List<CollectionItem> myItems(String username) {
        return items.findByUser_Username(username);
    }

    public CollectionItem upsert(String username, UpsertItemRequest req) {
        User user = users.findByUsername(username).orElseThrow(() -> new IllegalArgumentException("User not found"));
        Sticker sticker = stickers.findByCode(req.stickerCode).orElseThrow(() -> new IllegalArgumentException("Sticker not found"));
        CollectionItem item = items.findByUser_UsernameAndSticker_Code(username, req.stickerCode).orElseGet(CollectionItem::new);
        item.setUser(user);
        item.setSticker(sticker);
        item.setQuantityOwned(req.quantityOwned == null ? 0 : req.quantityOwned);
        item.setFavorite(req.favorite != null && req.favorite);
        return items.save(item);
    }

    public DashboardResponse dashboard(String username) {
        List<CollectionItem> list = items.findByUser_Username(username);
        long total = stickers.count();
        long owned = list.stream().filter(i -> i.getQuantityOwned() != null && i.getQuantityOwned() > 0).count();
        long duplicates = list.stream().filter(i -> i.getQuantityOwned() != null && i.getQuantityOwned() > 1).count();
        long missing = Math.max(0, total - owned);
        double completion = total == 0 ? 0 : Math.round((owned * 10000.0 / total)) / 100.0;
        String display = users.findByUsername(username).map(User::getDisplayName).orElse(username);
        return new DashboardResponse(username, display, total, owned, duplicates, missing, completion);
    }

    public List<UserCollectionItem> getByOwner(String ownerName) {
        return userCollectionItems.findByOwnerNameIgnoreCase(ownerName);
    }

    public Map<String, Object> stats(String ownerName) {
        List<UserCollectionItem> list = userCollectionItems.findByOwnerNameIgnoreCase(ownerName);
        long total = stickers.count();
        long owned = list.stream().filter(i -> i.getQuantityOwned() != null && i.getQuantityOwned() > 0).count();
        long duplicates = list.stream().filter(i -> i.getQuantityOwned() != null && i.getQuantityOwned() > 1).count();
        long missing = Math.max(0, total - owned);
        double completion = total == 0 ? 0 : Math.round((owned * 10000.0 / total)) / 100.0;

        Map<String, Object> stats = new HashMap<>();
        stats.put("total", total);
        stats.put("owned", owned);
        stats.put("duplicates", duplicates);
        stats.put("missing", missing);
        stats.put("completion", completion);
        return stats;
    }

    @Transactional
    public UserCollectionItem update(CollectionUpdateRequest request) {
        Sticker sticker = stickers.findByCode(request.getStickerCode()).orElseThrow(() -> new IllegalArgumentException("Sticker not found"));
        UserCollectionItem item = userCollectionItems.findByOwnerNameIgnoreCaseAndSticker_Code(request.getOwnerName(), request.getStickerCode())
                .orElseGet(UserCollectionItem::new);
        item.setOwnerName(request.getOwnerName());
        item.setSticker(sticker);
        item.setQuantityOwned(request.getQuantityOwned() == null ? 0 : request.getQuantityOwned());
        item.setMissing(request.getQuantityOwned() == null || request.getQuantityOwned() == 0);
        return userCollectionItems.save(item);
    }
}
