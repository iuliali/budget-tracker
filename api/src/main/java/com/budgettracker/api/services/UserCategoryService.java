package com.budgettracker.api.services;

import com.budgettracker.api.dtos.NewUserCategoryDto;
import com.budgettracker.api.dtos.UserCategoryDto;
import com.budgettracker.api.models.User;
import com.budgettracker.api.models.UserCategory;
import com.budgettracker.api.repositories.UserCategoryRepository;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserCategoryService {
    private final UserCategoryRepository userCategoryRepository;
    private final UserService userService;

    public UserCategoryDto getUserCategoryById(BigInteger id){
        return new UserCategoryDto(userCategoryRepository.findById(id).orElseThrow());
    }
    public String createUserCategory(NewUserCategoryDto userCategoryDto, HttpServletRequest request){
        UserCategory userCategory = new UserCategory();
        userCategory.setName(userCategoryDto.getName());
        User user = userService.getUserFromHeader(request);
        userCategory.setUser(user);
        userCategoryRepository.save(userCategory);
        return "Category has been created successfully";
    }
    public List<UserCategoryDto> getUserCategories(HttpServletRequest request){
        return userCategoryRepository.findByUser(userService.getUserFromHeader(request))
                .orElseThrow()
                .stream()
                .filter(userCategory -> userCategory.getDeletedAt() == null)
                .map(UserCategoryDto::new)
                .toList();


    }
    public String updateUserCategory(BigInteger id, NewUserCategoryDto userCategoryDto){
        var userCategory = userCategoryRepository.findById(id).orElseThrow();
        userCategory.setName(userCategoryDto.getName());
        userCategoryRepository.save(userCategory);
        return "Category has been updated successfully";
    }
    public String deleteUserCategory(BigInteger id){
        var userCategory = userCategoryRepository.findById(id).orElseThrow();
        userCategory.setDeletedAt(LocalDateTime.now());
        userCategoryRepository.save(userCategory);
        return "Category has been deleted successfully";
    }
}