package com.panini.back.controller;

import com.panini.back.dto.CollectionDtos.UpsertItemRequest;
import com.panini.back.dto.DashboardResponse;
import com.panini.back.entity.CollectionItem;
import com.panini.back.service.CollectionService;
import jakarta.validation.Valid;
import org.springframework.security.core.Authentication;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Validated
@RestController
@RequestMapping("/api/me")
public class MeController {
    private final CollectionService service;

    public MeController(CollectionService service){
        this.service=service;
    }

    @GetMapping("/dashboard")
    public DashboardResponse dashboard(Authentication a){
        return service.dashboard(a.getName());
    }

    @GetMapping("/collection")
    public List<CollectionItem> collection(Authentication a){
        return service.myItems(a.getName());
    }

    @PostMapping("/collection")
    public CollectionItem upsert(Authentication a, @Valid @RequestBody UpsertItemRequest req){
        return service.upsert(a.getName(), req);
    }
}
