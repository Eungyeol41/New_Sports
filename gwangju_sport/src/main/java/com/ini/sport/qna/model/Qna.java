package com.ini.sport.qna.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

@Getter
@Setter
public class Qna {
    @Id
    private String _id;
}
