package com.alexstapp.trainercard2.mappers;

import com.alexstapp.trainercard2.dtos.ProductDto;
import com.alexstapp.trainercard2.entities.Product;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface ProductMapper {
    @Mapping(target = "categoryId", source = "category.id")
    ProductDto toDto(Product product);
}
