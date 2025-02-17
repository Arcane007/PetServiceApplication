package com.petservice.pet.service.service;

import com.petservice.pet.service.dto.OwnerDTO;
import com.petservice.pet.service.exception.OwnerNotFoundException;

import java.util.List;

public interface OwnerService {

    void saveOwner(OwnerDTO ownerDTO);

    OwnerDTO findOwner(int ownerId) throws OwnerNotFoundException;

    void updatePetDetails(int ownerId, String petName) throws OwnerNotFoundException;

    void deleteOwner(int ownerId) throws OwnerNotFoundException;

    List<OwnerDTO> findAllOwners();

    List<Object[]> findIdAndFirstNameAndLastNameAndPetNameOfPaginatedOwners(int pageNumber, int numberOfRecordsPerPage);
}
