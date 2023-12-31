package com.test.testing.Controller;

import com.test.testing.Dto.StackDto;
import com.test.testing.Model.Stack;
import com.test.testing.Service.StackService;
import io.swagger.v3.oas.annotations.parameters.RequestBody;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
@Slf4j
public class MVCStackController {

    private final StackService stackService;

    @GetMapping("/add_card")
    public String addCard()
    {
        return "lobby/add_card";
    }
}
