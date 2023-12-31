package com.test.testing.Model;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Table(name = "card")
public class Card {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Это для автоинкремента
    private Long id;
    private String answerSide;
    private String questionSide;
    private int points;
    @ManyToOne
    @JoinColumn(name = "stack_id")
    private Stack stack;



}
