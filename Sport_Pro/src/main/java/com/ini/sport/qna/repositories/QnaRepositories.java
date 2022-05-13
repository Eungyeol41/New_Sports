package com.ini.sport.qna.repositories;

import com.ini.sport.qna.service.QnaVO;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QnaRepositories extends MongoRepository<QnaVO, ObjectId> {

}
