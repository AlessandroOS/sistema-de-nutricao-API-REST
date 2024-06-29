package com.alessandro.sistema_de_nutricao.repository;

import com.alessandro.sistema_de_nutricao.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
