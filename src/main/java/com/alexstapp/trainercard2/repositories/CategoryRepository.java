package com.alexstapp.trainercard2.repositories;

import com.alexstapp.trainercard2.entities.Category;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Category, Byte> {
}