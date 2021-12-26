package com.ini.gpc.model;

import lombok.*;

@Getter
@Setter
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
class CommunityDTO {
        private String c_name;
        private String c_title;
        private String c_content;
        private String c_date;
        private String c_time;
}