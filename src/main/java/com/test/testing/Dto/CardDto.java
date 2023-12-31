package com.test.testing.Dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class CardDto {
    private Long id;
    private String answerSide;
    private String questionSide;
    private int points;
    private Long stackId;
}
