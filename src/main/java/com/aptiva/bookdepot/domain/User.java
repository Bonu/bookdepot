package com.aptiva.bookdepot.domain;

import io.swagger.annotations.ApiModelProperty;
import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigInteger;

@Entity
@Table(name = "user")
@Builder
@Getter
@Setter
@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable {
    @Id
    @GeneratedValue
    @ApiModelProperty(notes="Auto generate Id")
    private BigInteger id;

    @Column(name="name", nullable=false)
    private String name;

    @Column(name="user_id", nullable=false)
    private String userId;

    @Column(name="password", nullable=false)
    private String password;

    @Column(name="first_name", nullable=false)
    private String firstName;

    @Column(name="last_name", nullable=false)
    private String lastName;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="role_id")
    private Role roleId;
}

