package com.xin.copypaste;

import com.xin.copypaste.util.RedisUtils;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

@SpringBootTest
@RunWith(SpringRunner.class)
class CopypasteApplicationTests {

    @Autowired
    RedisTemplate<String, String> stringRedisTemplate;

    @Autowired
    RedisTemplate<String, Object> objectRedisTemplate;

    @Autowired
    RedisUtils redisUtils;

    @Test
    public void testString() {
        stringRedisTemplate.opsForValue().set("strKey", "a");
        System.out.println(stringRedisTemplate.opsForValue().get("strKey"));
    }

    @Test
    public void testObject() {
        Computer computer = new Computer();
        computer.setId(2);
        computer.setName("Mac");
        objectRedisTemplate.opsForValue().set("apple", computer);
        System.out.println(objectRedisTemplate.opsForValue().get("apple"));
    }

    @Test
    public void test1() {
        Collection<String> res = t("a", "b", "c");
        for (String re : res) {
            System.out.println(re);
        }
    }

    private Collection t(String... arg) {
        return Arrays.stream(arg).collect(Collectors.toList());
    }

    @Test
    public void testExpire() {
        redisUtils.set("dinner", "rice");
        redisUtils.expire("dinner", 60);
        System.out.println(redisUtils.getExpire("dinner"));
    }

    @Test
    public void test2() {
        System.out.println(redisUtils.get("dinner"));
    }

    @Test
    public void test3() {
        Map<String, Object> map = new HashMap<>();
        map.put("apple", new Computer(6, "max"));
        map.put("huawei", new Computer(7, "matebook"));
        map.put("lenvon", new Computer(8, "legion"));
        redisUtils.hmset("computer", map);
        System.out.println(redisUtils.hmget("computer"));
        System.out.println(redisUtils.hget("computer", "lenvon"));
    }


}
class Computer implements Serializable {
    private static final long serialVersionUID = 1L;
    private long id;
    private String name;

    public long getId() {
        return id;
    }

    public Computer() {
    }

    public Computer(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Computer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
