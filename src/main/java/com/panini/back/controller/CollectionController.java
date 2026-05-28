package com.panini.back.controller;

import com.panini.back.dto.CollectionUpdateRequest;
import com.panini.back.entity.UserCollectionItem;
import com.panini.back.service.CollectionService;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/collection")
@CrossOrigin(origins = "*")
public class CollectionController {
    private final CollectionService collectionService;

    public CollectionController(CollectionService collectionService) {
        this.collectionService = collectionService;
    }

    @GetMapping("/{ownerName}")
    public List<UserCollectionItem> byOwner(@PathVariable String ownerName) {
        return collectionService.getByOwner(ownerName);
    }

    @GetMapping("/{ownerName}/stats")
    public Map<String, Object> stats(@PathVariable String ownerName) {
        return collectionService.stats(ownerName);
    }

    @PostMapping
    public UserCollectionItem update(@Valid @RequestBody CollectionUpdateRequest request) {
        return collectionService.update(request);
    }
}
