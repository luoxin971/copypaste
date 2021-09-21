package com.xin.copypaste.mapper;

import com.xin.copypaste.entity.Content;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ContentMapper {

    int insertContent(Content content);

    int deleteContentById(int id);

    Content findById(int id);

    List<Content> findAllContent();
}
