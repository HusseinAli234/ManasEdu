package com.test.testing.Dto;


import com.test.testing.Model.Card;
import jakarta.persistence.CascadeType;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
public class StackDto {
    private String description;
    private String cardName;
}
