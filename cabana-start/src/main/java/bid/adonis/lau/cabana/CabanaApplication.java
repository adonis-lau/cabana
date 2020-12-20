package bid.adonis.lau.cabana;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * 启动类
 *
 * @author: adonis lau
 * @date: 2020/12/20 下午6:59
 **/
@EnableDiscoveryClient
@SpringBootApplication
@EnableTransactionManagement
@MapperScan("bid.adonis.lau.cabana.*")
public class CabanaApplication {

    public static void main(String[] args) {
        SpringApplication.run(CabanaApplication.class, args);
    }

}
