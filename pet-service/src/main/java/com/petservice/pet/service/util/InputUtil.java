package com.petservice.pet.service.util;

import com.petservice.pet.service.dto.DomesticPetDTO;
import com.petservice.pet.service.dto.OwnerDTO;
import com.petservice.pet.service.dto.PetDTO;
import com.petservice.pet.service.dto.WildPetDTO;
import com.petservice.pet.service.enums.Gender;
import com.petservice.pet.service.enums.PetType;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Scanner;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class InputUtil {

    public static int acceptMenuOption(Scanner scanner) {
        System.out.println("Press 1 to add new owner.");
        System.out.println("Press 2 to fetch owner details.");
        System.out.println("Press 3 to update pet details of owner.");
        System.out.println("Press 4 to delete owner details.");
        System.out.println("Press 5 to fetch all owners.");
        System.out.println("Press 6 to fetch pet details.");
        System.out.println("Press 7 to find average age of pet.");
        System.out.println("Press 8 to find specific details using pagination.");
        int menuOption = scanner.nextInt();
        if (menuOption >= 1 && menuOption <= 8) {
            return menuOption;
        } else {
            System.out.println("Invalid option entered.");
            return acceptMenuOption(scanner);
        }
    }

    public static boolean wantToContinue(Scanner scanner) {
        System.out.println("Press Y to continue and N to exit.");
        char choice = scanner.next().toUpperCase().charAt(0);
        return 'Y' == choice;
    }

    public static OwnerDTO acceptOwnerDetailsToSave(Scanner scanner) {
        System.out.println("Enter first name of owner:");
        String firstName = scanner.next();
        System.out.println("Enter last name of owner:");
        String lastName = scanner.next();
        System.out.println("Enter gender of owner:" + Arrays.asList(Gender.values()).toString());
        String gender = scanner.next().toUpperCase();
        System.out.println("Enter city of owner:");
        String city = scanner.next();
        System.out.println("Enter state of owner:");
        String state = scanner.next();
        System.out.println("Enter mobile number of owner:");
        String mobileNumber = scanner.next();
        System.out.println("Enter email id of owner:");
        String emailId = scanner.next();
        try {
            return OwnerDTO.builder()
                    .firstName(firstName)
                    .lastName(lastName)
                    .gender(Gender.valueOf(gender))
                    .city(city)
                    .state(state)
                    .mobileNumber(mobileNumber)
                    .emailId(emailId)
                    .build();
        } catch (Exception exception) {
            System.out.println(exception.getMessage());
            return acceptOwnerDetailsToSave(scanner);
        }
    }

    public static PetDTO acceptPetDetailsToSave(Scanner scanner) {
        System.out.println("Enter name of pet:");
        String petName = scanner.next();
        System.out.println("Press D for domestic pet and W for wild pet.");
        char choice = scanner.next().toUpperCase().charAt(0);
        String petPlaceOfBirth = null;
        String petDateOfBirth = null;
        if ('W' == choice) {
            System.out.println("Enter place of birth of pet:");
            petPlaceOfBirth = scanner.next();
        } else if ('D' == choice) {
            System.out.println("Enter date of birth of pet (dd-MM-yyyy):");
            petDateOfBirth = scanner.next();
        }
        System.out.println("Enter gender of pet:" + Arrays.asList(Gender.values()).toString());
        String petGender = scanner.next().toUpperCase();
        System.out.println("Enter pet type:" + Arrays.asList(PetType.values()).toString());
        String petType = scanner.next().toUpperCase();
        try {
            if ('D' == choice) {
                return DomesticPetDTO.builder()
                        .name(petName)
                        .gender(Gender.valueOf(petGender))
                        .type(PetType.valueOf(petType))
                        .birthDate(convertStringToDate(petDateOfBirth))
                        .build();
            } else if ('W' == choice) {
                return WildPetDTO.builder()
                        .name(petName)
                        .gender(Gender.valueOf(petGender))
                        .type(PetType.valueOf(petType))
                        .birthPlace(petPlaceOfBirth)
                        .build();
            } else {
                throw new IllegalArgumentException("Unsupported pet choice: " + choice);
            }
        } catch (Exception exception) {
            System.out.println(exception.getMessage());
            return acceptPetDetailsToSave(scanner);
        }
    }

    public static String acceptPetDetailsToUpdate(Scanner scanner) {
        System.out.println("Enter updated name of pet:");
        return scanner.next();
    }

    public static int acceptOwnerIdToOperate(Scanner scanner) {
        System.out.println("Enter id of owner:");
        return scanner.nextInt();
    }

    public static int acceptPetIdToOperate(Scanner scanner) {
        System.out.println("Enter id of pet:");
        return scanner.nextInt();
    }

    public static int acceptPageSizeToOperate(Scanner scanner) {
        System.out.println("Enter page size:");
        int pageSize = scanner.nextInt();
        if (pageSize > 0) {
            return pageSize;
        } else {
            System.out.println("Page size must be greater than 0.");
            return acceptPageSizeToOperate(scanner);
        }
    }

    public static int acceptPageNumberToOperate(Scanner scanner) {
        System.out.println("Enter page number:");
        int pageNumber = scanner.nextInt();
        if (pageNumber > 0) {
            return pageNumber;
        } else {
            System.out.println("Page number must be greater than 0.");
            return acceptPageNumberToOperate(scanner);
        }
    }

    private static LocalDate convertStringToDate(String stringDate) {
        DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        return LocalDate.parse(stringDate, format);
    }

}