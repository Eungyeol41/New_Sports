package com.ini.sport.qna.repository;

import com.ini.sport.qna.model.Qna;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface QnaRepository extends MongoRepository<Qna, String> {

}
