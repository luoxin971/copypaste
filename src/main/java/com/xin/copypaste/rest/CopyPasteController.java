package com.xin.copypaste.rest;

import com.xin.copypaste.entity.Content;
import com.xin.copypaste.mapper.ContentMapper;
import com.xin.copypaste.util.IpUtil;
import eu.bitwalker.useragentutils.Browser;
import eu.bitwalker.useragentutils.OperatingSystem;
import eu.bitwalker.useragentutils.UserAgent;
import eu.bitwalker.useragentutils.Version;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@CrossOrigin
public class CopyPasteController {


    private final ContentMapper contentMapper;

    @Autowired
    public CopyPasteController(ContentMapper contentMapper) {
        this.contentMapper = contentMapper;
    }


    public String getIp(HttpServletRequest request) {

        return IpUtil.getIpAddr(request);
    }

    @GetMapping("findById")
    public Content findById(int id) {
        return contentMapper.findById(id);
    }

    @PostMapping("addContent")
    public int addContent(@RequestBody Content content, HttpServletRequest request) {
        String ip = getIp(request);
        String browser = getBrowser(request);
        content.setIp(ip);
        content.setBrowser(browser);
        return contentMapper.insertContent(content);
    }

    @GetMapping("findAll")
    public List<Content> findAll() {
        return contentMapper.findAllContent();
    }

    private String getBrowser(HttpServletRequest request) {

        String header = request.getHeader("User-Agent");
        UserAgent userAgent = UserAgent.parseUserAgentString(header);

        Browser browser = userAgent.getBrowser();

        Version version = browser.getVersion(header);
        return browser.getName() + " " + version;
    }

    private String getOS(HttpServletRequest request) {

        String header = request.getHeader("User-Agent");
        UserAgent userAgent = UserAgent.parseUserAgentString(header);
        OperatingSystem operatingSystem = userAgent.getOperatingSystem();

        return operatingSystem.getName();
    }
}
