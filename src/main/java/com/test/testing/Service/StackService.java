package com.test.testing.Service;


import com.test.testing.Model.Stack;
import com.test.testing.Repository.StackRepository;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class StackService {
    private final StackRepository stackRepository;
    public void stackCreate(Stack stack)
    {

       Stack savedStack =  stackRepository.save(Stack.builder().cards(new ArrayList<>()).description(stack.getDescription()).quantity(stack.getQuantity()).name(stack.getName()).build());

    }

    public List<Stack> getAllStacks()
    {
        return stackRepository.findAll();
    }


}
