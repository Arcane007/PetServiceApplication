package com.petservice.pet.service.util;

import com.petservice.pet.service.dto.DomesticPetDTO;
import com.petservice.pet.service.dto.OwnerDTO;
import com.petservice.pet.service.dto.PetDTO;
import com.petservice.pet.service.dto.WildPetDTO;
import com.petservice.pet.service.entity.DomesticPet;
import com.petservice.pet.service.entity.Owner;
import com.petservice.pet.service.entity.Pet;
import com.petservice.pet.service.entity.WildPet;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface PetMapper {

    String UNSUPPORTED_PET_INSTANCE = "Unsupported pet instance: %s";

    default PetDTO petToPetDTO(Pet pet) {
        return switch (pet) {
            case DomesticPet domesticPet -> domesticPetToDomesticPetDTO(domesticPet);
            case WildPet wildPet -> wildPetToWildPetDTO(wildPet);
            default -> throw new IllegalArgumentException(String.format(UNSUPPORTED_PET_INSTANCE, pet.getClass()));
        };
    }

    @Mapping(source = "domesticPet.owner", target = "ownerDTO")
    @Mapping(target = "ownerDTO.petDTO", ignore = true)
    DomesticPetDTO domesticPetToDomesticPetDTO(DomesticPet domesticPet);

    @Mapping(source = "wildPet.owner", target = "ownerDTO")
    @Mapping(target = "ownerDTO.petDTO", ignore = true)
    WildPetDTO wildPetToWildPetDTO(WildPet wildPet);


}
