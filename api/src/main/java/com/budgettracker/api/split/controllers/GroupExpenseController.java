package com.budgettracker.api.split.controllers;

import com.budgettracker.api.split.dtos.NewGroupDto;
import com.budgettracker.api.split.dtos.NewGroupExpenseDto;
import com.budgettracker.api.split.services.GroupExpenseService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping("/api/v1/group/expense")
@RequiredArgsConstructor
@Tag(name = "GroupExpense Controller", description = "Create a group expense in order to split it.")
@Secured({"ADMIN", "USER"})
public class GroupExpenseController {
    private final GroupExpenseService groupExpenseService;

    @PostMapping("/create")
    @Operation(summary = "Create a new group expense.")
    public ResponseEntity<?> createGroupExpense(@Valid @RequestBody NewGroupExpenseDto newGroupExpenseDto) {
        groupExpenseService.createGroupExpense(newGroupExpenseDto);
        return ResponseEntity.ok(Map.of("message", "Group expense created!"));
    }

}
