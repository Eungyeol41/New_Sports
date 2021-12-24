package com.ini.gpc.service.impl

import com.ini.gpc.model.CommunityDTO
import com.ini.gpc.repository.CommunityRepository
import com.ini.gpc.service.CommunityService
import org.springframework.stereotype.Service

@Service("CommunityV1")
class CommunityServiceImplV1(val cDao:CommunityRepository):CommunityService {
    override fun selectAll(): Array<CommunityDTO> {
        return cDao.findAll().toTypedArray()
    }
}