package com.test.testing.Model;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Table(name = "stacks")
public class Stack {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Это для автоинкремента
    private Long id;
    private Long quantity;
    private String description;
    private String name;
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "stack", cascade = CascadeType.ALL)
    List<Card> cards;

}
