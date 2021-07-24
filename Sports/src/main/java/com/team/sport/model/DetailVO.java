package com.team.sport.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Builder

@Getter
@Setter
@ToString
@AllArgsConstructor 
@NoArgsConstructor
public class DetailVO {

	private String dt_code; 
	private String dt_time; 
	private String dt_money; 
	private String dt_site; 
	private String dt_lat; 
	private String dt_lgt; 
	private String dt_road;

	private String al_addr;
	private String al_code;
	
}	