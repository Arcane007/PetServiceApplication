package com.petservice.pet.service.service.Impl;

import com.petservice.pet.service.dto.PetDTO;
import com.petservice.pet.service.exception.PetNotFoundException;
import com.petservice.pet.service.repository.PetRepository;
import com.petservice.pet.service.service.PetService;
import com.petservice.pet.service.util.PetMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class PetServiceImpl implements PetService {

    private final PetRepository petRepository;
    private final PetMapper petMapper;

    @Value("${pet.not.found}")
    private String petNotFound;

    @Override
    public PetDTO findPet(int petId) throws PetNotFoundException {
        return petRepository.findById(petId)
                .map(petMapper::petToPetDTO)
                .orElseThrow(()-> new PetNotFoundException(String.format(petNotFound,petId)));
    }

    @Override
    public Double findAverageAgeOfPet() {
        return petRepository.findAverageAgeOfPet()
                .orElse(0.0);
    }
}
