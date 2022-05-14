package com.ini.sport.search.service;

import com.ini.sport.search.model.Search;
import com.ini.sport.search.repository.SearchRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("searchService")
public class SearchService {

    @Autowired
    private SearchRepository searchRepository;

    public List<Search> findAll() {
        return searchRepository.findAll();
    }
}
