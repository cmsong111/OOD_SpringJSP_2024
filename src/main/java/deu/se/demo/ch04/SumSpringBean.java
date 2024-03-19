package deu.se.demo.ch04;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Component
@Slf4j
@Getter
@Setter
public class SumSpringBean {
    private int n;
    private int result;

    public SumSpringBean() {
        log.debug("SumSpringBean 생성자 호출");
        n = 0;
        result = 0;
    }

    public void calculate() {
        this.result = (n * (n + 1)) / 2;
    }
}
