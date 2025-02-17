package com.petservice.pet.service.repository;

import com.petservice.pet.service.entity.Pet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;


public interface PetRepository extends JpaRepository<Pet,Integer> {

    @Query("SELECT AVG(YEAR(CURRENT_DATE()) - YEAR(p.birthDate)) FROM Pet p")
    Optional<Double> findAverageAgeOfPet();


}
