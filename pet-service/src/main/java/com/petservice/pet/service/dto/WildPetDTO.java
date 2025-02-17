package com.petservice.pet.service.dto;

import com.petservice.pet.service.enums.Gender;
import com.petservice.pet.service.enums.PetType;
import lombok.*;

@NoArgsConstructor
@ToString(callSuper = true)
@Setter
@Getter
public class WildPetDTO extends PetDTO {

    private String birthPlace;

    @Builder
    public WildPetDTO(int id, String name, Gender gender, PetType type, OwnerDTO ownerDTO, String birthPlace) {
        super(id, name, gender, type, ownerDTO);
        this.birthPlace = birthPlace;
    }

}