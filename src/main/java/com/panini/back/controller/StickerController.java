package com.panini.back.controller;

import com.panini.back.entity.Sticker;
import com.panini.back.service.StickerService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/stickers")
@CrossOrigin(origins = "*")
public class StickerController {
    private final StickerService stickerService;

    public StickerController(StickerService stickerService) {
        this.stickerService = stickerService;
    }

    @GetMapping
    public List<Sticker> getAll(@RequestParam(required = false) String search,
                                @RequestParam(required = false) String team) {
        if (team != null && !team.isBlank()) {
            return stickerService.byTeam(team);
        }
        return stickerService.search(search);
    }
}
