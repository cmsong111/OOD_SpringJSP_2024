package deu.se.demo;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.ResponseEntity;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class DemoControllerTest {

    @Autowired
    TestRestTemplate restTemplate;

    @Test
    @DisplayName("index 로딩 테스트")
    void index() {
        ResponseEntity<String> response = restTemplate.getForEntity("/", String.class);
        Assertions.assertTrue(response.getStatusCode().is2xxSuccessful());
    }
}
