(import-rdf "facts.rdf")
		(export-rdf export.rdf  
				commited_cl26_st2 commited_cl27_st1 commited_cl29_st1 commited_cl35_st1 commited_cl41 commited_cl44 commited_cl97_st3 commited_cl339_st1 commited_cl339_st3 commited_cl348_st1 commited_cl348_st3 min_imprisonment max_imprisonment to_pay_min_26 to_pay_max_26 to_pay_min_27 to_pay_max_27 to_pay_min_29 to_pay_max_29 to_pay_min_35 to_pay_max_35 to_pay_min_44 to_pay_max_44 to_pay_min_97 to_pay_max_97
			)
		(export-proof proof.ruleml)
		
(defeasiblerule rule_cl26_st2
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:wants_to_do_traffic_action "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_previously_convinced "no")
	) 
  => 
	 
	(commited_cl26_st2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_cl27_st1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:wants_to_do_traffic_joining "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_previously_convinced "no")
	) 
  => 
	 
	(commited_cl27_st1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_cl29_st1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_adjusted_driving_to_right_road_side "no")
	) 
  => 
	 
	(commited_cl29_st1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_cl35_st1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_adjusted_speed_according_to_road_condition "no")
	) 
  => 
	 
	(commited_cl35_st1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_cl41
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_adjusted_driving_to_intersection "no")
	) 
  => 
	 
	(commited_cl41 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_cl44
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_done_U_turn_prohibited_by_traffic_sign "yes")
	) 
  => 
	 
	(commited_cl44 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_cl97_st3
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_adjusted_speed_according_to_crosswalk "no")
	) 
  => 
	 
	(commited_cl97_st3 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_cl339_st1_injury
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:victim_injuries "slight")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_conscious "yes")
	) 
  => 
	 
	(commited_cl339_st1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_cl339_st3_injury
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:victim_injuries "slight")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_conscious "no")
	) 
  => 
	 
	(commited_cl339_st3 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_cl348_st1_injury
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:victim_injuries "serious")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_conscious "yes")
	) 
  => 
	 
	(commited_cl348_st1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_cl348_st3_injury
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:victim_injuries "serious")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_conscious "no")
	) 
  => 
	 
	(commited_cl348_st3 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule pen_cl26_st2_min
		 
	(commited_cl26_st2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_26 
		(
		 value 90)
	) 
) 
	
(defeasiblerule pen_cl26_st2_max
		 
	(commited_cl26_st2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_26 
		(
		 value 250)
	) 
) 
	
(defeasiblerule pen_cl27_st1_min
		 
	(commited_cl27_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_27 
		(
		 value 90)
	) 
) 
	
(defeasiblerule pen_cl27_st1_max
		 
	(commited_cl27_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_27 
		(
		 value 250)
	) 
) 
	
(defeasiblerule pen_cl29_st1_min
		 
	(commited_cl29_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_29 
		(
		 value 120)
	) 
) 
	
(defeasiblerule pen_cl29_st1_max
		 
	(commited_cl29_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_29 
		(
		 value 400)
	) 
) 
	
(defeasiblerule pen_cl35_st1_min
		 
	(commited_cl35_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_35 
		(
		 value 120)
	) 
) 
	
(defeasiblerule pen_cl35_st1_max
		 
	(commited_cl35_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_35 
		(
		 value 400)
	) 
) 
	
(defeasiblerule pen_cl44_min
		 
	(commited_cl44 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_44 
		(
		 value 80)
	) 
) 
	
(defeasiblerule pen_cl44_max
		 
	(commited_cl44 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_44 
		(
		 value 250)
	) 
) 
	
(defeasiblerule pen_cl97_st3_min
		 
	(commited_cl97_st3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_97 
		(
		 value 80)
	) 
) 
	
(defeasiblerule pen_cl97_st3_max
		 
	(commited_cl97_st3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_97 
		(
		 value 250)
	) 
) 
	
(defeasiblerule pen_cl339_st1_max
		 
	(commited_cl339_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen_cl339_st3_max
		 
	(commited_cl339_st3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_cl348_st1_min
		 
	(commited_cl348_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_cl348_st1_max
		 
	(commited_cl348_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 8)
	) 
) 
	
(defeasiblerule pen_cl348_st3_max
		 
	(commited_cl348_st3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 4)
	) 
) 
	