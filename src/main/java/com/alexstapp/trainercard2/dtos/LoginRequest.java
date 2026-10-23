package com.alexstapp.trainercard2.dtos;

import lombok.Data;

@Data
public class LoginRequest {
    private String username;
    private String password;
}
