package com.budgettracker.api.split.controllers;

import com.budgettracker.api.split.dtos.SettleTransactionDto;
import com.budgettracker.api.split.services.SplitService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.Map;

import static com.budgettracker.api.constants.Constants.MESSAGE;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping("/api/v1/group/split")
@RequiredArgsConstructor
@Tag(name = "Split Controller", description = "Get splitting expense info, debts etc.")
@Secured({"ADMIN", "USER"})
public class SplitExpenseController {
    private final SplitService splitService;

    @GetMapping("/{groupId}")
    @Operation(summary = "Calculate debts through algorithm")
    public ResponseEntity<?> createGroupExpense(@PathVariable BigInteger groupId) {

        return ResponseEntity.ok(Map.of(MESSAGE, splitService.runSplitExpenseAlgorithm(groupId)));
    }

    @PostMapping("/settle")
    @Operation(summary = "Settle with a member within a group.")
    public ResponseEntity<?> createSettleTransaction(@RequestBody SettleTransactionDto settleTransactionDto) {
        splitService.settle(settleTransactionDto);
        return ResponseEntity.ok(Map.of(MESSAGE, "Settle operation completed!"));
    }
}
