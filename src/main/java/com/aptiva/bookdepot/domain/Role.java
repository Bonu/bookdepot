package com.aptiva.bookdepot.domain;

import io.swagger.annotations.ApiModelProperty;
import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigInteger;

@Entity
@Table(name = "role")
@Builder
@Getter
@Setter
@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
public class Role implements Serializable {

    @Id
    @GeneratedValue
    @ApiModelProperty(notes="Auto generate id for Roles, this role id is FK in users table")
    private BigInteger id;

    @Column(name="name", nullable=false)
    private String name;
}

