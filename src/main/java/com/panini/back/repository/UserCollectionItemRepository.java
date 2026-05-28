package com.panini.back.repository;

import com.panini.back.entity.UserCollectionItem;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserCollectionItemRepository extends JpaRepository<UserCollectionItem, Long> {
    List<UserCollectionItem> findByOwnerNameIgnoreCase(String ownerName);
    Optional<UserCollectionItem> findByOwnerNameIgnoreCaseAndSticker_Code(String ownerName, String stickerCode);
}
