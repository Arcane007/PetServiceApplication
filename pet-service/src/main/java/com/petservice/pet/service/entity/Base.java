package com.petservice.pet.service.entity;

import jakarta.persistence.*;
import lombok.Generated;
import lombok.Getter;

@Getter
@MappedSuperclass
public abstract class Base {

    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int id;
}
