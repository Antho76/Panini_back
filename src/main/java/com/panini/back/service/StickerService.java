package com.panini.back.service;

import com.panini.back.entity.Sticker;
import com.panini.back.entity.Team;
import com.panini.back.repository.StickerRepository;
import com.panini.back.repository.TeamRepository;
import jakarta.annotation.PostConstruct;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StickerService {
    private final StickerRepository stickerRepository;
    private final TeamRepository teamRepository;

    public StickerService(StickerRepository stickerRepository, TeamRepository teamRepository) {
        this.stickerRepository = stickerRepository;
        this.teamRepository = teamRepository;
    }

    @PostConstruct
    public void seedData() {
        if (teamRepository.count() > 0 || stickerRepository.count() > 0) {
            return;
        }

        Team france = new Team();
        france.setCode("FRA");
        france.setName("France");
        france.setConfederation("UEFA");
        france.setGroupName("TBD");
        teamRepository.save(france);

        createSticker("FRA1", "Team Logo", "TEAM", 1, true, france);
        createSticker("FRA2", "Mike Maignan", "PLAYER", 1, false, france);
        createSticker("FRA3", "Theo Hernandez", "PLAYER", 1, false, france);
        createSticker("FRA4", "William Saliba", "PLAYER", 1, false, france);
        createSticker("FRA5", "Jules Kounde", "PLAYER", 1, false, france);
        createSticker("FRA6", "Ibrahima Konate", "PLAYER", 1, false, france);
        createSticker("FRA7", "Eduardo Camavinga", "PLAYER", 1, false, france);
        createSticker("FRA8", "Aurelien Tchouameni", "PLAYER", 1, false, france);
        createSticker("FRA9", "Adrien Rabiot", "PLAYER", 1, false, france);
        createSticker("FRA10", "Bradley Barcola", "PLAYER", 1, false, france);
        createSticker("FRA11", "Randal Kolo Muani", "PLAYER", 1, false, france);
        createSticker("FRA12", "Marcus Thuram", "PLAYER", 1, false, france);
        createSticker("FRA13", "Team Photo", "TEAM", 1, true, france);
        createSticker("FRA14", "Michael Olise", "PLAYER", 1, false, france);
        createSticker("FRA15", "Ousmane Dembele", "PLAYER", 1, false, france);
        createSticker("FRA16", "Warren Zaire-Emery", "PLAYER", 1, false, france);
        createSticker("FRA17", "Desire Doue", "PLAYER", 1, false, france);
        createSticker("FRA18", "Dayot Upamecano", "PLAYER", 1, false, france);
        createSticker("FRA19", "Lucas Digne", "PLAYER", 1, false, france);
        createSticker("FRA20", "Kylian Mbappe", "PLAYER", 1, false, france);
    }

    private void createSticker(String code, String name, String type, Integer page, boolean special, Team team) {
        Sticker sticker = new Sticker();
        sticker.setCode(code);
        sticker.setName(name);
        sticker.setType(type);
        sticker.setPageNumber(page);
        sticker.setSpecialSticker(special);
        sticker.setTeam(team);
        stickerRepository.save(sticker);
    }

    public List<Sticker> getAll() { return stickerRepository.findAll(); }
    public List<Sticker> search(String query) {
        if (query == null || query.isBlank()) return stickerRepository.findAll();
        return stickerRepository.findByNameContainingIgnoreCaseOrCodeContainingIgnoreCase(query, query);
    }
    public List<Sticker> byTeam(String teamCode) { return stickerRepository.findByTeam_CodeIgnoreCase(teamCode); }
}
