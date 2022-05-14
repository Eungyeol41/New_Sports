package com.ini.sport.search.repository;

import com.ini.sport.search.model.Search;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

public interface SearchRepository extends MongoRepository<Search, String> {

}
