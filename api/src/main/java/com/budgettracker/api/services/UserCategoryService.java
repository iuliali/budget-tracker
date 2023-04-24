package com.budgettracker.api.services;

import com.budgettracker.api.auth_facade.AuthenticationFacade;
import com.budgettracker.api.dtos.NewUserCategoryDto;
import com.budgettracker.api.dtos.UserCategoryDto;
import com.budgettracker.api.models.User;
import com.budgettracker.api.models.UserCategory;
import com.budgettracker.api.repositories.UserCategoryRepository;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.time.LocalDateTime;
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
    protected boolean checkIfActiveCategoryWithTheSameName(String name){
        return userCategoryRepository.findActiveByName(name).isPresent();
    }

    public UserCategory getUserCategoryById(BigInteger id) {
        return userCategoryRepository.findById(id).orElseThrow(
                // TODO: Create custom exception
                () -> new RuntimeException("Category not found")
        );
    }

    public Optional<UserCategory> getUserCategoryIfExists(BigInteger id){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        UserCategory userCategory = getUserCategoryById(id);
        if(userCategory.getUser() == user){
            return Optional.of(userCategory);
        }
        return Optional.empty();
    }

    public String createUserCategory(NewUserCategoryDto userCategoryDto){
        if(checkIfActiveCategoryWithTheSameName(userCategoryDto.getName())){
            //TODO: Create custom exception
            throw new RuntimeException("Category with the same name already exists");
        }
        UserCategory userCategory = new UserCategory();
        userCategory.setName(userCategoryDto.getName());
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        userCategory.setUser(user);
        userCategoryRepository.save(userCategory);
        return "Category has been created successfully";
    }
    public List<UserCategoryDto> getUserCategories(){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        return userCategoryRepository.findActiveByUser(user)
                .orElseThrow(
                        //TODO: Create custom exception
                        () -> new RuntimeException("User has no categories")
                )
                .stream()
                .map(UserCategoryDto::new)
                .toList();


    }
    public String updateUserCategory(BigInteger id, NewUserCategoryDto userCategoryDto){
        var userCategory = userCategoryRepository.findById(id).orElseThrow(
                //TODO: Create custom exception
                () -> new RuntimeException("Category not found")
        );
        if(checkIfDeleted(userCategory)){
            //TODO: Create custom exception
            throw new RuntimeException("Category is deleted");
        }
        if(checkIfActiveCategoryWithTheSameName(userCategoryDto.getName())){
            //TODO: Create custom exception
            throw new RuntimeException("Category with the same name already exists");
        }
        userCategory.setName(userCategoryDto.getName());
        userCategoryRepository.save(userCategory);
        return "Category has been updated successfully";
    }

    @Transactional
    public String deleteUserCategory(BigInteger id){
        var userCategory = userCategoryRepository.findById(id).orElseThrow(
                //TODO: Create custom exception
                () -> new RuntimeException("Category not found")
        );
        if(checkIfDeleted(userCategory)){
            //TODO: Create custom exception
            throw new RuntimeException("Category has already been deleted");
        }
        userCategoryRepository.deleteById(id);
        return "Category has been deleted successfully";
    }
}
