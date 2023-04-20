package com.budgettracker.api.services;

import com.budgettracker.api.dtos.UserCategoryDto;
import com.budgettracker.api.repositories.UserCategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;

@Service
@RequiredArgsConstructor
public class UserCategoryService {
    private final UserCategoryRepository userCategoryRepository;

    public UserCategoryDto getUserCategoryById(BigInteger id){
        return new UserCategoryDto(userCategoryRepository.findById(id).orElseThrow());
    }
}
