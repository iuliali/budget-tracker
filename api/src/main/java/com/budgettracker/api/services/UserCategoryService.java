package com.budgettracker.api.services;

import com.budgettracker.api.auth_facade.AuthenticationFacade;
import com.budgettracker.api.dtos.NewUserCategoryDto;
import com.budgettracker.api.dtos.UserCategoryDto;
import com.budgettracker.api.exceptions.CategoryIsDeletedException;
import com.budgettracker.api.exceptions.CategoryNotFoundException;
import com.budgettracker.api.exceptions.UserCategoryNameAlreadyExistsException;
import com.budgettracker.api.exceptions.UserHasNoActiveCategoriesException;
import com.budgettracker.api.models.User;
import com.budgettracker.api.models.UserCategory;
import com.budgettracker.api.repositories.UserCategoryRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserCategoryService {
    private final UserCategoryRepository userCategoryRepository;
    private final UserService userService;
    private final AuthenticationFacade authenticationFacade;

    protected boolean checkIfDeleted(UserCategory userCategory){
        return userCategory.getDeletedAt() != null;
    }
    protected boolean checkIfActiveCategoryWithTheSameName(String name, User user){
        return userCategoryRepository.findActiveByName(name, user).isPresent();
    }


    public Optional<UserCategory> getUserCategoryIfExists(BigInteger id){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        UserCategory userCategory = getUserCategoryById(id);
        if(userCategory.getUser() == user){
            return Optional.of(userCategory);
        }
        return Optional.empty();
    }

    public UserCategory getUserCategoryById(BigInteger id) {
        return userCategoryRepository.findById(id).orElseThrow(
                CategoryNotFoundException::new
        );
    }

    public String createUserCategory(NewUserCategoryDto userCategoryDto){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        if(checkIfActiveCategoryWithTheSameName(userCategoryDto.getName(), user)){
            throw new UserCategoryNameAlreadyExistsException();
        }
        UserCategory userCategory = new UserCategory();
        userCategory.setName(userCategoryDto.getName());
        userCategory.setUser(user);
        userCategoryRepository.save(userCategory);
        return "Category has been created successfully";
    }
    public List<UserCategoryDto> getUserCategories(){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        return userCategoryRepository.findActiveByUser(user)
                .orElseThrow(
                        UserHasNoActiveCategoriesException::new
                )
                .stream()
                .map(UserCategoryDto::new)
                .toList();


    }
    public String updateUserCategory(BigInteger id, NewUserCategoryDto userCategoryDto){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        var userCategory = userCategoryRepository.findById(id).orElseThrow(
                CategoryNotFoundException::new
        );
        if(checkIfDeleted(userCategory)){
            throw new CategoryIsDeletedException();
        }
        if(checkIfActiveCategoryWithTheSameName(userCategoryDto.getName(), user)){
            throw new UserCategoryNameAlreadyExistsException();
        }
        userCategory.setName(userCategoryDto.getName());
        userCategoryRepository.save(userCategory);
        return "Category has been updated successfully";
    }

    @Transactional
    public String deleteUserCategory(BigInteger id){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        var userCategory = userCategoryRepository.findById(id).orElseThrow(
                CategoryNotFoundException::new
        );
        if(checkIfDeleted(userCategory)){
            throw new CategoryIsDeletedException();
        }
        userCategoryRepository.deleteById(id, user);
        return "Category has been deleted successfully";
    }
}
