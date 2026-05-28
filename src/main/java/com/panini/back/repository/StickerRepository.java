package com.panini.back.repository;

import com.panini.back.entity.Sticker;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface StickerRepository extends JpaRepository<Sticker, Long> {
    Optional<Sticker> findByCode(String code);
    List<Sticker> findByTeam_CodeIgnoreCase(String teamCode);
    List<Sticker> findByNameContainingIgnoreCaseOrCodeContainingIgnoreCase(String name, String code);
}
