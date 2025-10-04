package com.alexstapp.trainercard2.repositories;

import com.alexstapp.trainercard2.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
