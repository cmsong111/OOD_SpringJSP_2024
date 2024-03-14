package deu.se.demo.ch01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Namju Kim
 */
@Controller
@RequestMapping("/ch01")
public class Ch01Controller {


    @GetMapping("/new")
    public String ch02() {
        return "ch01/index";
    }
}
