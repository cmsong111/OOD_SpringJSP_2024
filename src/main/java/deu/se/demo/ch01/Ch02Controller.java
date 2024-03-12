package deu.se.demo.ch01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author Namju Kim
 */
@Controller
public class Ch02Controller {

    /**
     * ch02/index.jsp를 반환한다.
     * @return ch02/index.html
     */
    @GetMapping("/ch02")
    public String ch02(){
        return "ch02/index";
    }
}
