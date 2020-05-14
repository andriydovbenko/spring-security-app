package com.training.service;

import com.training.domain.User;

import java.util.List;
import java.util.Optional;

public interface UserService {

    User findByUsername(String username);

    Optional<User> findById(Long userId);

    void save(User user);

    void deleteById(Long userId);

    List<User> findAll();
}
