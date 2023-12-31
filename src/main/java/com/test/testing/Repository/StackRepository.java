package com.test.testing.Repository;

import com.test.testing.Model.Stack;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StackRepository extends JpaRepository<Stack,Long> {
}
