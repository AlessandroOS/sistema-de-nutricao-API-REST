package com.alessandro.sistema_de_nutricao.service;

import com.alessandro.sistema_de_nutricao.model.User;
import com.alessandro.sistema_de_nutricao.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User save(User user) {
        return userRepository.save(user);
    }

    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}
