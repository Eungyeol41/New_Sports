package com.ini.gpc.repository

import com.ini.gpc.model.CommunityDTO
import org.springframework.data.jpa.repository.JpaRepository

interface CommunityRepository:JpaRepository<CommunityDTO, Long> {

}