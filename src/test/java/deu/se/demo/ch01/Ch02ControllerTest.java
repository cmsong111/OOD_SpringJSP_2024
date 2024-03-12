package deu.se.demo.ch01;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.ResponseEntity;


@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class Ch02ControllerTest {

    @Autowired
    TestRestTemplate restTemplate;

    @Test
    @DisplayName("Ch02 로딩 테스트")
    void ch02() {
        ResponseEntity<String> response = restTemplate.getForEntity("/ch02", String.class);
        Assertions.assertTrue(response.getStatusCode().is2xxSuccessful());
    }
}
