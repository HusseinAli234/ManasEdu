package com.test.testing.Controller;

import com.test.testing.Dto.StackDto;
import com.test.testing.Model.Stack;
import com.test.testing.Service.StackService;
import io.swagger.v3.oas.annotations.parameters.RequestBody;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class StackRestController {

    private final StackService stackService;
    @PostMapping("/add_stack")
    public void addStack(@RequestBody StackDto data)
    {
        stackService.stackCreate(Stack.builder().quantity(0L).description(data.getDescription()).name(data.getCardName()).build());
    }
}
