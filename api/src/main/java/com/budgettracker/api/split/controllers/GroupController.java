package com.budgettracker.api.split.controllers;

import com.budgettracker.api.budgeting.dtos.NewBudgetDTO;
import com.budgettracker.api.split.dtos.NewGroupDto;
import com.budgettracker.api.split.dtos.NewMembersDto;
import com.budgettracker.api.split.services.GroupService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.Map;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping("/api/v1/group")
@RequiredArgsConstructor
@Tag(name = "Groups Controller", description = "Create a group with friends in order to split expenses.")
@Secured({"ADMIN", "USER"})
public class GroupController {
    private final GroupService groupService;

    @PostMapping("/create")
    @Operation(summary = "Create a new group for splitting expenses.")
    public ResponseEntity<?> createGroup(@Valid @RequestBody NewGroupDto newGroupDto) {
        groupService.createGroup(newGroupDto);
        return ResponseEntity.ok(Map.of("message", "Group created!"));
    }

    @PostMapping("/add-member/{group_id}")
    @Operation(summary = "Create a new group for splitting expenses.")
    public ResponseEntity<?> addMembers(@PathVariable("group_id") BigInteger groupId,
                                            @Valid @RequestBody NewMembersDto newMembersDto) {
        groupService.addMembers(groupId, newMembersDto);
        return ResponseEntity.ok(Map.of("message", "Members added!"));
    }
}
