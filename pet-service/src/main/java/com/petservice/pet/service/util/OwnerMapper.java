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
public interface OwnerMapper {

    String UNSUPPORTED_PET_INSTANCE = "Unsupported pet instance: %s";

    @Mapping(source = "petDTO", target = "pet")
    Owner ownerDTOToOwner(OwnerDTO ownerDTO);

    default Pet petDTOToPet(PetDTO petDTO) {
        return switch (petDTO) {
            case DomesticPetDTO domesticPetDTO -> domesticPetDTOToDomesticPet(domesticPetDTO);
            case WildPetDTO wildPetDTO -> wildPetDTOToWildPet(wildPetDTO);
            default -> throw new IllegalArgumentException(String.format(UNSUPPORTED_PET_INSTANCE, petDTO.getClass()));
        };
    }

    @Mapping(target = "owner", ignore = true)
    DomesticPet domesticPetDTOToDomesticPet(DomesticPetDTO domesticPetDTO);

    @Mapping(target = "owner", ignore = true)
    WildPet wildPetDTOToWildPet(WildPetDTO wildPetDTO);

    @Mapping(source = "pet", target = "petDTO")
    OwnerDTO ownerToOwnerDTO(Owner owner);

    default PetDTO petToPetDTO(Pet pet) {
        return switch (pet) {
            case DomesticPet domesticPet -> domesticPetToDomesticPetDTO(domesticPet);
            case WildPet wildPet -> wildPetToWildPetDTO(wildPet);
            default -> throw new IllegalArgumentException(String.format(UNSUPPORTED_PET_INSTANCE, pet.getClass()));
        };

    }

    @Mapping(target = "ownerDTO", ignore = true)
    DomesticPetDTO domesticPetToDomesticPetDTO(DomesticPet domesticPet);

    @Mapping(target = "ownerDTO", ignore = true)
    WildPetDTO wildPetToWildPetDTO(WildPet wildPet);

}
