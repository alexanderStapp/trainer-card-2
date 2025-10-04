package com.alexstapp.trainercard2.repositories;

import com.alexstapp.trainercard2.entities.Address;
import org.springframework.data.repository.CrudRepository;

public interface AddressRepository extends CrudRepository<Address, Long> {
}