package com.budgettracker.api.services;

import com.budgettracker.api.dtos.NewUserCategoryDto;
import com.budgettracker.api.dtos.UserCategoryDto;
import com.budgettracker.api.repositories.UserCategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserCategoryService {
    private final UserCategoryRepository userCategoryRepository;

    public UserCategoryDto getUserCategoryById(BigInteger id){
        return new UserCategoryDto(userCategoryRepository.findById(id).orElseThrow());
    }
    public String createUserCategory(NewUserCategoryDto userCategoryDto){
        userCategoryRepository.save(NewUserCategoryDto.toUserCategory(userCategoryDto));
        return "Category has been created successfully";
    }
    public List<UserCategoryDto> getUserCategories(BigInteger id){
        return userCategoryRepository.findByUserId(id)
                .orElseThrow()
                .stream()
                .map(UserCategoryDto::new)
                .toList();


    }
    String updateUserCategory(BigInteger id, NewUserCategoryDto userCategoryDto){
        var userCategory = userCategoryRepository.findById(id).orElseThrow();
        userCategory.setName(userCategoryDto.getName());
        userCategoryRepository.save(userCategory);
        return "Category has been updated successfully";
    }
    String deleteUserCategory(BigInteger id){
        var userCategory = userCategoryRepository.findById(id).orElseThrow();
        userCategory.setDeletedAt(LocalDateTime.now());
        userCategoryRepository.save(userCategory);
        return "Category has been deleted successfully";
    }
}
