package com.panini.back.entity;
import jakarta.persistence.*;
@Entity @Table(name="categories") public class Category { @Id @GeneratedValue(strategy=GenerationType.IDENTITY) private Long id; @Column(nullable=false, unique=true) private String code; @Column(nullable=false) private String label; public Long getId(){return id;} public void setId(Long id){this.id=id;} public String getCode(){return code;} public void setCode(String code){this.code=code;} public String getLabel(){return label;} public void setLabel(String label){this.label=label;} }
