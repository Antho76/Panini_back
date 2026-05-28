package com.panini.back.service;

import com.panini.back.dto.CollectionUpdateRequest;
import com.panini.back.entity.Sticker;
import com.panini.back.entity.UserCollectionItem;
import com.panini.back.repository.StickerRepository;
import com.panini.back.repository.UserCollectionItemRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CollectionService {
    private final UserCollectionItemRepository collectionRepository;
    private final StickerRepository stickerRepository;

    public CollectionService(UserCollectionItemRepository collectionRepository, StickerRepository stickerRepository) {
        this.collectionRepository = collectionRepository;
        this.stickerRepository = stickerRepository;
    }

    public List<UserCollectionItem> getByOwner(String ownerName) {
        return collectionRepository.findByOwnerNameIgnoreCase(ownerName);
    }

    public UserCollectionItem update(CollectionUpdateRequest request) {
        Sticker sticker = stickerRepository.findByCode(request.getStickerCode())
                .orElseThrow(() -> new IllegalArgumentException("Sticker introuvable : " + request.getStickerCode()));

        UserCollectionItem item = collectionRepository
                .findByOwnerNameIgnoreCaseAndSticker_Code(request.getOwnerName(), request.getStickerCode())
                .orElseGet(UserCollectionItem::new);

        item.setOwnerName(request.getOwnerName());
        item.setSticker(sticker);
        item.setQuantityOwned(request.getQuantityOwned());
        item.setMissing(request.getQuantityOwned() == null || request.getQuantityOwned() <= 0);
        return collectionRepository.save(item);
    }

    public Map<String, Object> stats(String ownerName) {
        List<UserCollectionItem> items = collectionRepository.findByOwnerNameIgnoreCase(ownerName);
        long owned = items.stream().filter(i -> i.getQuantityOwned() != null && i.getQuantityOwned() > 0).count();
        long missing = items.stream().filter(i -> i.getQuantityOwned() == null || i.getQuantityOwned() <= 0).count();
        long duplicates = items.stream().filter(i -> i.getQuantityOwned() != null && i.getQuantityOwned() > 1).count();
        return Map.of(
                "owner", ownerName,
                "owned", owned,
                "missing", missing,
                "duplicates", duplicates,
                "tracked", items.size()
        );
    }
}
