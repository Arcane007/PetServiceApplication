package com.petservice.pet.service.repository;

import com.petservice.pet.service.entity.Owner;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface OwnerRepository extends JpaRepository<Owner,Integer> {

    @Query("SELECT o.id, o.firstName, o.lastName, o.pet.name FROM Owner o JOIN o.pet")
    List<Object[]> findIdAndFirstNameAndLastNameAndPetName(Pageable pageable);
}
