package com.demo.mgmtapp.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.UUID;


@Entity
@Table(name = "MY_USER")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    @Column(name = "id", updatable = false, nullable = false)
    private UUID id;

    @Column(name = "firstName")
    private String firstName;

    @Column(name = "lastName")
    private String lastName;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "roleName")
    private String roleName;

    @Column(name = "isActive")
    private boolean isActive;

    public User(String pFirstName, String pLastName, String pEmail, String pPassword, String pRoleName,
                boolean pIsActive) {
        firstName = pFirstName;
        lastName = pLastName;
        email = pEmail;
        password = pPassword;
        roleName = pRoleName;
        isActive = pIsActive;
    }
}
