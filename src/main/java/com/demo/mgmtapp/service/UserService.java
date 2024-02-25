package com.demo.mgmtapp.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.demo.mgmtapp.model.User;

import java.util.List;
import java.util.UUID;


public interface UserService {
    User findUserByEmail(String email);

    void saveUser(User user);

    Boolean removeAll();

    void removeById(UUID id);

    User findById(UUID id);

    Page<User> searchByTerm(String name, Pageable pageable);

    Page<User> listUsers(Pageable pageable);

    List<User> searchBy(String keyword, String criteria);
}
