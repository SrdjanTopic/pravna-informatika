([pen_cl348_st3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl348_st3_max-defeasibly-dot-gen313)
   (depends-on declare max_imprisonment commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl348_st3_max] ) ) ) ?gen277 <- ( max_imprisonment ( value 4 ) ( positive 1 ) ( positive-derivator pen_cl348_st3_max $? ) ) ( test ( eq ( class ?gen277 ) max_imprisonment ) ) ( not ( and ?gen284 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen279 & : ( not ( member$ pen_cl348_st3_max $?gen279 ) ) ) ) ) ) => ?gen277 <- ( max_imprisonment ( positive 0 ) )"))

([pen_cl348_st3_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl348_st3_max-defeasibly-gen315)
   (depends-on declare commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl348_st3_max] ) ) ) ?gen284 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( max_imprisonment ( value 4 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen279 & : ( not ( member$ pen_cl348_st3_max $?gen279 ) ) ) ) ( test ( eq ( class ?gen277 ) max_imprisonment ) ) => ?gen277 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen_cl348_st3_max ?gen284 ) )"))

([pen_cl348_st3_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl348_st3_max-overruled-dot-gen317)
   (depends-on declare max_imprisonment commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl348_st3_max] ) ) ) ?gen277 <- ( max_imprisonment ( value 4 ) ( negative-support $?gen280 ) ( negative-overruled $?gen281 & : ( subseq-pos ( create$ pen_cl348_st3_max-overruled $?gen280 $$$ $?gen281 ) ) ) ) ( test ( eq ( class ?gen277 ) max_imprisonment ) ) ( not ( and ?gen284 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( max_imprisonment ( positive-defeated $?gen279 & : ( not ( member$ pen_cl348_st3_max $?gen279 ) ) ) ) ) ) => ( calc ( bind $?gen282 ( delete-member$ $?gen281 ( create$ pen_cl348_st3_max-overruled $?gen280 ) ) ) ) ?gen277 <- ( max_imprisonment ( negative-overruled $?gen282 ) )"))

([pen_cl348_st3_max-overruled] of derived-attribute-rule
   (pos-name pen_cl348_st3_max-overruled-gen319)
   (depends-on declare commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl348_st3_max] ) ) ) ?gen284 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( max_imprisonment ( value 4 ) ( negative-support $?gen280 ) ( negative-overruled $?gen281 & : ( not ( subseq-pos ( create$ pen_cl348_st3_max-overruled $?gen280 $$$ $?gen281 ) ) ) ) ( positive-defeated $?gen279 & : ( not ( member$ pen_cl348_st3_max $?gen279 ) ) ) ) ( test ( eq ( class ?gen277 ) max_imprisonment ) ) => ( calc ( bind $?gen282 ( create$ pen_cl348_st3_max-overruled $?gen280 $?gen281 ) ) ) ?gen277 <- ( max_imprisonment ( negative-overruled $?gen282 ) )"))

([pen_cl348_st3_max-support] of derived-attribute-rule
   (pos-name pen_cl348_st3_max-support-gen321)
   (depends-on declare commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl348_st3_max] ) ) ) ?gen276 <- ( commited_cl348_st3 ( defendant ?Defendant ) ) ?gen277 <- ( max_imprisonment ( value 4 ) ( positive-support $?gen279 & : ( not ( subseq-pos ( create$ pen_cl348_st3_max ?gen276 $$$ $?gen279 ) ) ) ) ) ( test ( eq ( class ?gen277 ) max_imprisonment ) ) => ( calc ( bind $?gen282 ( create$ pen_cl348_st3_max ?gen276 $?gen279 ) ) ) ?gen277 <- ( max_imprisonment ( positive-support $?gen282 ) )"))

([pen_cl348_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl348_st1_max-defeasibly-dot-gen323)
   (depends-on declare max_imprisonment commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl348_st1_max] ) ) ) ?gen268 <- ( max_imprisonment ( value 8 ) ( positive 1 ) ( positive-derivator pen_cl348_st1_max $? ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) ( not ( and ?gen275 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen270 & : ( not ( member$ pen_cl348_st1_max $?gen270 ) ) ) ) ) ) => ?gen268 <- ( max_imprisonment ( positive 0 ) )"))

([pen_cl348_st1_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl348_st1_max-defeasibly-gen325)
   (depends-on declare commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl348_st1_max] ) ) ) ?gen275 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen270 & : ( not ( member$ pen_cl348_st1_max $?gen270 ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) => ?gen268 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen_cl348_st1_max ?gen275 ) )"))

([pen_cl348_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl348_st1_max-overruled-dot-gen327)
   (depends-on declare max_imprisonment commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl348_st1_max] ) ) ) ?gen268 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen271 ) ( negative-overruled $?gen272 & : ( subseq-pos ( create$ pen_cl348_st1_max-overruled $?gen271 $$$ $?gen272 ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) ( not ( and ?gen275 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( positive-defeated $?gen270 & : ( not ( member$ pen_cl348_st1_max $?gen270 ) ) ) ) ) ) => ( calc ( bind $?gen273 ( delete-member$ $?gen272 ( create$ pen_cl348_st1_max-overruled $?gen271 ) ) ) ) ?gen268 <- ( max_imprisonment ( negative-overruled $?gen273 ) )"))

([pen_cl348_st1_max-overruled] of derived-attribute-rule
   (pos-name pen_cl348_st1_max-overruled-gen329)
   (depends-on declare commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl348_st1_max] ) ) ) ?gen275 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen271 ) ( negative-overruled $?gen272 & : ( not ( subseq-pos ( create$ pen_cl348_st1_max-overruled $?gen271 $$$ $?gen272 ) ) ) ) ( positive-defeated $?gen270 & : ( not ( member$ pen_cl348_st1_max $?gen270 ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) => ( calc ( bind $?gen273 ( create$ pen_cl348_st1_max-overruled $?gen271 $?gen272 ) ) ) ?gen268 <- ( max_imprisonment ( negative-overruled $?gen273 ) )"))

([pen_cl348_st1_max-support] of derived-attribute-rule
   (pos-name pen_cl348_st1_max-support-gen331)
   (depends-on declare commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl348_st1_max] ) ) ) ?gen267 <- ( commited_cl348_st1 ( defendant ?Defendant ) ) ?gen268 <- ( max_imprisonment ( value 8 ) ( positive-support $?gen270 & : ( not ( subseq-pos ( create$ pen_cl348_st1_max ?gen267 $$$ $?gen270 ) ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) => ( calc ( bind $?gen273 ( create$ pen_cl348_st1_max ?gen267 $?gen270 ) ) ) ?gen268 <- ( max_imprisonment ( positive-support $?gen273 ) )"))

([pen_cl348_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl348_st1_min-defeasibly-dot-gen333)
   (depends-on declare min_imprisonment commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl348_st1_min] ) ) ) ?gen259 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen_cl348_st1_min $? ) ) ( test ( eq ( class ?gen259 ) min_imprisonment ) ) ( not ( and ?gen266 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen261 & : ( not ( member$ pen_cl348_st1_min $?gen261 ) ) ) ) ) ) => ?gen259 <- ( min_imprisonment ( positive 0 ) )"))

([pen_cl348_st1_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl348_st1_min-defeasibly-gen335)
   (depends-on declare commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl348_st1_min] ) ) ) ?gen266 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen261 & : ( not ( member$ pen_cl348_st1_min $?gen261 ) ) ) ) ( test ( eq ( class ?gen259 ) min_imprisonment ) ) => ?gen259 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen_cl348_st1_min ?gen266 ) )"))

([pen_cl348_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl348_st1_min-overruled-dot-gen337)
   (depends-on declare min_imprisonment commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl348_st1_min] ) ) ) ?gen259 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen262 ) ( negative-overruled $?gen263 & : ( subseq-pos ( create$ pen_cl348_st1_min-overruled $?gen262 $$$ $?gen263 ) ) ) ) ( test ( eq ( class ?gen259 ) min_imprisonment ) ) ( not ( and ?gen266 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( min_imprisonment ( positive-defeated $?gen261 & : ( not ( member$ pen_cl348_st1_min $?gen261 ) ) ) ) ) ) => ( calc ( bind $?gen264 ( delete-member$ $?gen263 ( create$ pen_cl348_st1_min-overruled $?gen262 ) ) ) ) ?gen259 <- ( min_imprisonment ( negative-overruled $?gen264 ) )"))

([pen_cl348_st1_min-overruled] of derived-attribute-rule
   (pos-name pen_cl348_st1_min-overruled-gen339)
   (depends-on declare commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl348_st1_min] ) ) ) ?gen266 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen262 ) ( negative-overruled $?gen263 & : ( not ( subseq-pos ( create$ pen_cl348_st1_min-overruled $?gen262 $$$ $?gen263 ) ) ) ) ( positive-defeated $?gen261 & : ( not ( member$ pen_cl348_st1_min $?gen261 ) ) ) ) ( test ( eq ( class ?gen259 ) min_imprisonment ) ) => ( calc ( bind $?gen264 ( create$ pen_cl348_st1_min-overruled $?gen262 $?gen263 ) ) ) ?gen259 <- ( min_imprisonment ( negative-overruled $?gen264 ) )"))

([pen_cl348_st1_min-support] of derived-attribute-rule
   (pos-name pen_cl348_st1_min-support-gen341)
   (depends-on declare commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl348_st1_min] ) ) ) ?gen258 <- ( commited_cl348_st1 ( defendant ?Defendant ) ) ?gen259 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen261 & : ( not ( subseq-pos ( create$ pen_cl348_st1_min ?gen258 $$$ $?gen261 ) ) ) ) ) ( test ( eq ( class ?gen259 ) min_imprisonment ) ) => ( calc ( bind $?gen264 ( create$ pen_cl348_st1_min ?gen258 $?gen261 ) ) ) ?gen259 <- ( min_imprisonment ( positive-support $?gen264 ) )"))

([pen_cl339_st3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl339_st3_max-defeasibly-dot-gen343)
   (depends-on declare max_imprisonment commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl339_st3_max] ) ) ) ?gen250 <- ( max_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen_cl339_st3_max $? ) ) ( test ( eq ( class ?gen250 ) max_imprisonment ) ) ( not ( and ?gen257 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen252 & : ( not ( member$ pen_cl339_st3_max $?gen252 ) ) ) ) ) ) => ?gen250 <- ( max_imprisonment ( positive 0 ) )"))

([pen_cl339_st3_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl339_st3_max-defeasibly-gen345)
   (depends-on declare commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl339_st3_max] ) ) ) ?gen257 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( max_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen252 & : ( not ( member$ pen_cl339_st3_max $?gen252 ) ) ) ) ( test ( eq ( class ?gen250 ) max_imprisonment ) ) => ?gen250 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen_cl339_st3_max ?gen257 ) )"))

([pen_cl339_st3_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl339_st3_max-overruled-dot-gen347)
   (depends-on declare max_imprisonment commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl339_st3_max] ) ) ) ?gen250 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen253 ) ( negative-overruled $?gen254 & : ( subseq-pos ( create$ pen_cl339_st3_max-overruled $?gen253 $$$ $?gen254 ) ) ) ) ( test ( eq ( class ?gen250 ) max_imprisonment ) ) ( not ( and ?gen257 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( max_imprisonment ( positive-defeated $?gen252 & : ( not ( member$ pen_cl339_st3_max $?gen252 ) ) ) ) ) ) => ( calc ( bind $?gen255 ( delete-member$ $?gen254 ( create$ pen_cl339_st3_max-overruled $?gen253 ) ) ) ) ?gen250 <- ( max_imprisonment ( negative-overruled $?gen255 ) )"))

([pen_cl339_st3_max-overruled] of derived-attribute-rule
   (pos-name pen_cl339_st3_max-overruled-gen349)
   (depends-on declare commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl339_st3_max] ) ) ) ?gen257 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen253 ) ( negative-overruled $?gen254 & : ( not ( subseq-pos ( create$ pen_cl339_st3_max-overruled $?gen253 $$$ $?gen254 ) ) ) ) ( positive-defeated $?gen252 & : ( not ( member$ pen_cl339_st3_max $?gen252 ) ) ) ) ( test ( eq ( class ?gen250 ) max_imprisonment ) ) => ( calc ( bind $?gen255 ( create$ pen_cl339_st3_max-overruled $?gen253 $?gen254 ) ) ) ?gen250 <- ( max_imprisonment ( negative-overruled $?gen255 ) )"))

([pen_cl339_st3_max-support] of derived-attribute-rule
   (pos-name pen_cl339_st3_max-support-gen351)
   (depends-on declare commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl339_st3_max] ) ) ) ?gen249 <- ( commited_cl339_st3 ( defendant ?Defendant ) ) ?gen250 <- ( max_imprisonment ( value 1 ) ( positive-support $?gen252 & : ( not ( subseq-pos ( create$ pen_cl339_st3_max ?gen249 $$$ $?gen252 ) ) ) ) ) ( test ( eq ( class ?gen250 ) max_imprisonment ) ) => ( calc ( bind $?gen255 ( create$ pen_cl339_st3_max ?gen249 $?gen252 ) ) ) ?gen250 <- ( max_imprisonment ( positive-support $?gen255 ) )"))

([pen_cl339_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl339_st1_max-defeasibly-dot-gen353)
   (depends-on declare max_imprisonment commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl339_st1_max] ) ) ) ?gen241 <- ( max_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen_cl339_st1_max $? ) ) ( test ( eq ( class ?gen241 ) max_imprisonment ) ) ( not ( and ?gen248 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen243 & : ( not ( member$ pen_cl339_st1_max $?gen243 ) ) ) ) ) ) => ?gen241 <- ( max_imprisonment ( positive 0 ) )"))

([pen_cl339_st1_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl339_st1_max-defeasibly-gen355)
   (depends-on declare commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl339_st1_max] ) ) ) ?gen248 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( max_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen243 & : ( not ( member$ pen_cl339_st1_max $?gen243 ) ) ) ) ( test ( eq ( class ?gen241 ) max_imprisonment ) ) => ?gen241 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen_cl339_st1_max ?gen248 ) )"))

([pen_cl339_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl339_st1_max-overruled-dot-gen357)
   (depends-on declare max_imprisonment commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl339_st1_max] ) ) ) ?gen241 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen244 ) ( negative-overruled $?gen245 & : ( subseq-pos ( create$ pen_cl339_st1_max-overruled $?gen244 $$$ $?gen245 ) ) ) ) ( test ( eq ( class ?gen241 ) max_imprisonment ) ) ( not ( and ?gen248 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( max_imprisonment ( positive-defeated $?gen243 & : ( not ( member$ pen_cl339_st1_max $?gen243 ) ) ) ) ) ) => ( calc ( bind $?gen246 ( delete-member$ $?gen245 ( create$ pen_cl339_st1_max-overruled $?gen244 ) ) ) ) ?gen241 <- ( max_imprisonment ( negative-overruled $?gen246 ) )"))

([pen_cl339_st1_max-overruled] of derived-attribute-rule
   (pos-name pen_cl339_st1_max-overruled-gen359)
   (depends-on declare commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl339_st1_max] ) ) ) ?gen248 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen244 ) ( negative-overruled $?gen245 & : ( not ( subseq-pos ( create$ pen_cl339_st1_max-overruled $?gen244 $$$ $?gen245 ) ) ) ) ( positive-defeated $?gen243 & : ( not ( member$ pen_cl339_st1_max $?gen243 ) ) ) ) ( test ( eq ( class ?gen241 ) max_imprisonment ) ) => ( calc ( bind $?gen246 ( create$ pen_cl339_st1_max-overruled $?gen244 $?gen245 ) ) ) ?gen241 <- ( max_imprisonment ( negative-overruled $?gen246 ) )"))

([pen_cl339_st1_max-support] of derived-attribute-rule
   (pos-name pen_cl339_st1_max-support-gen361)
   (depends-on declare commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl339_st1_max] ) ) ) ?gen240 <- ( commited_cl339_st1 ( defendant ?Defendant ) ) ?gen241 <- ( max_imprisonment ( value 3 ) ( positive-support $?gen243 & : ( not ( subseq-pos ( create$ pen_cl339_st1_max ?gen240 $$$ $?gen243 ) ) ) ) ) ( test ( eq ( class ?gen241 ) max_imprisonment ) ) => ( calc ( bind $?gen246 ( create$ pen_cl339_st1_max ?gen240 $?gen243 ) ) ) ?gen241 <- ( max_imprisonment ( positive-support $?gen246 ) )"))

([pen_cl97_st3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl97_st3_max-defeasibly-dot-gen363)
   (depends-on declare to_pay_max_97 commited_cl97_st3 to_pay_max_97)
   (implies to_pay_max_97)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl97_st3_max] ) ) ) ?gen232 <- ( to_pay_max_97 ( value 250 ) ( positive 1 ) ( positive-derivator pen_cl97_st3_max $? ) ) ( test ( eq ( class ?gen232 ) to_pay_max_97 ) ) ( not ( and ?gen239 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( to_pay_max_97 ( negative ~ 2 ) ( positive-overruled $?gen234 & : ( not ( member$ pen_cl97_st3_max $?gen234 ) ) ) ) ) ) => ?gen232 <- ( to_pay_max_97 ( positive 0 ) )"))

([pen_cl97_st3_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl97_st3_max-defeasibly-gen365)
   (depends-on declare commited_cl97_st3 to_pay_max_97)
   (implies to_pay_max_97)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl97_st3_max] ) ) ) ?gen239 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( to_pay_max_97 ( value 250 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen234 & : ( not ( member$ pen_cl97_st3_max $?gen234 ) ) ) ) ( test ( eq ( class ?gen232 ) to_pay_max_97 ) ) => ?gen232 <- ( to_pay_max_97 ( positive 1 ) ( positive-derivator pen_cl97_st3_max ?gen239 ) )"))

([pen_cl97_st3_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl97_st3_max-overruled-dot-gen367)
   (depends-on declare to_pay_max_97 commited_cl97_st3 to_pay_max_97)
   (implies to_pay_max_97)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl97_st3_max] ) ) ) ?gen232 <- ( to_pay_max_97 ( value 250 ) ( negative-support $?gen235 ) ( negative-overruled $?gen236 & : ( subseq-pos ( create$ pen_cl97_st3_max-overruled $?gen235 $$$ $?gen236 ) ) ) ) ( test ( eq ( class ?gen232 ) to_pay_max_97 ) ) ( not ( and ?gen239 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( to_pay_max_97 ( positive-defeated $?gen234 & : ( not ( member$ pen_cl97_st3_max $?gen234 ) ) ) ) ) ) => ( calc ( bind $?gen237 ( delete-member$ $?gen236 ( create$ pen_cl97_st3_max-overruled $?gen235 ) ) ) ) ?gen232 <- ( to_pay_max_97 ( negative-overruled $?gen237 ) )"))

([pen_cl97_st3_max-overruled] of derived-attribute-rule
   (pos-name pen_cl97_st3_max-overruled-gen369)
   (depends-on declare commited_cl97_st3 to_pay_max_97)
   (implies to_pay_max_97)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl97_st3_max] ) ) ) ?gen239 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( to_pay_max_97 ( value 250 ) ( negative-support $?gen235 ) ( negative-overruled $?gen236 & : ( not ( subseq-pos ( create$ pen_cl97_st3_max-overruled $?gen235 $$$ $?gen236 ) ) ) ) ( positive-defeated $?gen234 & : ( not ( member$ pen_cl97_st3_max $?gen234 ) ) ) ) ( test ( eq ( class ?gen232 ) to_pay_max_97 ) ) => ( calc ( bind $?gen237 ( create$ pen_cl97_st3_max-overruled $?gen235 $?gen236 ) ) ) ?gen232 <- ( to_pay_max_97 ( negative-overruled $?gen237 ) )"))

([pen_cl97_st3_max-support] of derived-attribute-rule
   (pos-name pen_cl97_st3_max-support-gen371)
   (depends-on declare commited_cl97_st3 to_pay_max_97)
   (implies to_pay_max_97)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl97_st3_max] ) ) ) ?gen231 <- ( commited_cl97_st3 ( defendant ?Defendant ) ) ?gen232 <- ( to_pay_max_97 ( value 250 ) ( positive-support $?gen234 & : ( not ( subseq-pos ( create$ pen_cl97_st3_max ?gen231 $$$ $?gen234 ) ) ) ) ) ( test ( eq ( class ?gen232 ) to_pay_max_97 ) ) => ( calc ( bind $?gen237 ( create$ pen_cl97_st3_max ?gen231 $?gen234 ) ) ) ?gen232 <- ( to_pay_max_97 ( positive-support $?gen237 ) )"))

([pen_cl97_st3_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl97_st3_min-defeasibly-dot-gen373)
   (depends-on declare to_pay_min_97 commited_cl97_st3 to_pay_min_97)
   (implies to_pay_min_97)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl97_st3_min] ) ) ) ?gen223 <- ( to_pay_min_97 ( value 80 ) ( positive 1 ) ( positive-derivator pen_cl97_st3_min $? ) ) ( test ( eq ( class ?gen223 ) to_pay_min_97 ) ) ( not ( and ?gen230 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( to_pay_min_97 ( negative ~ 2 ) ( positive-overruled $?gen225 & : ( not ( member$ pen_cl97_st3_min $?gen225 ) ) ) ) ) ) => ?gen223 <- ( to_pay_min_97 ( positive 0 ) )"))

([pen_cl97_st3_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl97_st3_min-defeasibly-gen375)
   (depends-on declare commited_cl97_st3 to_pay_min_97)
   (implies to_pay_min_97)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl97_st3_min] ) ) ) ?gen230 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( to_pay_min_97 ( value 80 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen225 & : ( not ( member$ pen_cl97_st3_min $?gen225 ) ) ) ) ( test ( eq ( class ?gen223 ) to_pay_min_97 ) ) => ?gen223 <- ( to_pay_min_97 ( positive 1 ) ( positive-derivator pen_cl97_st3_min ?gen230 ) )"))

([pen_cl97_st3_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl97_st3_min-overruled-dot-gen377)
   (depends-on declare to_pay_min_97 commited_cl97_st3 to_pay_min_97)
   (implies to_pay_min_97)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl97_st3_min] ) ) ) ?gen223 <- ( to_pay_min_97 ( value 80 ) ( negative-support $?gen226 ) ( negative-overruled $?gen227 & : ( subseq-pos ( create$ pen_cl97_st3_min-overruled $?gen226 $$$ $?gen227 ) ) ) ) ( test ( eq ( class ?gen223 ) to_pay_min_97 ) ) ( not ( and ?gen230 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( to_pay_min_97 ( positive-defeated $?gen225 & : ( not ( member$ pen_cl97_st3_min $?gen225 ) ) ) ) ) ) => ( calc ( bind $?gen228 ( delete-member$ $?gen227 ( create$ pen_cl97_st3_min-overruled $?gen226 ) ) ) ) ?gen223 <- ( to_pay_min_97 ( negative-overruled $?gen228 ) )"))

([pen_cl97_st3_min-overruled] of derived-attribute-rule
   (pos-name pen_cl97_st3_min-overruled-gen379)
   (depends-on declare commited_cl97_st3 to_pay_min_97)
   (implies to_pay_min_97)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl97_st3_min] ) ) ) ?gen230 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( to_pay_min_97 ( value 80 ) ( negative-support $?gen226 ) ( negative-overruled $?gen227 & : ( not ( subseq-pos ( create$ pen_cl97_st3_min-overruled $?gen226 $$$ $?gen227 ) ) ) ) ( positive-defeated $?gen225 & : ( not ( member$ pen_cl97_st3_min $?gen225 ) ) ) ) ( test ( eq ( class ?gen223 ) to_pay_min_97 ) ) => ( calc ( bind $?gen228 ( create$ pen_cl97_st3_min-overruled $?gen226 $?gen227 ) ) ) ?gen223 <- ( to_pay_min_97 ( negative-overruled $?gen228 ) )"))

([pen_cl97_st3_min-support] of derived-attribute-rule
   (pos-name pen_cl97_st3_min-support-gen381)
   (depends-on declare commited_cl97_st3 to_pay_min_97)
   (implies to_pay_min_97)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl97_st3_min] ) ) ) ?gen222 <- ( commited_cl97_st3 ( defendant ?Defendant ) ) ?gen223 <- ( to_pay_min_97 ( value 80 ) ( positive-support $?gen225 & : ( not ( subseq-pos ( create$ pen_cl97_st3_min ?gen222 $$$ $?gen225 ) ) ) ) ) ( test ( eq ( class ?gen223 ) to_pay_min_97 ) ) => ( calc ( bind $?gen228 ( create$ pen_cl97_st3_min ?gen222 $?gen225 ) ) ) ?gen223 <- ( to_pay_min_97 ( positive-support $?gen228 ) )"))

([pen_cl44_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl44_max-defeasibly-dot-gen383)
   (depends-on declare to_pay_max_44 commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl44_max] ) ) ) ?gen214 <- ( to_pay_max_44 ( value 250 ) ( positive 1 ) ( positive-derivator pen_cl44_max $? ) ) ( test ( eq ( class ?gen214 ) to_pay_max_44 ) ) ( not ( and ?gen221 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( to_pay_max_44 ( negative ~ 2 ) ( positive-overruled $?gen216 & : ( not ( member$ pen_cl44_max $?gen216 ) ) ) ) ) ) => ?gen214 <- ( to_pay_max_44 ( positive 0 ) )"))

([pen_cl44_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl44_max-defeasibly-gen385)
   (depends-on declare commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl44_max] ) ) ) ?gen221 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( to_pay_max_44 ( value 250 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen216 & : ( not ( member$ pen_cl44_max $?gen216 ) ) ) ) ( test ( eq ( class ?gen214 ) to_pay_max_44 ) ) => ?gen214 <- ( to_pay_max_44 ( positive 1 ) ( positive-derivator pen_cl44_max ?gen221 ) )"))

([pen_cl44_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl44_max-overruled-dot-gen387)
   (depends-on declare to_pay_max_44 commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl44_max] ) ) ) ?gen214 <- ( to_pay_max_44 ( value 250 ) ( negative-support $?gen217 ) ( negative-overruled $?gen218 & : ( subseq-pos ( create$ pen_cl44_max-overruled $?gen217 $$$ $?gen218 ) ) ) ) ( test ( eq ( class ?gen214 ) to_pay_max_44 ) ) ( not ( and ?gen221 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( to_pay_max_44 ( positive-defeated $?gen216 & : ( not ( member$ pen_cl44_max $?gen216 ) ) ) ) ) ) => ( calc ( bind $?gen219 ( delete-member$ $?gen218 ( create$ pen_cl44_max-overruled $?gen217 ) ) ) ) ?gen214 <- ( to_pay_max_44 ( negative-overruled $?gen219 ) )"))

([pen_cl44_max-overruled] of derived-attribute-rule
   (pos-name pen_cl44_max-overruled-gen389)
   (depends-on declare commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl44_max] ) ) ) ?gen221 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( to_pay_max_44 ( value 250 ) ( negative-support $?gen217 ) ( negative-overruled $?gen218 & : ( not ( subseq-pos ( create$ pen_cl44_max-overruled $?gen217 $$$ $?gen218 ) ) ) ) ( positive-defeated $?gen216 & : ( not ( member$ pen_cl44_max $?gen216 ) ) ) ) ( test ( eq ( class ?gen214 ) to_pay_max_44 ) ) => ( calc ( bind $?gen219 ( create$ pen_cl44_max-overruled $?gen217 $?gen218 ) ) ) ?gen214 <- ( to_pay_max_44 ( negative-overruled $?gen219 ) )"))

([pen_cl44_max-support] of derived-attribute-rule
   (pos-name pen_cl44_max-support-gen391)
   (depends-on declare commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl44_max] ) ) ) ?gen213 <- ( commited_cl44 ( defendant ?Defendant ) ) ?gen214 <- ( to_pay_max_44 ( value 250 ) ( positive-support $?gen216 & : ( not ( subseq-pos ( create$ pen_cl44_max ?gen213 $$$ $?gen216 ) ) ) ) ) ( test ( eq ( class ?gen214 ) to_pay_max_44 ) ) => ( calc ( bind $?gen219 ( create$ pen_cl44_max ?gen213 $?gen216 ) ) ) ?gen214 <- ( to_pay_max_44 ( positive-support $?gen219 ) )"))

([pen_cl44_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl44_min-defeasibly-dot-gen393)
   (depends-on declare to_pay_min_44 commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl44_min] ) ) ) ?gen205 <- ( to_pay_min_44 ( value 80 ) ( positive 1 ) ( positive-derivator pen_cl44_min $? ) ) ( test ( eq ( class ?gen205 ) to_pay_min_44 ) ) ( not ( and ?gen212 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( to_pay_min_44 ( negative ~ 2 ) ( positive-overruled $?gen207 & : ( not ( member$ pen_cl44_min $?gen207 ) ) ) ) ) ) => ?gen205 <- ( to_pay_min_44 ( positive 0 ) )"))

([pen_cl44_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl44_min-defeasibly-gen395)
   (depends-on declare commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl44_min] ) ) ) ?gen212 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( to_pay_min_44 ( value 80 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen207 & : ( not ( member$ pen_cl44_min $?gen207 ) ) ) ) ( test ( eq ( class ?gen205 ) to_pay_min_44 ) ) => ?gen205 <- ( to_pay_min_44 ( positive 1 ) ( positive-derivator pen_cl44_min ?gen212 ) )"))

([pen_cl44_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl44_min-overruled-dot-gen397)
   (depends-on declare to_pay_min_44 commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl44_min] ) ) ) ?gen205 <- ( to_pay_min_44 ( value 80 ) ( negative-support $?gen208 ) ( negative-overruled $?gen209 & : ( subseq-pos ( create$ pen_cl44_min-overruled $?gen208 $$$ $?gen209 ) ) ) ) ( test ( eq ( class ?gen205 ) to_pay_min_44 ) ) ( not ( and ?gen212 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( to_pay_min_44 ( positive-defeated $?gen207 & : ( not ( member$ pen_cl44_min $?gen207 ) ) ) ) ) ) => ( calc ( bind $?gen210 ( delete-member$ $?gen209 ( create$ pen_cl44_min-overruled $?gen208 ) ) ) ) ?gen205 <- ( to_pay_min_44 ( negative-overruled $?gen210 ) )"))

([pen_cl44_min-overruled] of derived-attribute-rule
   (pos-name pen_cl44_min-overruled-gen399)
   (depends-on declare commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl44_min] ) ) ) ?gen212 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( to_pay_min_44 ( value 80 ) ( negative-support $?gen208 ) ( negative-overruled $?gen209 & : ( not ( subseq-pos ( create$ pen_cl44_min-overruled $?gen208 $$$ $?gen209 ) ) ) ) ( positive-defeated $?gen207 & : ( not ( member$ pen_cl44_min $?gen207 ) ) ) ) ( test ( eq ( class ?gen205 ) to_pay_min_44 ) ) => ( calc ( bind $?gen210 ( create$ pen_cl44_min-overruled $?gen208 $?gen209 ) ) ) ?gen205 <- ( to_pay_min_44 ( negative-overruled $?gen210 ) )"))

([pen_cl44_min-support] of derived-attribute-rule
   (pos-name pen_cl44_min-support-gen401)
   (depends-on declare commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl44_min] ) ) ) ?gen204 <- ( commited_cl44 ( defendant ?Defendant ) ) ?gen205 <- ( to_pay_min_44 ( value 80 ) ( positive-support $?gen207 & : ( not ( subseq-pos ( create$ pen_cl44_min ?gen204 $$$ $?gen207 ) ) ) ) ) ( test ( eq ( class ?gen205 ) to_pay_min_44 ) ) => ( calc ( bind $?gen210 ( create$ pen_cl44_min ?gen204 $?gen207 ) ) ) ?gen205 <- ( to_pay_min_44 ( positive-support $?gen210 ) )"))

([pen_cl35_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl35_st1_max-defeasibly-dot-gen403)
   (depends-on declare to_pay_max_35 commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl35_st1_max] ) ) ) ?gen196 <- ( to_pay_max_35 ( value 400 ) ( positive 1 ) ( positive-derivator pen_cl35_st1_max $? ) ) ( test ( eq ( class ?gen196 ) to_pay_max_35 ) ) ( not ( and ?gen203 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( to_pay_max_35 ( negative ~ 2 ) ( positive-overruled $?gen198 & : ( not ( member$ pen_cl35_st1_max $?gen198 ) ) ) ) ) ) => ?gen196 <- ( to_pay_max_35 ( positive 0 ) )"))

([pen_cl35_st1_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl35_st1_max-defeasibly-gen405)
   (depends-on declare commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl35_st1_max] ) ) ) ?gen203 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( to_pay_max_35 ( value 400 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen198 & : ( not ( member$ pen_cl35_st1_max $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) to_pay_max_35 ) ) => ?gen196 <- ( to_pay_max_35 ( positive 1 ) ( positive-derivator pen_cl35_st1_max ?gen203 ) )"))

([pen_cl35_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl35_st1_max-overruled-dot-gen407)
   (depends-on declare to_pay_max_35 commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl35_st1_max] ) ) ) ?gen196 <- ( to_pay_max_35 ( value 400 ) ( negative-support $?gen199 ) ( negative-overruled $?gen200 & : ( subseq-pos ( create$ pen_cl35_st1_max-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( test ( eq ( class ?gen196 ) to_pay_max_35 ) ) ( not ( and ?gen203 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( to_pay_max_35 ( positive-defeated $?gen198 & : ( not ( member$ pen_cl35_st1_max $?gen198 ) ) ) ) ) ) => ( calc ( bind $?gen201 ( delete-member$ $?gen200 ( create$ pen_cl35_st1_max-overruled $?gen199 ) ) ) ) ?gen196 <- ( to_pay_max_35 ( negative-overruled $?gen201 ) )"))

([pen_cl35_st1_max-overruled] of derived-attribute-rule
   (pos-name pen_cl35_st1_max-overruled-gen409)
   (depends-on declare commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl35_st1_max] ) ) ) ?gen203 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( to_pay_max_35 ( value 400 ) ( negative-support $?gen199 ) ( negative-overruled $?gen200 & : ( not ( subseq-pos ( create$ pen_cl35_st1_max-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( positive-defeated $?gen198 & : ( not ( member$ pen_cl35_st1_max $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) to_pay_max_35 ) ) => ( calc ( bind $?gen201 ( create$ pen_cl35_st1_max-overruled $?gen199 $?gen200 ) ) ) ?gen196 <- ( to_pay_max_35 ( negative-overruled $?gen201 ) )"))

([pen_cl35_st1_max-support] of derived-attribute-rule
   (pos-name pen_cl35_st1_max-support-gen411)
   (depends-on declare commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl35_st1_max] ) ) ) ?gen195 <- ( commited_cl35_st1 ( defendant ?Defendant ) ) ?gen196 <- ( to_pay_max_35 ( value 400 ) ( positive-support $?gen198 & : ( not ( subseq-pos ( create$ pen_cl35_st1_max ?gen195 $$$ $?gen198 ) ) ) ) ) ( test ( eq ( class ?gen196 ) to_pay_max_35 ) ) => ( calc ( bind $?gen201 ( create$ pen_cl35_st1_max ?gen195 $?gen198 ) ) ) ?gen196 <- ( to_pay_max_35 ( positive-support $?gen201 ) )"))

([pen_cl35_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl35_st1_min-defeasibly-dot-gen413)
   (depends-on declare to_pay_min_35 commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl35_st1_min] ) ) ) ?gen187 <- ( to_pay_min_35 ( value 120 ) ( positive 1 ) ( positive-derivator pen_cl35_st1_min $? ) ) ( test ( eq ( class ?gen187 ) to_pay_min_35 ) ) ( not ( and ?gen194 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( to_pay_min_35 ( negative ~ 2 ) ( positive-overruled $?gen189 & : ( not ( member$ pen_cl35_st1_min $?gen189 ) ) ) ) ) ) => ?gen187 <- ( to_pay_min_35 ( positive 0 ) )"))

([pen_cl35_st1_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl35_st1_min-defeasibly-gen415)
   (depends-on declare commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl35_st1_min] ) ) ) ?gen194 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( to_pay_min_35 ( value 120 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen189 & : ( not ( member$ pen_cl35_st1_min $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) to_pay_min_35 ) ) => ?gen187 <- ( to_pay_min_35 ( positive 1 ) ( positive-derivator pen_cl35_st1_min ?gen194 ) )"))

([pen_cl35_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl35_st1_min-overruled-dot-gen417)
   (depends-on declare to_pay_min_35 commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl35_st1_min] ) ) ) ?gen187 <- ( to_pay_min_35 ( value 120 ) ( negative-support $?gen190 ) ( negative-overruled $?gen191 & : ( subseq-pos ( create$ pen_cl35_st1_min-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( test ( eq ( class ?gen187 ) to_pay_min_35 ) ) ( not ( and ?gen194 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( to_pay_min_35 ( positive-defeated $?gen189 & : ( not ( member$ pen_cl35_st1_min $?gen189 ) ) ) ) ) ) => ( calc ( bind $?gen192 ( delete-member$ $?gen191 ( create$ pen_cl35_st1_min-overruled $?gen190 ) ) ) ) ?gen187 <- ( to_pay_min_35 ( negative-overruled $?gen192 ) )"))

([pen_cl35_st1_min-overruled] of derived-attribute-rule
   (pos-name pen_cl35_st1_min-overruled-gen419)
   (depends-on declare commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl35_st1_min] ) ) ) ?gen194 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( to_pay_min_35 ( value 120 ) ( negative-support $?gen190 ) ( negative-overruled $?gen191 & : ( not ( subseq-pos ( create$ pen_cl35_st1_min-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( positive-defeated $?gen189 & : ( not ( member$ pen_cl35_st1_min $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) to_pay_min_35 ) ) => ( calc ( bind $?gen192 ( create$ pen_cl35_st1_min-overruled $?gen190 $?gen191 ) ) ) ?gen187 <- ( to_pay_min_35 ( negative-overruled $?gen192 ) )"))

([pen_cl35_st1_min-support] of derived-attribute-rule
   (pos-name pen_cl35_st1_min-support-gen421)
   (depends-on declare commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl35_st1_min] ) ) ) ?gen186 <- ( commited_cl35_st1 ( defendant ?Defendant ) ) ?gen187 <- ( to_pay_min_35 ( value 120 ) ( positive-support $?gen189 & : ( not ( subseq-pos ( create$ pen_cl35_st1_min ?gen186 $$$ $?gen189 ) ) ) ) ) ( test ( eq ( class ?gen187 ) to_pay_min_35 ) ) => ( calc ( bind $?gen192 ( create$ pen_cl35_st1_min ?gen186 $?gen189 ) ) ) ?gen187 <- ( to_pay_min_35 ( positive-support $?gen192 ) )"))

([pen_cl29_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl29_st1_max-defeasibly-dot-gen423)
   (depends-on declare to_pay_max_29 commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl29_st1_max] ) ) ) ?gen178 <- ( to_pay_max_29 ( value 400 ) ( positive 1 ) ( positive-derivator pen_cl29_st1_max $? ) ) ( test ( eq ( class ?gen178 ) to_pay_max_29 ) ) ( not ( and ?gen185 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( to_pay_max_29 ( negative ~ 2 ) ( positive-overruled $?gen180 & : ( not ( member$ pen_cl29_st1_max $?gen180 ) ) ) ) ) ) => ?gen178 <- ( to_pay_max_29 ( positive 0 ) )"))

([pen_cl29_st1_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl29_st1_max-defeasibly-gen425)
   (depends-on declare commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl29_st1_max] ) ) ) ?gen185 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( to_pay_max_29 ( value 400 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen180 & : ( not ( member$ pen_cl29_st1_max $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) to_pay_max_29 ) ) => ?gen178 <- ( to_pay_max_29 ( positive 1 ) ( positive-derivator pen_cl29_st1_max ?gen185 ) )"))

([pen_cl29_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl29_st1_max-overruled-dot-gen427)
   (depends-on declare to_pay_max_29 commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl29_st1_max] ) ) ) ?gen178 <- ( to_pay_max_29 ( value 400 ) ( negative-support $?gen181 ) ( negative-overruled $?gen182 & : ( subseq-pos ( create$ pen_cl29_st1_max-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( test ( eq ( class ?gen178 ) to_pay_max_29 ) ) ( not ( and ?gen185 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( to_pay_max_29 ( positive-defeated $?gen180 & : ( not ( member$ pen_cl29_st1_max $?gen180 ) ) ) ) ) ) => ( calc ( bind $?gen183 ( delete-member$ $?gen182 ( create$ pen_cl29_st1_max-overruled $?gen181 ) ) ) ) ?gen178 <- ( to_pay_max_29 ( negative-overruled $?gen183 ) )"))

([pen_cl29_st1_max-overruled] of derived-attribute-rule
   (pos-name pen_cl29_st1_max-overruled-gen429)
   (depends-on declare commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl29_st1_max] ) ) ) ?gen185 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( to_pay_max_29 ( value 400 ) ( negative-support $?gen181 ) ( negative-overruled $?gen182 & : ( not ( subseq-pos ( create$ pen_cl29_st1_max-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( positive-defeated $?gen180 & : ( not ( member$ pen_cl29_st1_max $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) to_pay_max_29 ) ) => ( calc ( bind $?gen183 ( create$ pen_cl29_st1_max-overruled $?gen181 $?gen182 ) ) ) ?gen178 <- ( to_pay_max_29 ( negative-overruled $?gen183 ) )"))

([pen_cl29_st1_max-support] of derived-attribute-rule
   (pos-name pen_cl29_st1_max-support-gen431)
   (depends-on declare commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl29_st1_max] ) ) ) ?gen177 <- ( commited_cl29_st1 ( defendant ?Defendant ) ) ?gen178 <- ( to_pay_max_29 ( value 400 ) ( positive-support $?gen180 & : ( not ( subseq-pos ( create$ pen_cl29_st1_max ?gen177 $$$ $?gen180 ) ) ) ) ) ( test ( eq ( class ?gen178 ) to_pay_max_29 ) ) => ( calc ( bind $?gen183 ( create$ pen_cl29_st1_max ?gen177 $?gen180 ) ) ) ?gen178 <- ( to_pay_max_29 ( positive-support $?gen183 ) )"))

([pen_cl29_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl29_st1_min-defeasibly-dot-gen433)
   (depends-on declare to_pay_min_29 commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl29_st1_min] ) ) ) ?gen169 <- ( to_pay_min_29 ( value 120 ) ( positive 1 ) ( positive-derivator pen_cl29_st1_min $? ) ) ( test ( eq ( class ?gen169 ) to_pay_min_29 ) ) ( not ( and ?gen176 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( to_pay_min_29 ( negative ~ 2 ) ( positive-overruled $?gen171 & : ( not ( member$ pen_cl29_st1_min $?gen171 ) ) ) ) ) ) => ?gen169 <- ( to_pay_min_29 ( positive 0 ) )"))

([pen_cl29_st1_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl29_st1_min-defeasibly-gen435)
   (depends-on declare commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl29_st1_min] ) ) ) ?gen176 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( to_pay_min_29 ( value 120 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen171 & : ( not ( member$ pen_cl29_st1_min $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) to_pay_min_29 ) ) => ?gen169 <- ( to_pay_min_29 ( positive 1 ) ( positive-derivator pen_cl29_st1_min ?gen176 ) )"))

([pen_cl29_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl29_st1_min-overruled-dot-gen437)
   (depends-on declare to_pay_min_29 commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl29_st1_min] ) ) ) ?gen169 <- ( to_pay_min_29 ( value 120 ) ( negative-support $?gen172 ) ( negative-overruled $?gen173 & : ( subseq-pos ( create$ pen_cl29_st1_min-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( test ( eq ( class ?gen169 ) to_pay_min_29 ) ) ( not ( and ?gen176 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( to_pay_min_29 ( positive-defeated $?gen171 & : ( not ( member$ pen_cl29_st1_min $?gen171 ) ) ) ) ) ) => ( calc ( bind $?gen174 ( delete-member$ $?gen173 ( create$ pen_cl29_st1_min-overruled $?gen172 ) ) ) ) ?gen169 <- ( to_pay_min_29 ( negative-overruled $?gen174 ) )"))

([pen_cl29_st1_min-overruled] of derived-attribute-rule
   (pos-name pen_cl29_st1_min-overruled-gen439)
   (depends-on declare commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl29_st1_min] ) ) ) ?gen176 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( to_pay_min_29 ( value 120 ) ( negative-support $?gen172 ) ( negative-overruled $?gen173 & : ( not ( subseq-pos ( create$ pen_cl29_st1_min-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( positive-defeated $?gen171 & : ( not ( member$ pen_cl29_st1_min $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) to_pay_min_29 ) ) => ( calc ( bind $?gen174 ( create$ pen_cl29_st1_min-overruled $?gen172 $?gen173 ) ) ) ?gen169 <- ( to_pay_min_29 ( negative-overruled $?gen174 ) )"))

([pen_cl29_st1_min-support] of derived-attribute-rule
   (pos-name pen_cl29_st1_min-support-gen441)
   (depends-on declare commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl29_st1_min] ) ) ) ?gen168 <- ( commited_cl29_st1 ( defendant ?Defendant ) ) ?gen169 <- ( to_pay_min_29 ( value 120 ) ( positive-support $?gen171 & : ( not ( subseq-pos ( create$ pen_cl29_st1_min ?gen168 $$$ $?gen171 ) ) ) ) ) ( test ( eq ( class ?gen169 ) to_pay_min_29 ) ) => ( calc ( bind $?gen174 ( create$ pen_cl29_st1_min ?gen168 $?gen171 ) ) ) ?gen169 <- ( to_pay_min_29 ( positive-support $?gen174 ) )"))

([pen_cl27_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl27_st1_max-defeasibly-dot-gen443)
   (depends-on declare to_pay_max_27 commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl27_st1_max] ) ) ) ?gen160 <- ( to_pay_max_27 ( value 250 ) ( positive 1 ) ( positive-derivator pen_cl27_st1_max $? ) ) ( test ( eq ( class ?gen160 ) to_pay_max_27 ) ) ( not ( and ?gen167 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( to_pay_max_27 ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ pen_cl27_st1_max $?gen162 ) ) ) ) ) ) => ?gen160 <- ( to_pay_max_27 ( positive 0 ) )"))

([pen_cl27_st1_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl27_st1_max-defeasibly-gen445)
   (depends-on declare commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl27_st1_max] ) ) ) ?gen167 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( to_pay_max_27 ( value 250 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ pen_cl27_st1_max $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) to_pay_max_27 ) ) => ?gen160 <- ( to_pay_max_27 ( positive 1 ) ( positive-derivator pen_cl27_st1_max ?gen167 ) )"))

([pen_cl27_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl27_st1_max-overruled-dot-gen447)
   (depends-on declare to_pay_max_27 commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl27_st1_max] ) ) ) ?gen160 <- ( to_pay_max_27 ( value 250 ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( subseq-pos ( create$ pen_cl27_st1_max-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( test ( eq ( class ?gen160 ) to_pay_max_27 ) ) ( not ( and ?gen167 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( to_pay_max_27 ( positive-defeated $?gen162 & : ( not ( member$ pen_cl27_st1_max $?gen162 ) ) ) ) ) ) => ( calc ( bind $?gen165 ( delete-member$ $?gen164 ( create$ pen_cl27_st1_max-overruled $?gen163 ) ) ) ) ?gen160 <- ( to_pay_max_27 ( negative-overruled $?gen165 ) )"))

([pen_cl27_st1_max-overruled] of derived-attribute-rule
   (pos-name pen_cl27_st1_max-overruled-gen449)
   (depends-on declare commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl27_st1_max] ) ) ) ?gen167 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( to_pay_max_27 ( value 250 ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( not ( subseq-pos ( create$ pen_cl27_st1_max-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( positive-defeated $?gen162 & : ( not ( member$ pen_cl27_st1_max $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) to_pay_max_27 ) ) => ( calc ( bind $?gen165 ( create$ pen_cl27_st1_max-overruled $?gen163 $?gen164 ) ) ) ?gen160 <- ( to_pay_max_27 ( negative-overruled $?gen165 ) )"))

([pen_cl27_st1_max-support] of derived-attribute-rule
   (pos-name pen_cl27_st1_max-support-gen451)
   (depends-on declare commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl27_st1_max] ) ) ) ?gen159 <- ( commited_cl27_st1 ( defendant ?Defendant ) ) ?gen160 <- ( to_pay_max_27 ( value 250 ) ( positive-support $?gen162 & : ( not ( subseq-pos ( create$ pen_cl27_st1_max ?gen159 $$$ $?gen162 ) ) ) ) ) ( test ( eq ( class ?gen160 ) to_pay_max_27 ) ) => ( calc ( bind $?gen165 ( create$ pen_cl27_st1_max ?gen159 $?gen162 ) ) ) ?gen160 <- ( to_pay_max_27 ( positive-support $?gen165 ) )"))

([pen_cl27_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl27_st1_min-defeasibly-dot-gen453)
   (depends-on declare to_pay_min_27 commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl27_st1_min] ) ) ) ?gen151 <- ( to_pay_min_27 ( value 90 ) ( positive 1 ) ( positive-derivator pen_cl27_st1_min $? ) ) ( test ( eq ( class ?gen151 ) to_pay_min_27 ) ) ( not ( and ?gen158 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( to_pay_min_27 ( negative ~ 2 ) ( positive-overruled $?gen153 & : ( not ( member$ pen_cl27_st1_min $?gen153 ) ) ) ) ) ) => ?gen151 <- ( to_pay_min_27 ( positive 0 ) )"))

([pen_cl27_st1_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl27_st1_min-defeasibly-gen455)
   (depends-on declare commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl27_st1_min] ) ) ) ?gen158 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( to_pay_min_27 ( value 90 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen153 & : ( not ( member$ pen_cl27_st1_min $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) to_pay_min_27 ) ) => ?gen151 <- ( to_pay_min_27 ( positive 1 ) ( positive-derivator pen_cl27_st1_min ?gen158 ) )"))

([pen_cl27_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl27_st1_min-overruled-dot-gen457)
   (depends-on declare to_pay_min_27 commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl27_st1_min] ) ) ) ?gen151 <- ( to_pay_min_27 ( value 90 ) ( negative-support $?gen154 ) ( negative-overruled $?gen155 & : ( subseq-pos ( create$ pen_cl27_st1_min-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( test ( eq ( class ?gen151 ) to_pay_min_27 ) ) ( not ( and ?gen158 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( to_pay_min_27 ( positive-defeated $?gen153 & : ( not ( member$ pen_cl27_st1_min $?gen153 ) ) ) ) ) ) => ( calc ( bind $?gen156 ( delete-member$ $?gen155 ( create$ pen_cl27_st1_min-overruled $?gen154 ) ) ) ) ?gen151 <- ( to_pay_min_27 ( negative-overruled $?gen156 ) )"))

([pen_cl27_st1_min-overruled] of derived-attribute-rule
   (pos-name pen_cl27_st1_min-overruled-gen459)
   (depends-on declare commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl27_st1_min] ) ) ) ?gen158 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( to_pay_min_27 ( value 90 ) ( negative-support $?gen154 ) ( negative-overruled $?gen155 & : ( not ( subseq-pos ( create$ pen_cl27_st1_min-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( positive-defeated $?gen153 & : ( not ( member$ pen_cl27_st1_min $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) to_pay_min_27 ) ) => ( calc ( bind $?gen156 ( create$ pen_cl27_st1_min-overruled $?gen154 $?gen155 ) ) ) ?gen151 <- ( to_pay_min_27 ( negative-overruled $?gen156 ) )"))

([pen_cl27_st1_min-support] of derived-attribute-rule
   (pos-name pen_cl27_st1_min-support-gen461)
   (depends-on declare commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl27_st1_min] ) ) ) ?gen150 <- ( commited_cl27_st1 ( defendant ?Defendant ) ) ?gen151 <- ( to_pay_min_27 ( value 90 ) ( positive-support $?gen153 & : ( not ( subseq-pos ( create$ pen_cl27_st1_min ?gen150 $$$ $?gen153 ) ) ) ) ) ( test ( eq ( class ?gen151 ) to_pay_min_27 ) ) => ( calc ( bind $?gen156 ( create$ pen_cl27_st1_min ?gen150 $?gen153 ) ) ) ?gen151 <- ( to_pay_min_27 ( positive-support $?gen156 ) )"))

([pen_cl26_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl26_st2_max-defeasibly-dot-gen463)
   (depends-on declare to_pay_max_26 commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl26_st2_max] ) ) ) ?gen142 <- ( to_pay_max_26 ( value 250 ) ( positive 1 ) ( positive-derivator pen_cl26_st2_max $? ) ) ( test ( eq ( class ?gen142 ) to_pay_max_26 ) ) ( not ( and ?gen149 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( to_pay_max_26 ( negative ~ 2 ) ( positive-overruled $?gen144 & : ( not ( member$ pen_cl26_st2_max $?gen144 ) ) ) ) ) ) => ?gen142 <- ( to_pay_max_26 ( positive 0 ) )"))

([pen_cl26_st2_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl26_st2_max-defeasibly-gen465)
   (depends-on declare commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl26_st2_max] ) ) ) ?gen149 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( to_pay_max_26 ( value 250 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen144 & : ( not ( member$ pen_cl26_st2_max $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) to_pay_max_26 ) ) => ?gen142 <- ( to_pay_max_26 ( positive 1 ) ( positive-derivator pen_cl26_st2_max ?gen149 ) )"))

([pen_cl26_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl26_st2_max-overruled-dot-gen467)
   (depends-on declare to_pay_max_26 commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl26_st2_max] ) ) ) ?gen142 <- ( to_pay_max_26 ( value 250 ) ( negative-support $?gen145 ) ( negative-overruled $?gen146 & : ( subseq-pos ( create$ pen_cl26_st2_max-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( test ( eq ( class ?gen142 ) to_pay_max_26 ) ) ( not ( and ?gen149 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( to_pay_max_26 ( positive-defeated $?gen144 & : ( not ( member$ pen_cl26_st2_max $?gen144 ) ) ) ) ) ) => ( calc ( bind $?gen147 ( delete-member$ $?gen146 ( create$ pen_cl26_st2_max-overruled $?gen145 ) ) ) ) ?gen142 <- ( to_pay_max_26 ( negative-overruled $?gen147 ) )"))

([pen_cl26_st2_max-overruled] of derived-attribute-rule
   (pos-name pen_cl26_st2_max-overruled-gen469)
   (depends-on declare commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl26_st2_max] ) ) ) ?gen149 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( to_pay_max_26 ( value 250 ) ( negative-support $?gen145 ) ( negative-overruled $?gen146 & : ( not ( subseq-pos ( create$ pen_cl26_st2_max-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( positive-defeated $?gen144 & : ( not ( member$ pen_cl26_st2_max $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) to_pay_max_26 ) ) => ( calc ( bind $?gen147 ( create$ pen_cl26_st2_max-overruled $?gen145 $?gen146 ) ) ) ?gen142 <- ( to_pay_max_26 ( negative-overruled $?gen147 ) )"))

([pen_cl26_st2_max-support] of derived-attribute-rule
   (pos-name pen_cl26_st2_max-support-gen471)
   (depends-on declare commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl26_st2_max] ) ) ) ?gen141 <- ( commited_cl26_st2 ( defendant ?Defendant ) ) ?gen142 <- ( to_pay_max_26 ( value 250 ) ( positive-support $?gen144 & : ( not ( subseq-pos ( create$ pen_cl26_st2_max ?gen141 $$$ $?gen144 ) ) ) ) ) ( test ( eq ( class ?gen142 ) to_pay_max_26 ) ) => ( calc ( bind $?gen147 ( create$ pen_cl26_st2_max ?gen141 $?gen144 ) ) ) ?gen142 <- ( to_pay_max_26 ( positive-support $?gen147 ) )"))

([pen_cl26_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl26_st2_min-defeasibly-dot-gen473)
   (depends-on declare to_pay_min_26 commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl26_st2_min] ) ) ) ?gen133 <- ( to_pay_min_26 ( value 90 ) ( positive 1 ) ( positive-derivator pen_cl26_st2_min $? ) ) ( test ( eq ( class ?gen133 ) to_pay_min_26 ) ) ( not ( and ?gen140 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( to_pay_min_26 ( negative ~ 2 ) ( positive-overruled $?gen135 & : ( not ( member$ pen_cl26_st2_min $?gen135 ) ) ) ) ) ) => ?gen133 <- ( to_pay_min_26 ( positive 0 ) )"))

([pen_cl26_st2_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl26_st2_min-defeasibly-gen475)
   (depends-on declare commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl26_st2_min] ) ) ) ?gen140 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( to_pay_min_26 ( value 90 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen135 & : ( not ( member$ pen_cl26_st2_min $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) to_pay_min_26 ) ) => ?gen133 <- ( to_pay_min_26 ( positive 1 ) ( positive-derivator pen_cl26_st2_min ?gen140 ) )"))

([pen_cl26_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl26_st2_min-overruled-dot-gen477)
   (depends-on declare to_pay_min_26 commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl26_st2_min] ) ) ) ?gen133 <- ( to_pay_min_26 ( value 90 ) ( negative-support $?gen136 ) ( negative-overruled $?gen137 & : ( subseq-pos ( create$ pen_cl26_st2_min-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( test ( eq ( class ?gen133 ) to_pay_min_26 ) ) ( not ( and ?gen140 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( to_pay_min_26 ( positive-defeated $?gen135 & : ( not ( member$ pen_cl26_st2_min $?gen135 ) ) ) ) ) ) => ( calc ( bind $?gen138 ( delete-member$ $?gen137 ( create$ pen_cl26_st2_min-overruled $?gen136 ) ) ) ) ?gen133 <- ( to_pay_min_26 ( negative-overruled $?gen138 ) )"))

([pen_cl26_st2_min-overruled] of derived-attribute-rule
   (pos-name pen_cl26_st2_min-overruled-gen479)
   (depends-on declare commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl26_st2_min] ) ) ) ?gen140 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( to_pay_min_26 ( value 90 ) ( negative-support $?gen136 ) ( negative-overruled $?gen137 & : ( not ( subseq-pos ( create$ pen_cl26_st2_min-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( positive-defeated $?gen135 & : ( not ( member$ pen_cl26_st2_min $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) to_pay_min_26 ) ) => ( calc ( bind $?gen138 ( create$ pen_cl26_st2_min-overruled $?gen136 $?gen137 ) ) ) ?gen133 <- ( to_pay_min_26 ( negative-overruled $?gen138 ) )"))

([pen_cl26_st2_min-support] of derived-attribute-rule
   (pos-name pen_cl26_st2_min-support-gen481)
   (depends-on declare commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl26_st2_min] ) ) ) ?gen132 <- ( commited_cl26_st2 ( defendant ?Defendant ) ) ?gen133 <- ( to_pay_min_26 ( value 90 ) ( positive-support $?gen135 & : ( not ( subseq-pos ( create$ pen_cl26_st2_min ?gen132 $$$ $?gen135 ) ) ) ) ) ( test ( eq ( class ?gen133 ) to_pay_min_26 ) ) => ( calc ( bind $?gen138 ( create$ pen_cl26_st2_min ?gen132 $?gen135 ) ) ) ?gen133 <- ( to_pay_min_26 ( positive-support $?gen138 ) )"))

([rule_cl348_st3_injury-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl348_st3_injury-defeasibly-dot-gen483)
   (depends-on declare commited_cl348_st3 lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl348_st3_injury] ) ) ) ?gen122 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl348_st3_injury $? ) ) ( test ( eq ( class ?gen122 ) commited_cl348_st3 ) ) ( not ( and ?gen129 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen128 & : ( >= ?gen128 1 ) ) ) ?gen131 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen122 <- ( commited_cl348_st3 ( negative ~ 2 ) ( positive-overruled $?gen124 & : ( not ( member$ rule_cl348_st3_injury $?gen124 ) ) ) ) ) ) => ?gen122 <- ( commited_cl348_st3 ( positive 0 ) )"))

([rule_cl348_st3_injury-defeasibly] of derived-attribute-rule
   (pos-name rule_cl348_st3_injury-defeasibly-gen485)
   (depends-on declare lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl348_st3_injury] ) ) ) ?gen129 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen128 & : ( >= ?gen128 1 ) ) ) ?gen131 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen122 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen124 & : ( not ( member$ rule_cl348_st3_injury $?gen124 ) ) ) ) ( test ( eq ( class ?gen122 ) commited_cl348_st3 ) ) => ?gen122 <- ( commited_cl348_st3 ( positive 1 ) ( positive-derivator rule_cl348_st3_injury ?gen129 ?gen131 ) )"))

([rule_cl348_st3_injury-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl348_st3_injury-overruled-dot-gen487)
   (depends-on declare commited_cl348_st3 lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl348_st3_injury] ) ) ) ?gen122 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( negative-support $?gen125 ) ( negative-overruled $?gen126 & : ( subseq-pos ( create$ rule_cl348_st3_injury-overruled $?gen125 $$$ $?gen126 ) ) ) ) ( test ( eq ( class ?gen122 ) commited_cl348_st3 ) ) ( not ( and ?gen129 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen128 & : ( >= ?gen128 1 ) ) ) ?gen131 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen122 <- ( commited_cl348_st3 ( positive-defeated $?gen124 & : ( not ( member$ rule_cl348_st3_injury $?gen124 ) ) ) ) ) ) => ( calc ( bind $?gen127 ( delete-member$ $?gen126 ( create$ rule_cl348_st3_injury-overruled $?gen125 ) ) ) ) ?gen122 <- ( commited_cl348_st3 ( negative-overruled $?gen127 ) )"))

([rule_cl348_st3_injury-overruled] of derived-attribute-rule
   (pos-name rule_cl348_st3_injury-overruled-gen489)
   (depends-on declare lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl348_st3_injury] ) ) ) ?gen129 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen128 & : ( >= ?gen128 1 ) ) ) ?gen131 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen122 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( negative-support $?gen125 ) ( negative-overruled $?gen126 & : ( not ( subseq-pos ( create$ rule_cl348_st3_injury-overruled $?gen125 $$$ $?gen126 ) ) ) ) ( positive-defeated $?gen124 & : ( not ( member$ rule_cl348_st3_injury $?gen124 ) ) ) ) ( test ( eq ( class ?gen122 ) commited_cl348_st3 ) ) => ( calc ( bind $?gen127 ( create$ rule_cl348_st3_injury-overruled $?gen125 $?gen126 ) ) ) ?gen122 <- ( commited_cl348_st3 ( negative-overruled $?gen127 ) )"))

([rule_cl348_st3_injury-support] of derived-attribute-rule
   (pos-name rule_cl348_st3_injury-support-gen491)
   (depends-on declare lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl348_st3_injury] ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ?gen121 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ?gen122 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive-support $?gen124 & : ( not ( subseq-pos ( create$ rule_cl348_st3_injury ?gen120 ?gen121 $$$ $?gen124 ) ) ) ) ) ( test ( eq ( class ?gen122 ) commited_cl348_st3 ) ) => ( calc ( bind $?gen127 ( create$ rule_cl348_st3_injury ?gen120 ?gen121 $?gen124 ) ) ) ?gen122 <- ( commited_cl348_st3 ( positive-support $?gen127 ) )"))

([rule_cl348_st1_injury-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl348_st1_injury-defeasibly-dot-gen493)
   (depends-on declare commited_cl348_st1 lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl348_st1_injury] ) ) ) ?gen110 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl348_st1_injury $? ) ) ( test ( eq ( class ?gen110 ) commited_cl348_st1 ) ) ( not ( and ?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen110 <- ( commited_cl348_st1 ( negative ~ 2 ) ( positive-overruled $?gen112 & : ( not ( member$ rule_cl348_st1_injury $?gen112 ) ) ) ) ) ) => ?gen110 <- ( commited_cl348_st1 ( positive 0 ) )"))

([rule_cl348_st1_injury-defeasibly] of derived-attribute-rule
   (pos-name rule_cl348_st1_injury-defeasibly-gen495)
   (depends-on declare lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl348_st1_injury] ) ) ) ?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen110 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen112 & : ( not ( member$ rule_cl348_st1_injury $?gen112 ) ) ) ) ( test ( eq ( class ?gen110 ) commited_cl348_st1 ) ) => ?gen110 <- ( commited_cl348_st1 ( positive 1 ) ( positive-derivator rule_cl348_st1_injury ?gen117 ?gen119 ) )"))

([rule_cl348_st1_injury-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl348_st1_injury-overruled-dot-gen497)
   (depends-on declare commited_cl348_st1 lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl348_st1_injury] ) ) ) ?gen110 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( negative-support $?gen113 ) ( negative-overruled $?gen114 & : ( subseq-pos ( create$ rule_cl348_st1_injury-overruled $?gen113 $$$ $?gen114 ) ) ) ) ( test ( eq ( class ?gen110 ) commited_cl348_st1 ) ) ( not ( and ?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen110 <- ( commited_cl348_st1 ( positive-defeated $?gen112 & : ( not ( member$ rule_cl348_st1_injury $?gen112 ) ) ) ) ) ) => ( calc ( bind $?gen115 ( delete-member$ $?gen114 ( create$ rule_cl348_st1_injury-overruled $?gen113 ) ) ) ) ?gen110 <- ( commited_cl348_st1 ( negative-overruled $?gen115 ) )"))

([rule_cl348_st1_injury-overruled] of derived-attribute-rule
   (pos-name rule_cl348_st1_injury-overruled-gen499)
   (depends-on declare lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl348_st1_injury] ) ) ) ?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen110 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( negative-support $?gen113 ) ( negative-overruled $?gen114 & : ( not ( subseq-pos ( create$ rule_cl348_st1_injury-overruled $?gen113 $$$ $?gen114 ) ) ) ) ( positive-defeated $?gen112 & : ( not ( member$ rule_cl348_st1_injury $?gen112 ) ) ) ) ( test ( eq ( class ?gen110 ) commited_cl348_st1 ) ) => ( calc ( bind $?gen115 ( create$ rule_cl348_st1_injury-overruled $?gen113 $?gen114 ) ) ) ?gen110 <- ( commited_cl348_st1 ( negative-overruled $?gen115 ) )"))

([rule_cl348_st1_injury-support] of derived-attribute-rule
   (pos-name rule_cl348_st1_injury-support-gen501)
   (depends-on declare lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl348_st1_injury] ) ) ) ?gen108 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ?gen109 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ?gen110 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive-support $?gen112 & : ( not ( subseq-pos ( create$ rule_cl348_st1_injury ?gen108 ?gen109 $$$ $?gen112 ) ) ) ) ) ( test ( eq ( class ?gen110 ) commited_cl348_st1 ) ) => ( calc ( bind $?gen115 ( create$ rule_cl348_st1_injury ?gen108 ?gen109 $?gen112 ) ) ) ?gen110 <- ( commited_cl348_st1 ( positive-support $?gen115 ) )"))

([rule_cl339_st3_injury-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl339_st3_injury-defeasibly-dot-gen503)
   (depends-on declare commited_cl339_st3 lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl339_st3_injury] ) ) ) ?gen98 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl339_st3_injury $? ) ) ( test ( eq ( class ?gen98 ) commited_cl339_st3 ) ) ( not ( and ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen98 <- ( commited_cl339_st3 ( negative ~ 2 ) ( positive-overruled $?gen100 & : ( not ( member$ rule_cl339_st3_injury $?gen100 ) ) ) ) ) ) => ?gen98 <- ( commited_cl339_st3 ( positive 0 ) )"))

([rule_cl339_st3_injury-defeasibly] of derived-attribute-rule
   (pos-name rule_cl339_st3_injury-defeasibly-gen505)
   (depends-on declare lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl339_st3_injury] ) ) ) ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen98 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen100 & : ( not ( member$ rule_cl339_st3_injury $?gen100 ) ) ) ) ( test ( eq ( class ?gen98 ) commited_cl339_st3 ) ) => ?gen98 <- ( commited_cl339_st3 ( positive 1 ) ( positive-derivator rule_cl339_st3_injury ?gen105 ?gen107 ) )"))

([rule_cl339_st3_injury-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl339_st3_injury-overruled-dot-gen507)
   (depends-on declare commited_cl339_st3 lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl339_st3_injury] ) ) ) ?gen98 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( negative-support $?gen101 ) ( negative-overruled $?gen102 & : ( subseq-pos ( create$ rule_cl339_st3_injury-overruled $?gen101 $$$ $?gen102 ) ) ) ) ( test ( eq ( class ?gen98 ) commited_cl339_st3 ) ) ( not ( and ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen98 <- ( commited_cl339_st3 ( positive-defeated $?gen100 & : ( not ( member$ rule_cl339_st3_injury $?gen100 ) ) ) ) ) ) => ( calc ( bind $?gen103 ( delete-member$ $?gen102 ( create$ rule_cl339_st3_injury-overruled $?gen101 ) ) ) ) ?gen98 <- ( commited_cl339_st3 ( negative-overruled $?gen103 ) )"))

([rule_cl339_st3_injury-overruled] of derived-attribute-rule
   (pos-name rule_cl339_st3_injury-overruled-gen509)
   (depends-on declare lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl339_st3_injury] ) ) ) ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen98 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( negative-support $?gen101 ) ( negative-overruled $?gen102 & : ( not ( subseq-pos ( create$ rule_cl339_st3_injury-overruled $?gen101 $$$ $?gen102 ) ) ) ) ( positive-defeated $?gen100 & : ( not ( member$ rule_cl339_st3_injury $?gen100 ) ) ) ) ( test ( eq ( class ?gen98 ) commited_cl339_st3 ) ) => ( calc ( bind $?gen103 ( create$ rule_cl339_st3_injury-overruled $?gen101 $?gen102 ) ) ) ?gen98 <- ( commited_cl339_st3 ( negative-overruled $?gen103 ) )"))

([rule_cl339_st3_injury-support] of derived-attribute-rule
   (pos-name rule_cl339_st3_injury-support-gen511)
   (depends-on declare lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl339_st3_injury] ) ) ) ?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ?gen98 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive-support $?gen100 & : ( not ( subseq-pos ( create$ rule_cl339_st3_injury ?gen96 ?gen97 $$$ $?gen100 ) ) ) ) ) ( test ( eq ( class ?gen98 ) commited_cl339_st3 ) ) => ( calc ( bind $?gen103 ( create$ rule_cl339_st3_injury ?gen96 ?gen97 $?gen100 ) ) ) ?gen98 <- ( commited_cl339_st3 ( positive-support $?gen103 ) )"))

([rule_cl339_st1_injury-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl339_st1_injury-defeasibly-dot-gen513)
   (depends-on declare commited_cl339_st1 lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl339_st1_injury] ) ) ) ?gen86 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl339_st1_injury $? ) ) ( test ( eq ( class ?gen86 ) commited_cl339_st1 ) ) ( not ( and ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( commited_cl339_st1 ( negative ~ 2 ) ( positive-overruled $?gen88 & : ( not ( member$ rule_cl339_st1_injury $?gen88 ) ) ) ) ) ) => ?gen86 <- ( commited_cl339_st1 ( positive 0 ) )"))

([rule_cl339_st1_injury-defeasibly] of derived-attribute-rule
   (pos-name rule_cl339_st1_injury-defeasibly-gen515)
   (depends-on declare lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl339_st1_injury] ) ) ) ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen88 & : ( not ( member$ rule_cl339_st1_injury $?gen88 ) ) ) ) ( test ( eq ( class ?gen86 ) commited_cl339_st1 ) ) => ?gen86 <- ( commited_cl339_st1 ( positive 1 ) ( positive-derivator rule_cl339_st1_injury ?gen93 ?gen95 ) )"))

([rule_cl339_st1_injury-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl339_st1_injury-overruled-dot-gen517)
   (depends-on declare commited_cl339_st1 lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl339_st1_injury] ) ) ) ?gen86 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( negative-support $?gen89 ) ( negative-overruled $?gen90 & : ( subseq-pos ( create$ rule_cl339_st1_injury-overruled $?gen89 $$$ $?gen90 ) ) ) ) ( test ( eq ( class ?gen86 ) commited_cl339_st1 ) ) ( not ( and ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( commited_cl339_st1 ( positive-defeated $?gen88 & : ( not ( member$ rule_cl339_st1_injury $?gen88 ) ) ) ) ) ) => ( calc ( bind $?gen91 ( delete-member$ $?gen90 ( create$ rule_cl339_st1_injury-overruled $?gen89 ) ) ) ) ?gen86 <- ( commited_cl339_st1 ( negative-overruled $?gen91 ) )"))

([rule_cl339_st1_injury-overruled] of derived-attribute-rule
   (pos-name rule_cl339_st1_injury-overruled-gen519)
   (depends-on declare lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl339_st1_injury] ) ) ) ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( negative-support $?gen89 ) ( negative-overruled $?gen90 & : ( not ( subseq-pos ( create$ rule_cl339_st1_injury-overruled $?gen89 $$$ $?gen90 ) ) ) ) ( positive-defeated $?gen88 & : ( not ( member$ rule_cl339_st1_injury $?gen88 ) ) ) ) ( test ( eq ( class ?gen86 ) commited_cl339_st1 ) ) => ( calc ( bind $?gen91 ( create$ rule_cl339_st1_injury-overruled $?gen89 $?gen90 ) ) ) ?gen86 <- ( commited_cl339_st1 ( negative-overruled $?gen91 ) )"))

([rule_cl339_st1_injury-support] of derived-attribute-rule
   (pos-name rule_cl339_st1_injury-support-gen521)
   (depends-on declare lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl339_st1_injury] ) ) ) ?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ?gen86 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive-support $?gen88 & : ( not ( subseq-pos ( create$ rule_cl339_st1_injury ?gen84 ?gen85 $$$ $?gen88 ) ) ) ) ) ( test ( eq ( class ?gen86 ) commited_cl339_st1 ) ) => ( calc ( bind $?gen91 ( create$ rule_cl339_st1_injury ?gen84 ?gen85 $?gen88 ) ) ) ?gen86 <- ( commited_cl339_st1 ( positive-support $?gen91 ) )"))

([rule_cl97_st3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl97_st3-defeasibly-dot-gen523)
   (depends-on declare commited_cl97_st3 lc:case commited_cl97_st3)
   (implies commited_cl97_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl97_st3] ) ) ) ?gen76 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl97_st3 $? ) ) ( test ( eq ( class ?gen76 ) commited_cl97_st3 ) ) ( not ( and ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_crosswalk \"no\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen76 <- ( commited_cl97_st3 ( negative ~ 2 ) ( positive-overruled $?gen78 & : ( not ( member$ rule_cl97_st3 $?gen78 ) ) ) ) ) ) => ?gen76 <- ( commited_cl97_st3 ( positive 0 ) )"))

([rule_cl97_st3-defeasibly] of derived-attribute-rule
   (pos-name rule_cl97_st3-defeasibly-gen525)
   (depends-on declare lc:case commited_cl97_st3)
   (implies commited_cl97_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl97_st3] ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_crosswalk \"no\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen76 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen78 & : ( not ( member$ rule_cl97_st3 $?gen78 ) ) ) ) ( test ( eq ( class ?gen76 ) commited_cl97_st3 ) ) => ?gen76 <- ( commited_cl97_st3 ( positive 1 ) ( positive-derivator rule_cl97_st3 ?gen83 ) )"))

([rule_cl97_st3-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl97_st3-overruled-dot-gen527)
   (depends-on declare commited_cl97_st3 lc:case commited_cl97_st3)
   (implies commited_cl97_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl97_st3] ) ) ) ?gen76 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( negative-support $?gen79 ) ( negative-overruled $?gen80 & : ( subseq-pos ( create$ rule_cl97_st3-overruled $?gen79 $$$ $?gen80 ) ) ) ) ( test ( eq ( class ?gen76 ) commited_cl97_st3 ) ) ( not ( and ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_crosswalk \"no\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen76 <- ( commited_cl97_st3 ( positive-defeated $?gen78 & : ( not ( member$ rule_cl97_st3 $?gen78 ) ) ) ) ) ) => ( calc ( bind $?gen81 ( delete-member$ $?gen80 ( create$ rule_cl97_st3-overruled $?gen79 ) ) ) ) ?gen76 <- ( commited_cl97_st3 ( negative-overruled $?gen81 ) )"))

([rule_cl97_st3-overruled] of derived-attribute-rule
   (pos-name rule_cl97_st3-overruled-gen529)
   (depends-on declare lc:case commited_cl97_st3)
   (implies commited_cl97_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl97_st3] ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_crosswalk \"no\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen76 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( negative-support $?gen79 ) ( negative-overruled $?gen80 & : ( not ( subseq-pos ( create$ rule_cl97_st3-overruled $?gen79 $$$ $?gen80 ) ) ) ) ( positive-defeated $?gen78 & : ( not ( member$ rule_cl97_st3 $?gen78 ) ) ) ) ( test ( eq ( class ?gen76 ) commited_cl97_st3 ) ) => ( calc ( bind $?gen81 ( create$ rule_cl97_st3-overruled $?gen79 $?gen80 ) ) ) ?gen76 <- ( commited_cl97_st3 ( negative-overruled $?gen81 ) )"))

([rule_cl97_st3-support] of derived-attribute-rule
   (pos-name rule_cl97_st3-support-gen531)
   (depends-on declare lc:case commited_cl97_st3)
   (implies commited_cl97_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl97_st3] ) ) ) ?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_crosswalk \"no\" ) ) ?gen76 <- ( commited_cl97_st3 ( defendant ?Defendant ) ( positive-support $?gen78 & : ( not ( subseq-pos ( create$ rule_cl97_st3 ?gen75 $$$ $?gen78 ) ) ) ) ) ( test ( eq ( class ?gen76 ) commited_cl97_st3 ) ) => ( calc ( bind $?gen81 ( create$ rule_cl97_st3 ?gen75 $?gen78 ) ) ) ?gen76 <- ( commited_cl97_st3 ( positive-support $?gen81 ) )"))

([rule_cl44-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl44-defeasibly-dot-gen533)
   (depends-on declare commited_cl44 lc:case commited_cl44)
   (implies commited_cl44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl44] ) ) ) ?gen67 <- ( commited_cl44 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl44 $? ) ) ( test ( eq ( class ?gen67 ) commited_cl44 ) ) ( not ( and ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen67 <- ( commited_cl44 ( negative ~ 2 ) ( positive-overruled $?gen69 & : ( not ( member$ rule_cl44 $?gen69 ) ) ) ) ) ) => ?gen67 <- ( commited_cl44 ( positive 0 ) )"))

([rule_cl44-defeasibly] of derived-attribute-rule
   (pos-name rule_cl44-defeasibly-gen535)
   (depends-on declare lc:case commited_cl44)
   (implies commited_cl44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl44] ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen67 <- ( commited_cl44 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen69 & : ( not ( member$ rule_cl44 $?gen69 ) ) ) ) ( test ( eq ( class ?gen67 ) commited_cl44 ) ) => ?gen67 <- ( commited_cl44 ( positive 1 ) ( positive-derivator rule_cl44 ?gen74 ) )"))

([rule_cl44-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl44-overruled-dot-gen537)
   (depends-on declare commited_cl44 lc:case commited_cl44)
   (implies commited_cl44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl44] ) ) ) ?gen67 <- ( commited_cl44 ( defendant ?Defendant ) ( negative-support $?gen70 ) ( negative-overruled $?gen71 & : ( subseq-pos ( create$ rule_cl44-overruled $?gen70 $$$ $?gen71 ) ) ) ) ( test ( eq ( class ?gen67 ) commited_cl44 ) ) ( not ( and ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen67 <- ( commited_cl44 ( positive-defeated $?gen69 & : ( not ( member$ rule_cl44 $?gen69 ) ) ) ) ) ) => ( calc ( bind $?gen72 ( delete-member$ $?gen71 ( create$ rule_cl44-overruled $?gen70 ) ) ) ) ?gen67 <- ( commited_cl44 ( negative-overruled $?gen72 ) )"))

([rule_cl44-overruled] of derived-attribute-rule
   (pos-name rule_cl44-overruled-gen539)
   (depends-on declare lc:case commited_cl44)
   (implies commited_cl44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl44] ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen67 <- ( commited_cl44 ( defendant ?Defendant ) ( negative-support $?gen70 ) ( negative-overruled $?gen71 & : ( not ( subseq-pos ( create$ rule_cl44-overruled $?gen70 $$$ $?gen71 ) ) ) ) ( positive-defeated $?gen69 & : ( not ( member$ rule_cl44 $?gen69 ) ) ) ) ( test ( eq ( class ?gen67 ) commited_cl44 ) ) => ( calc ( bind $?gen72 ( create$ rule_cl44-overruled $?gen70 $?gen71 ) ) ) ?gen67 <- ( commited_cl44 ( negative-overruled $?gen72 ) )"))

([rule_cl44-support] of derived-attribute-rule
   (pos-name rule_cl44-support-gen541)
   (depends-on declare lc:case commited_cl44)
   (implies commited_cl44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl44] ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ) ?gen67 <- ( commited_cl44 ( defendant ?Defendant ) ( positive-support $?gen69 & : ( not ( subseq-pos ( create$ rule_cl44 ?gen66 $$$ $?gen69 ) ) ) ) ) ( test ( eq ( class ?gen67 ) commited_cl44 ) ) => ( calc ( bind $?gen72 ( create$ rule_cl44 ?gen66 $?gen69 ) ) ) ?gen67 <- ( commited_cl44 ( positive-support $?gen72 ) )"))

([rule_cl41-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl41-defeasibly-dot-gen543)
   (depends-on declare commited_cl41 lc:case commited_cl41)
   (implies commited_cl41)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl41] ) ) ) ?gen58 <- ( commited_cl41 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl41 $? ) ) ( test ( eq ( class ?gen58 ) commited_cl41 ) ) ( not ( and ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen58 <- ( commited_cl41 ( negative ~ 2 ) ( positive-overruled $?gen60 & : ( not ( member$ rule_cl41 $?gen60 ) ) ) ) ) ) => ?gen58 <- ( commited_cl41 ( positive 0 ) )"))

([rule_cl41-defeasibly] of derived-attribute-rule
   (pos-name rule_cl41-defeasibly-gen545)
   (depends-on declare lc:case commited_cl41)
   (implies commited_cl41)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl41] ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen58 <- ( commited_cl41 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen60 & : ( not ( member$ rule_cl41 $?gen60 ) ) ) ) ( test ( eq ( class ?gen58 ) commited_cl41 ) ) => ?gen58 <- ( commited_cl41 ( positive 1 ) ( positive-derivator rule_cl41 ?gen65 ) )"))

([rule_cl41-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl41-overruled-dot-gen547)
   (depends-on declare commited_cl41 lc:case commited_cl41)
   (implies commited_cl41)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl41] ) ) ) ?gen58 <- ( commited_cl41 ( defendant ?Defendant ) ( negative-support $?gen61 ) ( negative-overruled $?gen62 & : ( subseq-pos ( create$ rule_cl41-overruled $?gen61 $$$ $?gen62 ) ) ) ) ( test ( eq ( class ?gen58 ) commited_cl41 ) ) ( not ( and ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen58 <- ( commited_cl41 ( positive-defeated $?gen60 & : ( not ( member$ rule_cl41 $?gen60 ) ) ) ) ) ) => ( calc ( bind $?gen63 ( delete-member$ $?gen62 ( create$ rule_cl41-overruled $?gen61 ) ) ) ) ?gen58 <- ( commited_cl41 ( negative-overruled $?gen63 ) )"))

([rule_cl41-overruled] of derived-attribute-rule
   (pos-name rule_cl41-overruled-gen549)
   (depends-on declare lc:case commited_cl41)
   (implies commited_cl41)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl41] ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen58 <- ( commited_cl41 ( defendant ?Defendant ) ( negative-support $?gen61 ) ( negative-overruled $?gen62 & : ( not ( subseq-pos ( create$ rule_cl41-overruled $?gen61 $$$ $?gen62 ) ) ) ) ( positive-defeated $?gen60 & : ( not ( member$ rule_cl41 $?gen60 ) ) ) ) ( test ( eq ( class ?gen58 ) commited_cl41 ) ) => ( calc ( bind $?gen63 ( create$ rule_cl41-overruled $?gen61 $?gen62 ) ) ) ?gen58 <- ( commited_cl41 ( negative-overruled $?gen63 ) )"))

([rule_cl41-support] of derived-attribute-rule
   (pos-name rule_cl41-support-gen551)
   (depends-on declare lc:case commited_cl41)
   (implies commited_cl41)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl41] ) ) ) ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ) ?gen58 <- ( commited_cl41 ( defendant ?Defendant ) ( positive-support $?gen60 & : ( not ( subseq-pos ( create$ rule_cl41 ?gen57 $$$ $?gen60 ) ) ) ) ) ( test ( eq ( class ?gen58 ) commited_cl41 ) ) => ( calc ( bind $?gen63 ( create$ rule_cl41 ?gen57 $?gen60 ) ) ) ?gen58 <- ( commited_cl41 ( positive-support $?gen63 ) )"))

([rule_cl35_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl35_st1-defeasibly-dot-gen553)
   (depends-on declare commited_cl35_st1 lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl35_st1] ) ) ) ?gen49 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl35_st1 $? ) ) ( test ( eq ( class ?gen49 ) commited_cl35_st1 ) ) ( not ( and ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_road_condition \"no\" ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen49 <- ( commited_cl35_st1 ( negative ~ 2 ) ( positive-overruled $?gen51 & : ( not ( member$ rule_cl35_st1 $?gen51 ) ) ) ) ) ) => ?gen49 <- ( commited_cl35_st1 ( positive 0 ) )"))

([rule_cl35_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_cl35_st1-defeasibly-gen555)
   (depends-on declare lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl35_st1] ) ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_road_condition \"no\" ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen49 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen51 & : ( not ( member$ rule_cl35_st1 $?gen51 ) ) ) ) ( test ( eq ( class ?gen49 ) commited_cl35_st1 ) ) => ?gen49 <- ( commited_cl35_st1 ( positive 1 ) ( positive-derivator rule_cl35_st1 ?gen56 ) )"))

([rule_cl35_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl35_st1-overruled-dot-gen557)
   (depends-on declare commited_cl35_st1 lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl35_st1] ) ) ) ?gen49 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( negative-support $?gen52 ) ( negative-overruled $?gen53 & : ( subseq-pos ( create$ rule_cl35_st1-overruled $?gen52 $$$ $?gen53 ) ) ) ) ( test ( eq ( class ?gen49 ) commited_cl35_st1 ) ) ( not ( and ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_road_condition \"no\" ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen49 <- ( commited_cl35_st1 ( positive-defeated $?gen51 & : ( not ( member$ rule_cl35_st1 $?gen51 ) ) ) ) ) ) => ( calc ( bind $?gen54 ( delete-member$ $?gen53 ( create$ rule_cl35_st1-overruled $?gen52 ) ) ) ) ?gen49 <- ( commited_cl35_st1 ( negative-overruled $?gen54 ) )"))

([rule_cl35_st1-overruled] of derived-attribute-rule
   (pos-name rule_cl35_st1-overruled-gen559)
   (depends-on declare lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl35_st1] ) ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_road_condition \"no\" ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen49 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( negative-support $?gen52 ) ( negative-overruled $?gen53 & : ( not ( subseq-pos ( create$ rule_cl35_st1-overruled $?gen52 $$$ $?gen53 ) ) ) ) ( positive-defeated $?gen51 & : ( not ( member$ rule_cl35_st1 $?gen51 ) ) ) ) ( test ( eq ( class ?gen49 ) commited_cl35_st1 ) ) => ( calc ( bind $?gen54 ( create$ rule_cl35_st1-overruled $?gen52 $?gen53 ) ) ) ?gen49 <- ( commited_cl35_st1 ( negative-overruled $?gen54 ) )"))

([rule_cl35_st1-support] of derived-attribute-rule
   (pos-name rule_cl35_st1-support-gen561)
   (depends-on declare lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl35_st1] ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_road_condition \"no\" ) ) ?gen49 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive-support $?gen51 & : ( not ( subseq-pos ( create$ rule_cl35_st1 ?gen48 $$$ $?gen51 ) ) ) ) ) ( test ( eq ( class ?gen49 ) commited_cl35_st1 ) ) => ( calc ( bind $?gen54 ( create$ rule_cl35_st1 ?gen48 $?gen51 ) ) ) ?gen49 <- ( commited_cl35_st1 ( positive-support $?gen54 ) )"))

([rule_cl29_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl29_st1-defeasibly-dot-gen563)
   (depends-on declare commited_cl29_st1 lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl29_st1] ) ) ) ?gen40 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl29_st1 $? ) ) ( test ( eq ( class ?gen40 ) commited_cl29_st1 ) ) ( not ( and ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( commited_cl29_st1 ( negative ~ 2 ) ( positive-overruled $?gen42 & : ( not ( member$ rule_cl29_st1 $?gen42 ) ) ) ) ) ) => ?gen40 <- ( commited_cl29_st1 ( positive 0 ) )"))

([rule_cl29_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_cl29_st1-defeasibly-gen565)
   (depends-on declare lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl29_st1] ) ) ) ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen42 & : ( not ( member$ rule_cl29_st1 $?gen42 ) ) ) ) ( test ( eq ( class ?gen40 ) commited_cl29_st1 ) ) => ?gen40 <- ( commited_cl29_st1 ( positive 1 ) ( positive-derivator rule_cl29_st1 ?gen47 ) )"))

([rule_cl29_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl29_st1-overruled-dot-gen567)
   (depends-on declare commited_cl29_st1 lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl29_st1] ) ) ) ?gen40 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( negative-support $?gen43 ) ( negative-overruled $?gen44 & : ( subseq-pos ( create$ rule_cl29_st1-overruled $?gen43 $$$ $?gen44 ) ) ) ) ( test ( eq ( class ?gen40 ) commited_cl29_st1 ) ) ( not ( and ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( commited_cl29_st1 ( positive-defeated $?gen42 & : ( not ( member$ rule_cl29_st1 $?gen42 ) ) ) ) ) ) => ( calc ( bind $?gen45 ( delete-member$ $?gen44 ( create$ rule_cl29_st1-overruled $?gen43 ) ) ) ) ?gen40 <- ( commited_cl29_st1 ( negative-overruled $?gen45 ) )"))

([rule_cl29_st1-overruled] of derived-attribute-rule
   (pos-name rule_cl29_st1-overruled-gen569)
   (depends-on declare lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl29_st1] ) ) ) ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( negative-support $?gen43 ) ( negative-overruled $?gen44 & : ( not ( subseq-pos ( create$ rule_cl29_st1-overruled $?gen43 $$$ $?gen44 ) ) ) ) ( positive-defeated $?gen42 & : ( not ( member$ rule_cl29_st1 $?gen42 ) ) ) ) ( test ( eq ( class ?gen40 ) commited_cl29_st1 ) ) => ( calc ( bind $?gen45 ( create$ rule_cl29_st1-overruled $?gen43 $?gen44 ) ) ) ?gen40 <- ( commited_cl29_st1 ( negative-overruled $?gen45 ) )"))

([rule_cl29_st1-support] of derived-attribute-rule
   (pos-name rule_cl29_st1-support-gen571)
   (depends-on declare lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl29_st1] ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ) ?gen40 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive-support $?gen42 & : ( not ( subseq-pos ( create$ rule_cl29_st1 ?gen39 $$$ $?gen42 ) ) ) ) ) ( test ( eq ( class ?gen40 ) commited_cl29_st1 ) ) => ( calc ( bind $?gen45 ( create$ rule_cl29_st1 ?gen39 $?gen42 ) ) ) ?gen40 <- ( commited_cl29_st1 ( positive-support $?gen45 ) )"))

([rule_cl27_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl27_st1-defeasibly-dot-gen573)
   (depends-on declare commited_cl27_st1 lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl27_st1] ) ) ) ?gen29 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl27_st1 $? ) ) ( test ( eq ( class ?gen29 ) commited_cl27_st1 ) ) ( not ( and ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_cl27_st1 ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule_cl27_st1 $?gen31 ) ) ) ) ) ) => ?gen29 <- ( commited_cl27_st1 ( positive 0 ) )"))

([rule_cl27_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_cl27_st1-defeasibly-gen575)
   (depends-on declare lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl27_st1] ) ) ) ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule_cl27_st1 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) commited_cl27_st1 ) ) => ?gen29 <- ( commited_cl27_st1 ( positive 1 ) ( positive-derivator rule_cl27_st1 ?gen36 ?gen38 ) )"))

([rule_cl27_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl27_st1-overruled-dot-gen577)
   (depends-on declare commited_cl27_st1 lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl27_st1] ) ) ) ?gen29 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( subseq-pos ( create$ rule_cl27_st1-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( test ( eq ( class ?gen29 ) commited_cl27_st1 ) ) ( not ( and ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_cl27_st1 ( positive-defeated $?gen31 & : ( not ( member$ rule_cl27_st1 $?gen31 ) ) ) ) ) ) => ( calc ( bind $?gen34 ( delete-member$ $?gen33 ( create$ rule_cl27_st1-overruled $?gen32 ) ) ) ) ?gen29 <- ( commited_cl27_st1 ( negative-overruled $?gen34 ) )"))

([rule_cl27_st1-overruled] of derived-attribute-rule
   (pos-name rule_cl27_st1-overruled-gen579)
   (depends-on declare lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl27_st1] ) ) ) ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( not ( subseq-pos ( create$ rule_cl27_st1-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( positive-defeated $?gen31 & : ( not ( member$ rule_cl27_st1 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) commited_cl27_st1 ) ) => ( calc ( bind $?gen34 ( create$ rule_cl27_st1-overruled $?gen32 $?gen33 ) ) ) ?gen29 <- ( commited_cl27_st1 ( negative-overruled $?gen34 ) )"))

([rule_cl27_st1-support] of derived-attribute-rule
   (pos-name rule_cl27_st1-support-gen581)
   (depends-on declare lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl27_st1] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ?gen29 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive-support $?gen31 & : ( not ( subseq-pos ( create$ rule_cl27_st1 ?gen27 ?gen28 $$$ $?gen31 ) ) ) ) ) ( test ( eq ( class ?gen29 ) commited_cl27_st1 ) ) => ( calc ( bind $?gen34 ( create$ rule_cl27_st1 ?gen27 ?gen28 $?gen31 ) ) ) ?gen29 <- ( commited_cl27_st1 ( positive-support $?gen34 ) )"))

([rule_cl26_st2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl26_st2-defeasibly-dot-gen583)
   (depends-on declare commited_cl26_st2 lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl26_st2] ) ) ) ?gen17 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl26_st2 $? ) ) ( test ( eq ( class ?gen17 ) commited_cl26_st2 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_cl26_st2 ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule_cl26_st2 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( commited_cl26_st2 ( positive 0 ) )"))

([rule_cl26_st2-defeasibly] of derived-attribute-rule
   (pos-name rule_cl26_st2-defeasibly-gen585)
   (depends-on declare lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl26_st2] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule_cl26_st2 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_cl26_st2 ) ) => ?gen17 <- ( commited_cl26_st2 ( positive 1 ) ( positive-derivator rule_cl26_st2 ?gen24 ?gen26 ) )"))

([rule_cl26_st2-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl26_st2-overruled-dot-gen587)
   (depends-on declare commited_cl26_st2 lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl26_st2] ) ) ) ?gen17 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule_cl26_st2-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_cl26_st2 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_cl26_st2 ( positive-defeated $?gen19 & : ( not ( member$ rule_cl26_st2 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule_cl26_st2-overruled $?gen20 ) ) ) ) ?gen17 <- ( commited_cl26_st2 ( negative-overruled $?gen22 ) )"))

([rule_cl26_st2-overruled] of derived-attribute-rule
   (pos-name rule_cl26_st2-overruled-gen589)
   (depends-on declare lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl26_st2] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule_cl26_st2-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule_cl26_st2 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_cl26_st2 ) ) => ( calc ( bind $?gen22 ( create$ rule_cl26_st2-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( commited_cl26_st2 ( negative-overruled $?gen22 ) )"))

([rule_cl26_st2-support] of derived-attribute-rule
   (pos-name rule_cl26_st2-support-gen591)
   (depends-on declare lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl26_st2] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ?gen17 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule_cl26_st2 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) commited_cl26_st2 ) ) => ( calc ( bind $?gen22 ( create$ rule_cl26_st2 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( commited_cl26_st2 ( positive-support $?gen22 ) )"))

([pen_cl348_st3_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl348_st3_max-deductive-gen312)
   (depends-on commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen276 <- ( commited_cl348_st3 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 4 ) ) ) => ( max_imprisonment ( value 4 ) )")
   (production-rule "( defrule pen_cl348_st3_max-deductive-gen312 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen276 ) ( is-a commited_cl348_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 4 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 4 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 4 ) ) ) ( make-instance ?oid of max_imprisonment ( value 4 ) ) )")
   (derived-class max_imprisonment))

([pen_cl348_st1_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl348_st1_max-deductive-gen311)
   (depends-on commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen267 <- ( commited_cl348_st1 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 8 ) ) ) => ( max_imprisonment ( value 8 ) )")
   (production-rule "( defrule pen_cl348_st1_max-deductive-gen311 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen267 ) ( is-a commited_cl348_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ( make-instance ?oid of max_imprisonment ( value 8 ) ) )")
   (derived-class max_imprisonment))

([pen_cl348_st1_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl348_st1_min-deductive-gen310)
   (depends-on commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen258 <- ( commited_cl348_st1 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen_cl348_st1_min-deductive-gen310 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen258 ) ( is-a commited_cl348_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pen_cl339_st3_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl339_st3_max-deductive-gen309)
   (depends-on commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen249 <- ( commited_cl339_st3 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1 ) ) ) => ( max_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen_cl339_st3_max-deductive-gen309 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen249 ) ( is-a commited_cl339_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1 ) ) )")
   (derived-class max_imprisonment))

([pen_cl339_st1_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl339_st1_max-deductive-gen308)
   (depends-on commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen240 <- ( commited_cl339_st1 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 3 ) ) ) => ( max_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen_cl339_st1_max-deductive-gen308 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen240 ) ( is-a commited_cl339_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ( make-instance ?oid of max_imprisonment ( value 3 ) ) )")
   (derived-class max_imprisonment))

([pen_cl97_st3_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl97_st3_max-deductive-gen307)
   (depends-on commited_cl97_st3 to_pay_max_97)
   (implies to_pay_max_97)
   (deductive-rule "?gen231 <- ( commited_cl97_st3 ( defendant ?Defendant ) ) ( not ( to_pay_max_97 ( value 250 ) ) ) => ( to_pay_max_97 ( value 250 ) )")
   (production-rule "( defrule pen_cl97_st3_max-deductive-gen307 ( declare ( salience ( calc-salience to_pay_max_97 ) ) ) ( run-deductive-rules ) ( object ( name ?gen231 ) ( is-a commited_cl97_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_97 ) ( value 250 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_97 250 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_97 250 ) ) ) ( make-instance ?oid of to_pay_max_97 ( value 250 ) ) )")
   (derived-class to_pay_max_97))

([pen_cl97_st3_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl97_st3_min-deductive-gen306)
   (depends-on commited_cl97_st3 to_pay_min_97)
   (implies to_pay_min_97)
   (deductive-rule "?gen222 <- ( commited_cl97_st3 ( defendant ?Defendant ) ) ( not ( to_pay_min_97 ( value 80 ) ) ) => ( to_pay_min_97 ( value 80 ) )")
   (production-rule "( defrule pen_cl97_st3_min-deductive-gen306 ( declare ( salience ( calc-salience to_pay_min_97 ) ) ) ( run-deductive-rules ) ( object ( name ?gen222 ) ( is-a commited_cl97_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_97 ) ( value 80 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_97 80 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_97 80 ) ) ) ( make-instance ?oid of to_pay_min_97 ( value 80 ) ) )")
   (derived-class to_pay_min_97))

([pen_cl44_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl44_max-deductive-gen305)
   (depends-on commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (deductive-rule "?gen213 <- ( commited_cl44 ( defendant ?Defendant ) ) ( not ( to_pay_max_44 ( value 250 ) ) ) => ( to_pay_max_44 ( value 250 ) )")
   (production-rule "( defrule pen_cl44_max-deductive-gen305 ( declare ( salience ( calc-salience to_pay_max_44 ) ) ) ( run-deductive-rules ) ( object ( name ?gen213 ) ( is-a commited_cl44 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_44 ) ( value 250 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_44 250 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_44 250 ) ) ) ( make-instance ?oid of to_pay_max_44 ( value 250 ) ) )")
   (derived-class to_pay_max_44))

([pen_cl44_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl44_min-deductive-gen304)
   (depends-on commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (deductive-rule "?gen204 <- ( commited_cl44 ( defendant ?Defendant ) ) ( not ( to_pay_min_44 ( value 80 ) ) ) => ( to_pay_min_44 ( value 80 ) )")
   (production-rule "( defrule pen_cl44_min-deductive-gen304 ( declare ( salience ( calc-salience to_pay_min_44 ) ) ) ( run-deductive-rules ) ( object ( name ?gen204 ) ( is-a commited_cl44 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_44 ) ( value 80 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_44 80 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_44 80 ) ) ) ( make-instance ?oid of to_pay_min_44 ( value 80 ) ) )")
   (derived-class to_pay_min_44))

([pen_cl35_st1_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl35_st1_max-deductive-gen303)
   (depends-on commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (deductive-rule "?gen195 <- ( commited_cl35_st1 ( defendant ?Defendant ) ) ( not ( to_pay_max_35 ( value 400 ) ) ) => ( to_pay_max_35 ( value 400 ) )")
   (production-rule "( defrule pen_cl35_st1_max-deductive-gen303 ( declare ( salience ( calc-salience to_pay_max_35 ) ) ) ( run-deductive-rules ) ( object ( name ?gen195 ) ( is-a commited_cl35_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_35 ) ( value 400 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_35 400 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_35 400 ) ) ) ( make-instance ?oid of to_pay_max_35 ( value 400 ) ) )")
   (derived-class to_pay_max_35))

([pen_cl35_st1_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl35_st1_min-deductive-gen302)
   (depends-on commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (deductive-rule "?gen186 <- ( commited_cl35_st1 ( defendant ?Defendant ) ) ( not ( to_pay_min_35 ( value 120 ) ) ) => ( to_pay_min_35 ( value 120 ) )")
   (production-rule "( defrule pen_cl35_st1_min-deductive-gen302 ( declare ( salience ( calc-salience to_pay_min_35 ) ) ) ( run-deductive-rules ) ( object ( name ?gen186 ) ( is-a commited_cl35_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_35 ) ( value 120 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_35 120 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_35 120 ) ) ) ( make-instance ?oid of to_pay_min_35 ( value 120 ) ) )")
   (derived-class to_pay_min_35))

([pen_cl29_st1_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl29_st1_max-deductive-gen301)
   (depends-on commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (deductive-rule "?gen177 <- ( commited_cl29_st1 ( defendant ?Defendant ) ) ( not ( to_pay_max_29 ( value 400 ) ) ) => ( to_pay_max_29 ( value 400 ) )")
   (production-rule "( defrule pen_cl29_st1_max-deductive-gen301 ( declare ( salience ( calc-salience to_pay_max_29 ) ) ) ( run-deductive-rules ) ( object ( name ?gen177 ) ( is-a commited_cl29_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_29 ) ( value 400 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_29 400 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_29 400 ) ) ) ( make-instance ?oid of to_pay_max_29 ( value 400 ) ) )")
   (derived-class to_pay_max_29))

([pen_cl29_st1_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl29_st1_min-deductive-gen300)
   (depends-on commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (deductive-rule "?gen168 <- ( commited_cl29_st1 ( defendant ?Defendant ) ) ( not ( to_pay_min_29 ( value 120 ) ) ) => ( to_pay_min_29 ( value 120 ) )")
   (production-rule "( defrule pen_cl29_st1_min-deductive-gen300 ( declare ( salience ( calc-salience to_pay_min_29 ) ) ) ( run-deductive-rules ) ( object ( name ?gen168 ) ( is-a commited_cl29_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_29 ) ( value 120 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_29 120 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_29 120 ) ) ) ( make-instance ?oid of to_pay_min_29 ( value 120 ) ) )")
   (derived-class to_pay_min_29))

([pen_cl27_st1_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl27_st1_max-deductive-gen299)
   (depends-on commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (deductive-rule "?gen159 <- ( commited_cl27_st1 ( defendant ?Defendant ) ) ( not ( to_pay_max_27 ( value 250 ) ) ) => ( to_pay_max_27 ( value 250 ) )")
   (production-rule "( defrule pen_cl27_st1_max-deductive-gen299 ( declare ( salience ( calc-salience to_pay_max_27 ) ) ) ( run-deductive-rules ) ( object ( name ?gen159 ) ( is-a commited_cl27_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_27 ) ( value 250 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_27 250 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_27 250 ) ) ) ( make-instance ?oid of to_pay_max_27 ( value 250 ) ) )")
   (derived-class to_pay_max_27))

([pen_cl27_st1_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl27_st1_min-deductive-gen298)
   (depends-on commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (deductive-rule "?gen150 <- ( commited_cl27_st1 ( defendant ?Defendant ) ) ( not ( to_pay_min_27 ( value 90 ) ) ) => ( to_pay_min_27 ( value 90 ) )")
   (production-rule "( defrule pen_cl27_st1_min-deductive-gen298 ( declare ( salience ( calc-salience to_pay_min_27 ) ) ) ( run-deductive-rules ) ( object ( name ?gen150 ) ( is-a commited_cl27_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_27 ) ( value 90 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_27 90 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_27 90 ) ) ) ( make-instance ?oid of to_pay_min_27 ( value 90 ) ) )")
   (derived-class to_pay_min_27))

([pen_cl26_st2_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl26_st2_max-deductive-gen297)
   (depends-on commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (deductive-rule "?gen141 <- ( commited_cl26_st2 ( defendant ?Defendant ) ) ( not ( to_pay_max_26 ( value 250 ) ) ) => ( to_pay_max_26 ( value 250 ) )")
   (production-rule "( defrule pen_cl26_st2_max-deductive-gen297 ( declare ( salience ( calc-salience to_pay_max_26 ) ) ) ( run-deductive-rules ) ( object ( name ?gen141 ) ( is-a commited_cl26_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_26 ) ( value 250 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_26 250 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_26 250 ) ) ) ( make-instance ?oid of to_pay_max_26 ( value 250 ) ) )")
   (derived-class to_pay_max_26))

([pen_cl26_st2_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl26_st2_min-deductive-gen296)
   (depends-on commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (deductive-rule "?gen132 <- ( commited_cl26_st2 ( defendant ?Defendant ) ) ( not ( to_pay_min_26 ( value 90 ) ) ) => ( to_pay_min_26 ( value 90 ) )")
   (production-rule "( defrule pen_cl26_st2_min-deductive-gen296 ( declare ( salience ( calc-salience to_pay_min_26 ) ) ) ( run-deductive-rules ) ( object ( name ?gen132 ) ( is-a commited_cl26_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_26 ) ( value 90 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_26 90 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_26 90 ) ) ) ( make-instance ?oid of to_pay_min_26 ( value 90 ) ) )")
   (derived-class to_pay_min_26))

([rule_cl348_st3_injury-deductive] of ntm-deductive-rule
   (pos-name rule_cl348_st3_injury-deductive-gen295)
   (depends-on lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (deductive-rule "?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ?gen121 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ( not ( commited_cl348_st3 ( defendant ?Defendant ) ) ) => ( commited_cl348_st3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl348_st3_injury-deductive-gen295 ( declare ( salience ( calc-salience commited_cl348_st3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen120 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ( object ( name ?gen121 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ( not ( object ( is-a commited_cl348_st3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl348_st3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl348_st3 ?Defendant ) ) ) ( make-instance ?oid of commited_cl348_st3 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl348_st3))

([rule_cl348_st1_injury-deductive] of ntm-deductive-rule
   (pos-name rule_cl348_st1_injury-deductive-gen294)
   (depends-on lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (deductive-rule "?gen108 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ?gen109 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ( not ( commited_cl348_st1 ( defendant ?Defendant ) ) ) => ( commited_cl348_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl348_st1_injury-deductive-gen294 ( declare ( salience ( calc-salience commited_cl348_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen108 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ( object ( name ?gen109 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ( not ( object ( is-a commited_cl348_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl348_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl348_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_cl348_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl348_st1))

([rule_cl339_st3_injury-deductive] of ntm-deductive-rule
   (pos-name rule_cl339_st3_injury-deductive-gen293)
   (depends-on lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (deductive-rule "?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ( not ( commited_cl339_st3 ( defendant ?Defendant ) ) ) => ( commited_cl339_st3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl339_st3_injury-deductive-gen293 ( declare ( salience ( calc-salience commited_cl339_st3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen96 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ( object ( name ?gen97 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ( not ( object ( is-a commited_cl339_st3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl339_st3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl339_st3 ?Defendant ) ) ) ( make-instance ?oid of commited_cl339_st3 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl339_st3))

([rule_cl339_st1_injury-deductive] of ntm-deductive-rule
   (pos-name rule_cl339_st1_injury-deductive-gen292)
   (depends-on lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (deductive-rule "?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ( not ( commited_cl339_st1 ( defendant ?Defendant ) ) ) => ( commited_cl339_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl339_st1_injury-deductive-gen292 ( declare ( salience ( calc-salience commited_cl339_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen84 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ( object ( name ?gen85 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ( not ( object ( is-a commited_cl339_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl339_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl339_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_cl339_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl339_st1))

([rule_cl97_st3-deductive] of ntm-deductive-rule
   (pos-name rule_cl97_st3-deductive-gen291)
   (depends-on lc:case commited_cl97_st3)
   (implies commited_cl97_st3)
   (deductive-rule "?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_crosswalk \"no\" ) ) ( not ( commited_cl97_st3 ( defendant ?Defendant ) ) ) => ( commited_cl97_st3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl97_st3-deductive-gen291 ( declare ( salience ( calc-salience commited_cl97_st3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen75 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_crosswalk \"no\" ) ) ( not ( object ( is-a commited_cl97_st3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl97_st3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl97_st3 ?Defendant ) ) ) ( make-instance ?oid of commited_cl97_st3 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl97_st3))

([rule_cl44-deductive] of ntm-deductive-rule
   (pos-name rule_cl44-deductive-gen290)
   (depends-on lc:case commited_cl44)
   (implies commited_cl44)
   (deductive-rule "?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ) ( not ( commited_cl44 ( defendant ?Defendant ) ) ) => ( commited_cl44 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl44-deductive-gen290 ( declare ( salience ( calc-salience commited_cl44 ) ) ) ( run-deductive-rules ) ( object ( name ?gen66 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ) ( not ( object ( is-a commited_cl44 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl44 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl44 ?Defendant ) ) ) ( make-instance ?oid of commited_cl44 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl44))

([rule_cl41-deductive] of ntm-deductive-rule
   (pos-name rule_cl41-deductive-gen289)
   (depends-on lc:case commited_cl41)
   (implies commited_cl41)
   (deductive-rule "?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ) ( not ( commited_cl41 ( defendant ?Defendant ) ) ) => ( commited_cl41 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl41-deductive-gen289 ( declare ( salience ( calc-salience commited_cl41 ) ) ) ( run-deductive-rules ) ( object ( name ?gen57 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ) ( not ( object ( is-a commited_cl41 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl41 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl41 ?Defendant ) ) ) ( make-instance ?oid of commited_cl41 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl41))

([rule_cl35_st1-deductive] of ntm-deductive-rule
   (pos-name rule_cl35_st1-deductive-gen288)
   (depends-on lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (deductive-rule "?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_road_condition \"no\" ) ) ( not ( commited_cl35_st1 ( defendant ?Defendant ) ) ) => ( commited_cl35_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl35_st1-deductive-gen288 ( declare ( salience ( calc-salience commited_cl35_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen48 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed_according_to_road_condition \"no\" ) ) ( not ( object ( is-a commited_cl35_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl35_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl35_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_cl35_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl35_st1))

([rule_cl29_st1-deductive] of ntm-deductive-rule
   (pos-name rule_cl29_st1-deductive-gen287)
   (depends-on lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (deductive-rule "?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ) ( not ( commited_cl29_st1 ( defendant ?Defendant ) ) ) => ( commited_cl29_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl29_st1-deductive-gen287 ( declare ( salience ( calc-salience commited_cl29_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen39 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ) ( not ( object ( is-a commited_cl29_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl29_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl29_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_cl29_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl29_st1))

([rule_cl27_st1-deductive] of ntm-deductive-rule
   (pos-name rule_cl27_st1-deductive-gen286)
   (depends-on lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (deductive-rule "?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ( not ( commited_cl27_st1 ( defendant ?Defendant ) ) ) => ( commited_cl27_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl27_st1-deductive-gen286 ( declare ( salience ( calc-salience commited_cl27_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ( not ( object ( is-a commited_cl27_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl27_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl27_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_cl27_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl27_st1))

([rule_cl26_st2-deductive] of ntm-deductive-rule
   (pos-name rule_cl26_st2-deductive-gen285)
   (depends-on lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ( not ( commited_cl26_st2 ( defendant ?Defendant ) ) ) => ( commited_cl26_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl26_st2-deductive-gen285 ( declare ( salience ( calc-salience commited_cl26_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ( not ( object ( is-a commited_cl26_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl26_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl26_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_cl26_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl26_st2))

