package com.petservice.pet.service.service.Impl;

import com.petservice.pet.service.dto.OwnerDTO;
import com.petservice.pet.service.entity.Owner;
import com.petservice.pet.service.exception.OwnerNotFoundException;
import com.petservice.pet.service.repository.OwnerRepository;
import com.petservice.pet.service.service.OwnerService;
import com.petservice.pet.service.util.OwnerMapper;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
public class OwnerServiceImpl implements OwnerService {

    private final OwnerRepository ownerRepository;
    private final OwnerMapper ownerMapper;

    @Value("${owner.not.found}")
    private String ownerNotFound;

    @Override
    public void saveOwner(OwnerDTO ownerDTO) {
        Owner owner = ownerMapper.ownerDTOToOwner(ownerDTO);
        ownerRepository.save(owner);
    }

    @Override
    public OwnerDTO findOwner(int ownerId) throws OwnerNotFoundException {
        return ownerRepository.findById(ownerId)
                .map(ownerMapper::ownerToOwnerDTO)
                .orElseThrow(() -> new OwnerNotFoundException(String.format(ownerNotFound, ownerId)));
    }

    @Override
    public void updatePetDetails(int ownerId, String petName) throws OwnerNotFoundException {
        Owner owner = ownerRepository.findById(ownerId)
                .orElseThrow(() -> new OwnerNotFoundException(String.format(ownerNotFound, ownerId)));
        owner.getPet().setName(petName);
        ownerRepository.save(owner);
    }

    @Override
    public void deleteOwner(int ownerId) throws OwnerNotFoundException {
        boolean ownerExists = ownerRepository.existsById(ownerId);
        if (!ownerExists) {
            throw new OwnerNotFoundException(String.format(ownerNotFound, ownerId));
        } else {
            ownerRepository.deleteById(ownerId);
        }
    }

    @Override
    public List<OwnerDTO> findAllOwners() {
        return ownerRepository.findAll()
                .stream()
                .map(ownerMapper::ownerToOwnerDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<Object[]> findIdAndFirstNameAndLastNameAndPetNameOfPaginatedOwners(int pageNumber,
                                                                                   int numberOfRecordsPerPage) {
        Pageable pageable = PageRequest.of(pageNumber, numberOfRecordsPerPage);
        return ownerRepository.findIdAndFirstNameAndLastNameAndPetName(pageable);
    }
}
