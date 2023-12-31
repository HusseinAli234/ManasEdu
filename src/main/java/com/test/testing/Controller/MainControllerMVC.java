package com.test.testing.Controller;
import com.test.testing.Service.StackService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
@Slf4j
public class MainControllerMVC {
    private final StackService stackService;
    @GetMapping()
    public String mainPage()
    {
        return "main/main";
    }

    @GetMapping("/create_card")
    public String creationCard(){
        return "lobby/lobby_create";
    }

    @GetMapping("/flashcards")
    public String getFlashCards(Model model)
    {
        model.addAttribute("stacks",stackService.getAllStacks());
        return "games/flashcards/flashcards";
    }

}
