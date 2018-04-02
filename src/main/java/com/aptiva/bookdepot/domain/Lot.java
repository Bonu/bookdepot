package com.aptiva.bookdepot.domain;

import io.swagger.annotations.ApiModelProperty;
import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigInteger;
import java.sql.Timestamp;

@Entity
@Table(name = "lot")
@Builder
@Getter
@Setter
@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
public class Lot implements Serializable {
    @Id
    @GeneratedValue
    @ApiModelProperty(notes="Auto generate Id")
    private BigInteger id;

    @Column(name="name", nullable=false)
    private String name;

    @Column(name="presenter", nullable=false)
    private String presenter;

    @Column(name="dates", nullable=false)
    private String dates;

    @Column(name="duration", nullable=false)
    private int duration;

    @Column(name="seats_limit", nullable=false)
    private int seatsLimit;

    @Column(name="attendies", nullable=false)
    private int attendies;

}