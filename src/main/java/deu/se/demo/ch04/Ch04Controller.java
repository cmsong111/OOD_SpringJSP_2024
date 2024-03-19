package deu.se.demo.ch04;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Slf4j
@Controller
@AllArgsConstructor
@RequestMapping("/ch04")
public class Ch04Controller {

    private ServletContext ctx;
    private SumSpringBean sumBean;

    @GetMapping("/beans")
    public String index(Model model) {
        log.debug("ctx: {}", ctx);
        model.addAttribute("ctx_path", ctx.getRealPath("/"));
        return "ch04/beans/index";
    }

    @PostMapping("/beans/show_sum1")
    public String ch04BeansShowSum(HttpServletRequest request) {
        log.debug("show_sum: n = {}", request.getParameter("n"));
        return "ch04/beans/show_sum1";
    }

    @PostMapping("/beans/show_sum2")
    public String ch04BeansShowSum2(@RequestParam String n, Model model) {
        log.debug("show_sum2: n = {}", n);
        sumBean.setN(Integer.parseInt(n));
        sumBean.calculate();

        model.addAttribute("result", sumBean.getResult());
        return "ch04/beans/show_sum2";
    }


    @GetMapping("/include")
    public String ch04IncludeTest2() {
        return "ch04/include/index";
    }

    @RequestMapping(value = "/forward", method = {RequestMethod.GET, RequestMethod.POST})
    public String ch04ForwardTest(HttpServletRequest request) {
        return "ch04/forward/index";
    }
}
