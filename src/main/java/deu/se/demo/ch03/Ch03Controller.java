package deu.se.demo.ch03;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ch03")
public class Ch03Controller {

    @GetMapping("/simple_page_directive")
    public String ch03(){
        return "ch03/simple_page_directive";
    }

    @GetMapping("/error_page/index1")
    public String errorPage(){
        return "ch03/error_page/index1";
    }

    @GetMapping("/error_page/index2")
    public String errorPageWithErrorPage(){
        return "ch03/error_page/index2";
    }

    @GetMapping("/include")
    public String include(){
        return "ch03/include/index";
    }
}
