package com.panini.back.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "user_collection_items")
public class UserCollectionItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String ownerName;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "sticker_id", nullable = false)
    private Sticker sticker;

    @Column(nullable = false)
    private Integer quantityOwned = 0;

    @Column(nullable = false)
    private Boolean missing = true;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getOwnerName() { return ownerName; }
    public void setOwnerName(String ownerName) { this.ownerName = ownerName; }
    public Sticker getSticker() { return sticker; }
    public void setSticker(Sticker sticker) { this.sticker = sticker; }
    public Integer getQuantityOwned() { return quantityOwned; }
    public void setQuantityOwned(Integer quantityOwned) { this.quantityOwned = quantityOwned; }
    public Boolean getMissing() { return missing; }
    public void setMissing(Boolean missing) { this.missing = missing; }
}
