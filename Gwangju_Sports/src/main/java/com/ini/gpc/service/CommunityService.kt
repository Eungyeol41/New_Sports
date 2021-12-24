package com.ini.gpc.service

import com.ini.gpc.model.CommunityDTO

interface CommunityService {
    fun selectAll():Array<CommunityDTO>
}