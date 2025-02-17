package com.petservice.pet.service.dto;
import com.petservice.pet.service.enums.Gender;
import com.petservice.pet.service.enums.PetType;
import lombok.*;

import java.time.LocalDate;




@NoArgsConstructor
@ToString(callSuper = true)
@Setter
@Getter
public class DomesticPetDTO extends PetDTO {

    private LocalDate birthDate;


    @Builder
    public DomesticPetDTO(int id, String name, Gender gender, PetType type, OwnerDTO ownerDTO, LocalDate birthDate) {
        super(id, name, gender, type, ownerDTO);
        this.birthDate = birthDate;
    }

}