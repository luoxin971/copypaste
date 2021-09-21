package com.xin.copypaste;

import com.xin.copypaste.entity.Content;
import com.xin.copypaste.mapper.ContentMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class CopypasteApplicationTests {

    @Autowired
    ContentMapper contentMapper;

    @Test
    void contextLoads() {
        Content content = new Content();
        content.setBrowser("safari");
        content.setText("test second text");
        content.setIp("192.168.1.214");
        contentMapper.insertContent(content);
    }

    @Test
    void test1() {
        Content c = contentMapper.findById(2);
        System.out.println(c);
    }

    @Test
    void test2() {
        List<Content> l = contentMapper.findAllContent();
        for (Content content : l) {
            System.out.println(content);
        }
    }

}
