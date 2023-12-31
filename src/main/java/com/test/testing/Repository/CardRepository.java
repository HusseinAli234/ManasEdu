package com.test.testing.Repository;

import com.test.testing.Dto.CardDto;
import com.test.testing.Model.Card;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CardRepository extends JpaRepository<Card,Long> {

}
