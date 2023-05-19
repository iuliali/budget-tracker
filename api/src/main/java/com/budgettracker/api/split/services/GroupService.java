package com.budgettracker.api.split.services;

import com.budgettracker.api.auth.exceptions.UserDoesNotExistException;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.auth.repositories.UserRepository;
import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.split.dtos.NewGroupDto;
import com.budgettracker.api.split.dtos.NewMembersDto;
import com.budgettracker.api.split.exceptions.GroupDoesNotExistException;
import com.budgettracker.api.split.exceptions.NotGroupAdminException;
import com.budgettracker.api.split.models.Group;
import com.budgettracker.api.split.models.Member;
import com.budgettracker.api.split.repositories.GroupMemberRepository;
import com.budgettracker.api.split.repositories.GroupRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

import static com.budgettracker.api.split.models.Member.toMember;

@Service
@RequiredArgsConstructor
public class GroupService {
    private final GroupRepository groupRepository;
    private final GroupMemberRepository groupMemberRepository;
    private final UserRepository userRepository;
    public final UserService userService;

    Optional<Group> findGroupById(BigInteger id) {
        return groupRepository.findById(id);
    }

    public Member findMemberById(BigInteger id) {
        return groupMemberRepository.findById(id).orElseThrow();
    }

    public Member findMemberByUserIdAndGroupId(BigInteger id, BigInteger group_id) {
        return groupMemberRepository.findByUserAndGroup(id, group_id).orElseThrow();
    }
    public List<User> getUsersByIds(List<BigInteger> userIds) {
        return userIds.stream()
                .map(userRepository::findById)
                .map(optionalUser
                        -> optionalUser.orElseThrow(
                        () -> new UserDoesNotExistException(GroupService.class)
                        )
                )
                .toList();
    }

    public void createGroup(NewGroupDto newGroupDto) {
        Group newGroup = new Group();
        User groupAdmin = userService.getAuthenticatedUser();
        newGroup.setAdmin(groupAdmin);
        newGroup.setGroupName(newGroupDto.getName());
        List<BigInteger> userIds = newGroupDto.getUserIds();
        List<User> users = getUsersByIds(userIds);
        List<Member> members = new java.util.ArrayList<>(users.stream()
                .map(u -> toMember(u, newGroup, false)).toList());
        members.add(toMember(groupAdmin, newGroup, true));
        groupRepository.save(newGroup);
        groupMemberRepository.saveAll(members);

    }

    public void addMembers(BigInteger groupId, NewMembersDto newMembersDto) {
        Group group = groupRepository.findById(groupId).orElseThrow(
                () -> new GroupDoesNotExistException(GroupService.class)
        );
        if (!Objects.equals(group.getAdmin().getId(), userService.getAuthenticatedUser().getId())) {
            throw new NotGroupAdminException();
        }
        List<BigInteger> userIds = newMembersDto.getUserIds();
        List<Member> alreadyMembers = group.getMembers();
        List<User> alreadyMemberUsers = alreadyMembers.stream().map(Member::getUser).toList();
        List<Member> newMembers = getUsersByIds(userIds).stream()
                .map(u -> toMember(u, group, false))
                .filter(m -> !alreadyMemberUsers.contains(m.getUser()))
                .toList();
        groupMemberRepository.saveAll(newMembers);
    }
}
