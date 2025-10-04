package com.alexstapp.trainercard2.mappers;

import com.alexstapp.trainercard2.dtos.CreateUserRequest;
import com.alexstapp.trainercard2.dtos.UpdateUserRequest;
import com.alexstapp.trainercard2.dtos.UserDto;
import com.alexstapp.trainercard2.entities.User;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;

@Mapper(componentModel = "spring")
public interface UserMapper {
    UserDto toDto(User user);
    User toEntity(CreateUserRequest request);

    void update(UpdateUserRequest request, @MappingTarget User user);
}
