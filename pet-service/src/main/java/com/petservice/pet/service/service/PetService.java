package com.petservice.pet.service.service;

import com.petservice.pet.service.dto.PetDTO;
import com.petservice.pet.service.exception.PetNotFoundException;

public interface PetService {

    PetDTO findPet(int petId) throws PetNotFoundException;

    Double findAverageAgeOfPet();
}
