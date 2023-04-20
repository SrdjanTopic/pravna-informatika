([pen_cl348_st3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl348_st3_max-defeasibly-dot-gen286)
   (depends-on declare max_imprisonment commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl348_st3_max] ) ) ) ?gen253 <- ( max_imprisonment ( value 4 ) ( positive 1 ) ( positive-derivator pen_cl348_st3_max $? ) ) ( test ( eq ( class ?gen253 ) max_imprisonment ) ) ( not ( and ?gen260 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive ?gen259 & : ( >= ?gen259 1 ) ) ) ?gen253 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen255 & : ( not ( member$ pen_cl348_st3_max $?gen255 ) ) ) ) ) ) => ?gen253 <- ( max_imprisonment ( positive 0 ) )"))

([pen_cl348_st3_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl348_st3_max-defeasibly-gen288)
   (depends-on declare commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl348_st3_max] ) ) ) ?gen260 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive ?gen259 & : ( >= ?gen259 1 ) ) ) ?gen253 <- ( max_imprisonment ( value 4 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen255 & : ( not ( member$ pen_cl348_st3_max $?gen255 ) ) ) ) ( test ( eq ( class ?gen253 ) max_imprisonment ) ) => ?gen253 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen_cl348_st3_max ?gen260 ) )"))

([pen_cl348_st3_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl348_st3_max-overruled-dot-gen290)
   (depends-on declare max_imprisonment commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl348_st3_max] ) ) ) ?gen253 <- ( max_imprisonment ( value 4 ) ( negative-support $?gen256 ) ( negative-overruled $?gen257 & : ( subseq-pos ( create$ pen_cl348_st3_max-overruled $?gen256 $$$ $?gen257 ) ) ) ) ( test ( eq ( class ?gen253 ) max_imprisonment ) ) ( not ( and ?gen260 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive ?gen259 & : ( >= ?gen259 1 ) ) ) ?gen253 <- ( max_imprisonment ( positive-defeated $?gen255 & : ( not ( member$ pen_cl348_st3_max $?gen255 ) ) ) ) ) ) => ( calc ( bind $?gen258 ( delete-member$ $?gen257 ( create$ pen_cl348_st3_max-overruled $?gen256 ) ) ) ) ?gen253 <- ( max_imprisonment ( negative-overruled $?gen258 ) )"))

([pen_cl348_st3_max-overruled] of derived-attribute-rule
   (pos-name pen_cl348_st3_max-overruled-gen292)
   (depends-on declare commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl348_st3_max] ) ) ) ?gen260 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive ?gen259 & : ( >= ?gen259 1 ) ) ) ?gen253 <- ( max_imprisonment ( value 4 ) ( negative-support $?gen256 ) ( negative-overruled $?gen257 & : ( not ( subseq-pos ( create$ pen_cl348_st3_max-overruled $?gen256 $$$ $?gen257 ) ) ) ) ( positive-defeated $?gen255 & : ( not ( member$ pen_cl348_st3_max $?gen255 ) ) ) ) ( test ( eq ( class ?gen253 ) max_imprisonment ) ) => ( calc ( bind $?gen258 ( create$ pen_cl348_st3_max-overruled $?gen256 $?gen257 ) ) ) ?gen253 <- ( max_imprisonment ( negative-overruled $?gen258 ) )"))

([pen_cl348_st3_max-support] of derived-attribute-rule
   (pos-name pen_cl348_st3_max-support-gen294)
   (depends-on declare commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl348_st3_max] ) ) ) ?gen252 <- ( commited_cl348_st3 ( defendant ?Defendant ) ) ?gen253 <- ( max_imprisonment ( value 4 ) ( positive-support $?gen255 & : ( not ( subseq-pos ( create$ pen_cl348_st3_max ?gen252 $$$ $?gen255 ) ) ) ) ) ( test ( eq ( class ?gen253 ) max_imprisonment ) ) => ( calc ( bind $?gen258 ( create$ pen_cl348_st3_max ?gen252 $?gen255 ) ) ) ?gen253 <- ( max_imprisonment ( positive-support $?gen258 ) )"))

([pen_cl348_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl348_st1_max-defeasibly-dot-gen296)
   (depends-on declare max_imprisonment commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl348_st1_max] ) ) ) ?gen244 <- ( max_imprisonment ( value 8 ) ( positive 1 ) ( positive-derivator pen_cl348_st1_max $? ) ) ( test ( eq ( class ?gen244 ) max_imprisonment ) ) ( not ( and ?gen251 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen246 & : ( not ( member$ pen_cl348_st1_max $?gen246 ) ) ) ) ) ) => ?gen244 <- ( max_imprisonment ( positive 0 ) )"))

([pen_cl348_st1_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl348_st1_max-defeasibly-gen298)
   (depends-on declare commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl348_st1_max] ) ) ) ?gen251 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( max_imprisonment ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen246 & : ( not ( member$ pen_cl348_st1_max $?gen246 ) ) ) ) ( test ( eq ( class ?gen244 ) max_imprisonment ) ) => ?gen244 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen_cl348_st1_max ?gen251 ) )"))

([pen_cl348_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl348_st1_max-overruled-dot-gen300)
   (depends-on declare max_imprisonment commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl348_st1_max] ) ) ) ?gen244 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen247 ) ( negative-overruled $?gen248 & : ( subseq-pos ( create$ pen_cl348_st1_max-overruled $?gen247 $$$ $?gen248 ) ) ) ) ( test ( eq ( class ?gen244 ) max_imprisonment ) ) ( not ( and ?gen251 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( max_imprisonment ( positive-defeated $?gen246 & : ( not ( member$ pen_cl348_st1_max $?gen246 ) ) ) ) ) ) => ( calc ( bind $?gen249 ( delete-member$ $?gen248 ( create$ pen_cl348_st1_max-overruled $?gen247 ) ) ) ) ?gen244 <- ( max_imprisonment ( negative-overruled $?gen249 ) )"))

([pen_cl348_st1_max-overruled] of derived-attribute-rule
   (pos-name pen_cl348_st1_max-overruled-gen302)
   (depends-on declare commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl348_st1_max] ) ) ) ?gen251 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen247 ) ( negative-overruled $?gen248 & : ( not ( subseq-pos ( create$ pen_cl348_st1_max-overruled $?gen247 $$$ $?gen248 ) ) ) ) ( positive-defeated $?gen246 & : ( not ( member$ pen_cl348_st1_max $?gen246 ) ) ) ) ( test ( eq ( class ?gen244 ) max_imprisonment ) ) => ( calc ( bind $?gen249 ( create$ pen_cl348_st1_max-overruled $?gen247 $?gen248 ) ) ) ?gen244 <- ( max_imprisonment ( negative-overruled $?gen249 ) )"))

([pen_cl348_st1_max-support] of derived-attribute-rule
   (pos-name pen_cl348_st1_max-support-gen304)
   (depends-on declare commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl348_st1_max] ) ) ) ?gen243 <- ( commited_cl348_st1 ( defendant ?Defendant ) ) ?gen244 <- ( max_imprisonment ( value 8 ) ( positive-support $?gen246 & : ( not ( subseq-pos ( create$ pen_cl348_st1_max ?gen243 $$$ $?gen246 ) ) ) ) ) ( test ( eq ( class ?gen244 ) max_imprisonment ) ) => ( calc ( bind $?gen249 ( create$ pen_cl348_st1_max ?gen243 $?gen246 ) ) ) ?gen244 <- ( max_imprisonment ( positive-support $?gen249 ) )"))

([pen_cl348_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl348_st1_min-defeasibly-dot-gen306)
   (depends-on declare min_imprisonment commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl348_st1_min] ) ) ) ?gen235 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen_cl348_st1_min $? ) ) ( test ( eq ( class ?gen235 ) min_imprisonment ) ) ( not ( and ?gen242 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen237 & : ( not ( member$ pen_cl348_st1_min $?gen237 ) ) ) ) ) ) => ?gen235 <- ( min_imprisonment ( positive 0 ) )"))

([pen_cl348_st1_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl348_st1_min-defeasibly-gen308)
   (depends-on declare commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl348_st1_min] ) ) ) ?gen242 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen237 & : ( not ( member$ pen_cl348_st1_min $?gen237 ) ) ) ) ( test ( eq ( class ?gen235 ) min_imprisonment ) ) => ?gen235 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen_cl348_st1_min ?gen242 ) )"))

([pen_cl348_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl348_st1_min-overruled-dot-gen310)
   (depends-on declare min_imprisonment commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl348_st1_min] ) ) ) ?gen235 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen238 ) ( negative-overruled $?gen239 & : ( subseq-pos ( create$ pen_cl348_st1_min-overruled $?gen238 $$$ $?gen239 ) ) ) ) ( test ( eq ( class ?gen235 ) min_imprisonment ) ) ( not ( and ?gen242 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( min_imprisonment ( positive-defeated $?gen237 & : ( not ( member$ pen_cl348_st1_min $?gen237 ) ) ) ) ) ) => ( calc ( bind $?gen240 ( delete-member$ $?gen239 ( create$ pen_cl348_st1_min-overruled $?gen238 ) ) ) ) ?gen235 <- ( min_imprisonment ( negative-overruled $?gen240 ) )"))

([pen_cl348_st1_min-overruled] of derived-attribute-rule
   (pos-name pen_cl348_st1_min-overruled-gen312)
   (depends-on declare commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl348_st1_min] ) ) ) ?gen242 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen238 ) ( negative-overruled $?gen239 & : ( not ( subseq-pos ( create$ pen_cl348_st1_min-overruled $?gen238 $$$ $?gen239 ) ) ) ) ( positive-defeated $?gen237 & : ( not ( member$ pen_cl348_st1_min $?gen237 ) ) ) ) ( test ( eq ( class ?gen235 ) min_imprisonment ) ) => ( calc ( bind $?gen240 ( create$ pen_cl348_st1_min-overruled $?gen238 $?gen239 ) ) ) ?gen235 <- ( min_imprisonment ( negative-overruled $?gen240 ) )"))

([pen_cl348_st1_min-support] of derived-attribute-rule
   (pos-name pen_cl348_st1_min-support-gen314)
   (depends-on declare commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl348_st1_min] ) ) ) ?gen234 <- ( commited_cl348_st1 ( defendant ?Defendant ) ) ?gen235 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen237 & : ( not ( subseq-pos ( create$ pen_cl348_st1_min ?gen234 $$$ $?gen237 ) ) ) ) ) ( test ( eq ( class ?gen235 ) min_imprisonment ) ) => ( calc ( bind $?gen240 ( create$ pen_cl348_st1_min ?gen234 $?gen237 ) ) ) ?gen235 <- ( min_imprisonment ( positive-support $?gen240 ) )"))

([pen_cl339_st3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl339_st3_max-defeasibly-dot-gen316)
   (depends-on declare max_imprisonment commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl339_st3_max] ) ) ) ?gen226 <- ( max_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pen_cl339_st3_max $? ) ) ( test ( eq ( class ?gen226 ) max_imprisonment ) ) ( not ( and ?gen233 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen228 & : ( not ( member$ pen_cl339_st3_max $?gen228 ) ) ) ) ) ) => ?gen226 <- ( max_imprisonment ( positive 0 ) )"))

([pen_cl339_st3_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl339_st3_max-defeasibly-gen318)
   (depends-on declare commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl339_st3_max] ) ) ) ?gen233 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( max_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen228 & : ( not ( member$ pen_cl339_st3_max $?gen228 ) ) ) ) ( test ( eq ( class ?gen226 ) max_imprisonment ) ) => ?gen226 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen_cl339_st3_max ?gen233 ) )"))

([pen_cl339_st3_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl339_st3_max-overruled-dot-gen320)
   (depends-on declare max_imprisonment commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl339_st3_max] ) ) ) ?gen226 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen229 ) ( negative-overruled $?gen230 & : ( subseq-pos ( create$ pen_cl339_st3_max-overruled $?gen229 $$$ $?gen230 ) ) ) ) ( test ( eq ( class ?gen226 ) max_imprisonment ) ) ( not ( and ?gen233 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( max_imprisonment ( positive-defeated $?gen228 & : ( not ( member$ pen_cl339_st3_max $?gen228 ) ) ) ) ) ) => ( calc ( bind $?gen231 ( delete-member$ $?gen230 ( create$ pen_cl339_st3_max-overruled $?gen229 ) ) ) ) ?gen226 <- ( max_imprisonment ( negative-overruled $?gen231 ) )"))

([pen_cl339_st3_max-overruled] of derived-attribute-rule
   (pos-name pen_cl339_st3_max-overruled-gen322)
   (depends-on declare commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl339_st3_max] ) ) ) ?gen233 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen229 ) ( negative-overruled $?gen230 & : ( not ( subseq-pos ( create$ pen_cl339_st3_max-overruled $?gen229 $$$ $?gen230 ) ) ) ) ( positive-defeated $?gen228 & : ( not ( member$ pen_cl339_st3_max $?gen228 ) ) ) ) ( test ( eq ( class ?gen226 ) max_imprisonment ) ) => ( calc ( bind $?gen231 ( create$ pen_cl339_st3_max-overruled $?gen229 $?gen230 ) ) ) ?gen226 <- ( max_imprisonment ( negative-overruled $?gen231 ) )"))

([pen_cl339_st3_max-support] of derived-attribute-rule
   (pos-name pen_cl339_st3_max-support-gen324)
   (depends-on declare commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl339_st3_max] ) ) ) ?gen225 <- ( commited_cl339_st3 ( defendant ?Defendant ) ) ?gen226 <- ( max_imprisonment ( value 1 ) ( positive-support $?gen228 & : ( not ( subseq-pos ( create$ pen_cl339_st3_max ?gen225 $$$ $?gen228 ) ) ) ) ) ( test ( eq ( class ?gen226 ) max_imprisonment ) ) => ( calc ( bind $?gen231 ( create$ pen_cl339_st3_max ?gen225 $?gen228 ) ) ) ?gen226 <- ( max_imprisonment ( positive-support $?gen231 ) )"))

([pen_cl339_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl339_st1_max-defeasibly-dot-gen326)
   (depends-on declare max_imprisonment commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl339_st1_max] ) ) ) ?gen217 <- ( max_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pen_cl339_st1_max $? ) ) ( test ( eq ( class ?gen217 ) max_imprisonment ) ) ( not ( and ?gen224 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen219 & : ( not ( member$ pen_cl339_st1_max $?gen219 ) ) ) ) ) ) => ?gen217 <- ( max_imprisonment ( positive 0 ) )"))

([pen_cl339_st1_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl339_st1_max-defeasibly-gen328)
   (depends-on declare commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl339_st1_max] ) ) ) ?gen224 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( max_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen219 & : ( not ( member$ pen_cl339_st1_max $?gen219 ) ) ) ) ( test ( eq ( class ?gen217 ) max_imprisonment ) ) => ?gen217 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen_cl339_st1_max ?gen224 ) )"))

([pen_cl339_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl339_st1_max-overruled-dot-gen330)
   (depends-on declare max_imprisonment commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl339_st1_max] ) ) ) ?gen217 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen220 ) ( negative-overruled $?gen221 & : ( subseq-pos ( create$ pen_cl339_st1_max-overruled $?gen220 $$$ $?gen221 ) ) ) ) ( test ( eq ( class ?gen217 ) max_imprisonment ) ) ( not ( and ?gen224 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( max_imprisonment ( positive-defeated $?gen219 & : ( not ( member$ pen_cl339_st1_max $?gen219 ) ) ) ) ) ) => ( calc ( bind $?gen222 ( delete-member$ $?gen221 ( create$ pen_cl339_st1_max-overruled $?gen220 ) ) ) ) ?gen217 <- ( max_imprisonment ( negative-overruled $?gen222 ) )"))

([pen_cl339_st1_max-overruled] of derived-attribute-rule
   (pos-name pen_cl339_st1_max-overruled-gen332)
   (depends-on declare commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl339_st1_max] ) ) ) ?gen224 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen220 ) ( negative-overruled $?gen221 & : ( not ( subseq-pos ( create$ pen_cl339_st1_max-overruled $?gen220 $$$ $?gen221 ) ) ) ) ( positive-defeated $?gen219 & : ( not ( member$ pen_cl339_st1_max $?gen219 ) ) ) ) ( test ( eq ( class ?gen217 ) max_imprisonment ) ) => ( calc ( bind $?gen222 ( create$ pen_cl339_st1_max-overruled $?gen220 $?gen221 ) ) ) ?gen217 <- ( max_imprisonment ( negative-overruled $?gen222 ) )"))

([pen_cl339_st1_max-support] of derived-attribute-rule
   (pos-name pen_cl339_st1_max-support-gen334)
   (depends-on declare commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl339_st1_max] ) ) ) ?gen216 <- ( commited_cl339_st1 ( defendant ?Defendant ) ) ?gen217 <- ( max_imprisonment ( value 3 ) ( positive-support $?gen219 & : ( not ( subseq-pos ( create$ pen_cl339_st1_max ?gen216 $$$ $?gen219 ) ) ) ) ) ( test ( eq ( class ?gen217 ) max_imprisonment ) ) => ( calc ( bind $?gen222 ( create$ pen_cl339_st1_max ?gen216 $?gen219 ) ) ) ?gen217 <- ( max_imprisonment ( positive-support $?gen222 ) )"))

([pen_cl44_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl44_max-defeasibly-dot-gen336)
   (depends-on declare to_pay_max_44 commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl44_max] ) ) ) ?gen208 <- ( to_pay_max_44 ( value 250 ) ( positive 1 ) ( positive-derivator pen_cl44_max $? ) ) ( test ( eq ( class ?gen208 ) to_pay_max_44 ) ) ( not ( and ?gen215 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( to_pay_max_44 ( negative ~ 2 ) ( positive-overruled $?gen210 & : ( not ( member$ pen_cl44_max $?gen210 ) ) ) ) ) ) => ?gen208 <- ( to_pay_max_44 ( positive 0 ) )"))

([pen_cl44_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl44_max-defeasibly-gen338)
   (depends-on declare commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl44_max] ) ) ) ?gen215 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( to_pay_max_44 ( value 250 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen210 & : ( not ( member$ pen_cl44_max $?gen210 ) ) ) ) ( test ( eq ( class ?gen208 ) to_pay_max_44 ) ) => ?gen208 <- ( to_pay_max_44 ( positive 1 ) ( positive-derivator pen_cl44_max ?gen215 ) )"))

([pen_cl44_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl44_max-overruled-dot-gen340)
   (depends-on declare to_pay_max_44 commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl44_max] ) ) ) ?gen208 <- ( to_pay_max_44 ( value 250 ) ( negative-support $?gen211 ) ( negative-overruled $?gen212 & : ( subseq-pos ( create$ pen_cl44_max-overruled $?gen211 $$$ $?gen212 ) ) ) ) ( test ( eq ( class ?gen208 ) to_pay_max_44 ) ) ( not ( and ?gen215 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( to_pay_max_44 ( positive-defeated $?gen210 & : ( not ( member$ pen_cl44_max $?gen210 ) ) ) ) ) ) => ( calc ( bind $?gen213 ( delete-member$ $?gen212 ( create$ pen_cl44_max-overruled $?gen211 ) ) ) ) ?gen208 <- ( to_pay_max_44 ( negative-overruled $?gen213 ) )"))

([pen_cl44_max-overruled] of derived-attribute-rule
   (pos-name pen_cl44_max-overruled-gen342)
   (depends-on declare commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl44_max] ) ) ) ?gen215 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( to_pay_max_44 ( value 250 ) ( negative-support $?gen211 ) ( negative-overruled $?gen212 & : ( not ( subseq-pos ( create$ pen_cl44_max-overruled $?gen211 $$$ $?gen212 ) ) ) ) ( positive-defeated $?gen210 & : ( not ( member$ pen_cl44_max $?gen210 ) ) ) ) ( test ( eq ( class ?gen208 ) to_pay_max_44 ) ) => ( calc ( bind $?gen213 ( create$ pen_cl44_max-overruled $?gen211 $?gen212 ) ) ) ?gen208 <- ( to_pay_max_44 ( negative-overruled $?gen213 ) )"))

([pen_cl44_max-support] of derived-attribute-rule
   (pos-name pen_cl44_max-support-gen344)
   (depends-on declare commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl44_max] ) ) ) ?gen207 <- ( commited_cl44 ( defendant ?Defendant ) ) ?gen208 <- ( to_pay_max_44 ( value 250 ) ( positive-support $?gen210 & : ( not ( subseq-pos ( create$ pen_cl44_max ?gen207 $$$ $?gen210 ) ) ) ) ) ( test ( eq ( class ?gen208 ) to_pay_max_44 ) ) => ( calc ( bind $?gen213 ( create$ pen_cl44_max ?gen207 $?gen210 ) ) ) ?gen208 <- ( to_pay_max_44 ( positive-support $?gen213 ) )"))

([pen_cl44_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl44_min-defeasibly-dot-gen346)
   (depends-on declare to_pay_min_44 commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl44_min] ) ) ) ?gen199 <- ( to_pay_min_44 ( value 80 ) ( positive 1 ) ( positive-derivator pen_cl44_min $? ) ) ( test ( eq ( class ?gen199 ) to_pay_min_44 ) ) ( not ( and ?gen206 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( to_pay_min_44 ( negative ~ 2 ) ( positive-overruled $?gen201 & : ( not ( member$ pen_cl44_min $?gen201 ) ) ) ) ) ) => ?gen199 <- ( to_pay_min_44 ( positive 0 ) )"))

([pen_cl44_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl44_min-defeasibly-gen348)
   (depends-on declare commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl44_min] ) ) ) ?gen206 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( to_pay_min_44 ( value 80 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen201 & : ( not ( member$ pen_cl44_min $?gen201 ) ) ) ) ( test ( eq ( class ?gen199 ) to_pay_min_44 ) ) => ?gen199 <- ( to_pay_min_44 ( positive 1 ) ( positive-derivator pen_cl44_min ?gen206 ) )"))

([pen_cl44_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl44_min-overruled-dot-gen350)
   (depends-on declare to_pay_min_44 commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl44_min] ) ) ) ?gen199 <- ( to_pay_min_44 ( value 80 ) ( negative-support $?gen202 ) ( negative-overruled $?gen203 & : ( subseq-pos ( create$ pen_cl44_min-overruled $?gen202 $$$ $?gen203 ) ) ) ) ( test ( eq ( class ?gen199 ) to_pay_min_44 ) ) ( not ( and ?gen206 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( to_pay_min_44 ( positive-defeated $?gen201 & : ( not ( member$ pen_cl44_min $?gen201 ) ) ) ) ) ) => ( calc ( bind $?gen204 ( delete-member$ $?gen203 ( create$ pen_cl44_min-overruled $?gen202 ) ) ) ) ?gen199 <- ( to_pay_min_44 ( negative-overruled $?gen204 ) )"))

([pen_cl44_min-overruled] of derived-attribute-rule
   (pos-name pen_cl44_min-overruled-gen352)
   (depends-on declare commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl44_min] ) ) ) ?gen206 <- ( commited_cl44 ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( to_pay_min_44 ( value 80 ) ( negative-support $?gen202 ) ( negative-overruled $?gen203 & : ( not ( subseq-pos ( create$ pen_cl44_min-overruled $?gen202 $$$ $?gen203 ) ) ) ) ( positive-defeated $?gen201 & : ( not ( member$ pen_cl44_min $?gen201 ) ) ) ) ( test ( eq ( class ?gen199 ) to_pay_min_44 ) ) => ( calc ( bind $?gen204 ( create$ pen_cl44_min-overruled $?gen202 $?gen203 ) ) ) ?gen199 <- ( to_pay_min_44 ( negative-overruled $?gen204 ) )"))

([pen_cl44_min-support] of derived-attribute-rule
   (pos-name pen_cl44_min-support-gen354)
   (depends-on declare commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl44_min] ) ) ) ?gen198 <- ( commited_cl44 ( defendant ?Defendant ) ) ?gen199 <- ( to_pay_min_44 ( value 80 ) ( positive-support $?gen201 & : ( not ( subseq-pos ( create$ pen_cl44_min ?gen198 $$$ $?gen201 ) ) ) ) ) ( test ( eq ( class ?gen199 ) to_pay_min_44 ) ) => ( calc ( bind $?gen204 ( create$ pen_cl44_min ?gen198 $?gen201 ) ) ) ?gen199 <- ( to_pay_min_44 ( positive-support $?gen204 ) )"))

([pen_cl35_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl35_st1_max-defeasibly-dot-gen356)
   (depends-on declare to_pay_max_35 commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl35_st1_max] ) ) ) ?gen190 <- ( to_pay_max_35 ( value 400 ) ( positive 1 ) ( positive-derivator pen_cl35_st1_max $? ) ) ( test ( eq ( class ?gen190 ) to_pay_max_35 ) ) ( not ( and ?gen197 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( to_pay_max_35 ( negative ~ 2 ) ( positive-overruled $?gen192 & : ( not ( member$ pen_cl35_st1_max $?gen192 ) ) ) ) ) ) => ?gen190 <- ( to_pay_max_35 ( positive 0 ) )"))

([pen_cl35_st1_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl35_st1_max-defeasibly-gen358)
   (depends-on declare commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl35_st1_max] ) ) ) ?gen197 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( to_pay_max_35 ( value 400 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen192 & : ( not ( member$ pen_cl35_st1_max $?gen192 ) ) ) ) ( test ( eq ( class ?gen190 ) to_pay_max_35 ) ) => ?gen190 <- ( to_pay_max_35 ( positive 1 ) ( positive-derivator pen_cl35_st1_max ?gen197 ) )"))

([pen_cl35_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl35_st1_max-overruled-dot-gen360)
   (depends-on declare to_pay_max_35 commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl35_st1_max] ) ) ) ?gen190 <- ( to_pay_max_35 ( value 400 ) ( negative-support $?gen193 ) ( negative-overruled $?gen194 & : ( subseq-pos ( create$ pen_cl35_st1_max-overruled $?gen193 $$$ $?gen194 ) ) ) ) ( test ( eq ( class ?gen190 ) to_pay_max_35 ) ) ( not ( and ?gen197 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( to_pay_max_35 ( positive-defeated $?gen192 & : ( not ( member$ pen_cl35_st1_max $?gen192 ) ) ) ) ) ) => ( calc ( bind $?gen195 ( delete-member$ $?gen194 ( create$ pen_cl35_st1_max-overruled $?gen193 ) ) ) ) ?gen190 <- ( to_pay_max_35 ( negative-overruled $?gen195 ) )"))

([pen_cl35_st1_max-overruled] of derived-attribute-rule
   (pos-name pen_cl35_st1_max-overruled-gen362)
   (depends-on declare commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl35_st1_max] ) ) ) ?gen197 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( to_pay_max_35 ( value 400 ) ( negative-support $?gen193 ) ( negative-overruled $?gen194 & : ( not ( subseq-pos ( create$ pen_cl35_st1_max-overruled $?gen193 $$$ $?gen194 ) ) ) ) ( positive-defeated $?gen192 & : ( not ( member$ pen_cl35_st1_max $?gen192 ) ) ) ) ( test ( eq ( class ?gen190 ) to_pay_max_35 ) ) => ( calc ( bind $?gen195 ( create$ pen_cl35_st1_max-overruled $?gen193 $?gen194 ) ) ) ?gen190 <- ( to_pay_max_35 ( negative-overruled $?gen195 ) )"))

([pen_cl35_st1_max-support] of derived-attribute-rule
   (pos-name pen_cl35_st1_max-support-gen364)
   (depends-on declare commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl35_st1_max] ) ) ) ?gen189 <- ( commited_cl35_st1 ( defendant ?Defendant ) ) ?gen190 <- ( to_pay_max_35 ( value 400 ) ( positive-support $?gen192 & : ( not ( subseq-pos ( create$ pen_cl35_st1_max ?gen189 $$$ $?gen192 ) ) ) ) ) ( test ( eq ( class ?gen190 ) to_pay_max_35 ) ) => ( calc ( bind $?gen195 ( create$ pen_cl35_st1_max ?gen189 $?gen192 ) ) ) ?gen190 <- ( to_pay_max_35 ( positive-support $?gen195 ) )"))

([pen_cl35_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl35_st1_min-defeasibly-dot-gen366)
   (depends-on declare to_pay_min_35 commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl35_st1_min] ) ) ) ?gen181 <- ( to_pay_min_35 ( value 120 ) ( positive 1 ) ( positive-derivator pen_cl35_st1_min $? ) ) ( test ( eq ( class ?gen181 ) to_pay_min_35 ) ) ( not ( and ?gen188 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( to_pay_min_35 ( negative ~ 2 ) ( positive-overruled $?gen183 & : ( not ( member$ pen_cl35_st1_min $?gen183 ) ) ) ) ) ) => ?gen181 <- ( to_pay_min_35 ( positive 0 ) )"))

([pen_cl35_st1_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl35_st1_min-defeasibly-gen368)
   (depends-on declare commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl35_st1_min] ) ) ) ?gen188 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( to_pay_min_35 ( value 120 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen183 & : ( not ( member$ pen_cl35_st1_min $?gen183 ) ) ) ) ( test ( eq ( class ?gen181 ) to_pay_min_35 ) ) => ?gen181 <- ( to_pay_min_35 ( positive 1 ) ( positive-derivator pen_cl35_st1_min ?gen188 ) )"))

([pen_cl35_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl35_st1_min-overruled-dot-gen370)
   (depends-on declare to_pay_min_35 commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl35_st1_min] ) ) ) ?gen181 <- ( to_pay_min_35 ( value 120 ) ( negative-support $?gen184 ) ( negative-overruled $?gen185 & : ( subseq-pos ( create$ pen_cl35_st1_min-overruled $?gen184 $$$ $?gen185 ) ) ) ) ( test ( eq ( class ?gen181 ) to_pay_min_35 ) ) ( not ( and ?gen188 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( to_pay_min_35 ( positive-defeated $?gen183 & : ( not ( member$ pen_cl35_st1_min $?gen183 ) ) ) ) ) ) => ( calc ( bind $?gen186 ( delete-member$ $?gen185 ( create$ pen_cl35_st1_min-overruled $?gen184 ) ) ) ) ?gen181 <- ( to_pay_min_35 ( negative-overruled $?gen186 ) )"))

([pen_cl35_st1_min-overruled] of derived-attribute-rule
   (pos-name pen_cl35_st1_min-overruled-gen372)
   (depends-on declare commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl35_st1_min] ) ) ) ?gen188 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( to_pay_min_35 ( value 120 ) ( negative-support $?gen184 ) ( negative-overruled $?gen185 & : ( not ( subseq-pos ( create$ pen_cl35_st1_min-overruled $?gen184 $$$ $?gen185 ) ) ) ) ( positive-defeated $?gen183 & : ( not ( member$ pen_cl35_st1_min $?gen183 ) ) ) ) ( test ( eq ( class ?gen181 ) to_pay_min_35 ) ) => ( calc ( bind $?gen186 ( create$ pen_cl35_st1_min-overruled $?gen184 $?gen185 ) ) ) ?gen181 <- ( to_pay_min_35 ( negative-overruled $?gen186 ) )"))

([pen_cl35_st1_min-support] of derived-attribute-rule
   (pos-name pen_cl35_st1_min-support-gen374)
   (depends-on declare commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl35_st1_min] ) ) ) ?gen180 <- ( commited_cl35_st1 ( defendant ?Defendant ) ) ?gen181 <- ( to_pay_min_35 ( value 120 ) ( positive-support $?gen183 & : ( not ( subseq-pos ( create$ pen_cl35_st1_min ?gen180 $$$ $?gen183 ) ) ) ) ) ( test ( eq ( class ?gen181 ) to_pay_min_35 ) ) => ( calc ( bind $?gen186 ( create$ pen_cl35_st1_min ?gen180 $?gen183 ) ) ) ?gen181 <- ( to_pay_min_35 ( positive-support $?gen186 ) )"))

([pen_cl29_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl29_st1_max-defeasibly-dot-gen376)
   (depends-on declare to_pay_max_29 commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl29_st1_max] ) ) ) ?gen172 <- ( to_pay_max_29 ( value 400 ) ( positive 1 ) ( positive-derivator pen_cl29_st1_max $? ) ) ( test ( eq ( class ?gen172 ) to_pay_max_29 ) ) ( not ( and ?gen179 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( to_pay_max_29 ( negative ~ 2 ) ( positive-overruled $?gen174 & : ( not ( member$ pen_cl29_st1_max $?gen174 ) ) ) ) ) ) => ?gen172 <- ( to_pay_max_29 ( positive 0 ) )"))

([pen_cl29_st1_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl29_st1_max-defeasibly-gen378)
   (depends-on declare commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl29_st1_max] ) ) ) ?gen179 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( to_pay_max_29 ( value 400 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen174 & : ( not ( member$ pen_cl29_st1_max $?gen174 ) ) ) ) ( test ( eq ( class ?gen172 ) to_pay_max_29 ) ) => ?gen172 <- ( to_pay_max_29 ( positive 1 ) ( positive-derivator pen_cl29_st1_max ?gen179 ) )"))

([pen_cl29_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl29_st1_max-overruled-dot-gen380)
   (depends-on declare to_pay_max_29 commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl29_st1_max] ) ) ) ?gen172 <- ( to_pay_max_29 ( value 400 ) ( negative-support $?gen175 ) ( negative-overruled $?gen176 & : ( subseq-pos ( create$ pen_cl29_st1_max-overruled $?gen175 $$$ $?gen176 ) ) ) ) ( test ( eq ( class ?gen172 ) to_pay_max_29 ) ) ( not ( and ?gen179 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( to_pay_max_29 ( positive-defeated $?gen174 & : ( not ( member$ pen_cl29_st1_max $?gen174 ) ) ) ) ) ) => ( calc ( bind $?gen177 ( delete-member$ $?gen176 ( create$ pen_cl29_st1_max-overruled $?gen175 ) ) ) ) ?gen172 <- ( to_pay_max_29 ( negative-overruled $?gen177 ) )"))

([pen_cl29_st1_max-overruled] of derived-attribute-rule
   (pos-name pen_cl29_st1_max-overruled-gen382)
   (depends-on declare commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl29_st1_max] ) ) ) ?gen179 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( to_pay_max_29 ( value 400 ) ( negative-support $?gen175 ) ( negative-overruled $?gen176 & : ( not ( subseq-pos ( create$ pen_cl29_st1_max-overruled $?gen175 $$$ $?gen176 ) ) ) ) ( positive-defeated $?gen174 & : ( not ( member$ pen_cl29_st1_max $?gen174 ) ) ) ) ( test ( eq ( class ?gen172 ) to_pay_max_29 ) ) => ( calc ( bind $?gen177 ( create$ pen_cl29_st1_max-overruled $?gen175 $?gen176 ) ) ) ?gen172 <- ( to_pay_max_29 ( negative-overruled $?gen177 ) )"))

([pen_cl29_st1_max-support] of derived-attribute-rule
   (pos-name pen_cl29_st1_max-support-gen384)
   (depends-on declare commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl29_st1_max] ) ) ) ?gen171 <- ( commited_cl29_st1 ( defendant ?Defendant ) ) ?gen172 <- ( to_pay_max_29 ( value 400 ) ( positive-support $?gen174 & : ( not ( subseq-pos ( create$ pen_cl29_st1_max ?gen171 $$$ $?gen174 ) ) ) ) ) ( test ( eq ( class ?gen172 ) to_pay_max_29 ) ) => ( calc ( bind $?gen177 ( create$ pen_cl29_st1_max ?gen171 $?gen174 ) ) ) ?gen172 <- ( to_pay_max_29 ( positive-support $?gen177 ) )"))

([pen_cl29_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl29_st1_min-defeasibly-dot-gen386)
   (depends-on declare to_pay_min_29 commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl29_st1_min] ) ) ) ?gen163 <- ( to_pay_min_29 ( value 120 ) ( positive 1 ) ( positive-derivator pen_cl29_st1_min $? ) ) ( test ( eq ( class ?gen163 ) to_pay_min_29 ) ) ( not ( and ?gen170 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( to_pay_min_29 ( negative ~ 2 ) ( positive-overruled $?gen165 & : ( not ( member$ pen_cl29_st1_min $?gen165 ) ) ) ) ) ) => ?gen163 <- ( to_pay_min_29 ( positive 0 ) )"))

([pen_cl29_st1_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl29_st1_min-defeasibly-gen388)
   (depends-on declare commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl29_st1_min] ) ) ) ?gen170 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( to_pay_min_29 ( value 120 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen165 & : ( not ( member$ pen_cl29_st1_min $?gen165 ) ) ) ) ( test ( eq ( class ?gen163 ) to_pay_min_29 ) ) => ?gen163 <- ( to_pay_min_29 ( positive 1 ) ( positive-derivator pen_cl29_st1_min ?gen170 ) )"))

([pen_cl29_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl29_st1_min-overruled-dot-gen390)
   (depends-on declare to_pay_min_29 commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl29_st1_min] ) ) ) ?gen163 <- ( to_pay_min_29 ( value 120 ) ( negative-support $?gen166 ) ( negative-overruled $?gen167 & : ( subseq-pos ( create$ pen_cl29_st1_min-overruled $?gen166 $$$ $?gen167 ) ) ) ) ( test ( eq ( class ?gen163 ) to_pay_min_29 ) ) ( not ( and ?gen170 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( to_pay_min_29 ( positive-defeated $?gen165 & : ( not ( member$ pen_cl29_st1_min $?gen165 ) ) ) ) ) ) => ( calc ( bind $?gen168 ( delete-member$ $?gen167 ( create$ pen_cl29_st1_min-overruled $?gen166 ) ) ) ) ?gen163 <- ( to_pay_min_29 ( negative-overruled $?gen168 ) )"))

([pen_cl29_st1_min-overruled] of derived-attribute-rule
   (pos-name pen_cl29_st1_min-overruled-gen392)
   (depends-on declare commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl29_st1_min] ) ) ) ?gen170 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( to_pay_min_29 ( value 120 ) ( negative-support $?gen166 ) ( negative-overruled $?gen167 & : ( not ( subseq-pos ( create$ pen_cl29_st1_min-overruled $?gen166 $$$ $?gen167 ) ) ) ) ( positive-defeated $?gen165 & : ( not ( member$ pen_cl29_st1_min $?gen165 ) ) ) ) ( test ( eq ( class ?gen163 ) to_pay_min_29 ) ) => ( calc ( bind $?gen168 ( create$ pen_cl29_st1_min-overruled $?gen166 $?gen167 ) ) ) ?gen163 <- ( to_pay_min_29 ( negative-overruled $?gen168 ) )"))

([pen_cl29_st1_min-support] of derived-attribute-rule
   (pos-name pen_cl29_st1_min-support-gen394)
   (depends-on declare commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl29_st1_min] ) ) ) ?gen162 <- ( commited_cl29_st1 ( defendant ?Defendant ) ) ?gen163 <- ( to_pay_min_29 ( value 120 ) ( positive-support $?gen165 & : ( not ( subseq-pos ( create$ pen_cl29_st1_min ?gen162 $$$ $?gen165 ) ) ) ) ) ( test ( eq ( class ?gen163 ) to_pay_min_29 ) ) => ( calc ( bind $?gen168 ( create$ pen_cl29_st1_min ?gen162 $?gen165 ) ) ) ?gen163 <- ( to_pay_min_29 ( positive-support $?gen168 ) )"))

([pen_cl27_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl27_st1_max-defeasibly-dot-gen396)
   (depends-on declare to_pay_max_27 commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl27_st1_max] ) ) ) ?gen154 <- ( to_pay_max_27 ( value 250 ) ( positive 1 ) ( positive-derivator pen_cl27_st1_max $? ) ) ( test ( eq ( class ?gen154 ) to_pay_max_27 ) ) ( not ( and ?gen161 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( to_pay_max_27 ( negative ~ 2 ) ( positive-overruled $?gen156 & : ( not ( member$ pen_cl27_st1_max $?gen156 ) ) ) ) ) ) => ?gen154 <- ( to_pay_max_27 ( positive 0 ) )"))

([pen_cl27_st1_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl27_st1_max-defeasibly-gen398)
   (depends-on declare commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl27_st1_max] ) ) ) ?gen161 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( to_pay_max_27 ( value 250 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen156 & : ( not ( member$ pen_cl27_st1_max $?gen156 ) ) ) ) ( test ( eq ( class ?gen154 ) to_pay_max_27 ) ) => ?gen154 <- ( to_pay_max_27 ( positive 1 ) ( positive-derivator pen_cl27_st1_max ?gen161 ) )"))

([pen_cl27_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl27_st1_max-overruled-dot-gen400)
   (depends-on declare to_pay_max_27 commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl27_st1_max] ) ) ) ?gen154 <- ( to_pay_max_27 ( value 250 ) ( negative-support $?gen157 ) ( negative-overruled $?gen158 & : ( subseq-pos ( create$ pen_cl27_st1_max-overruled $?gen157 $$$ $?gen158 ) ) ) ) ( test ( eq ( class ?gen154 ) to_pay_max_27 ) ) ( not ( and ?gen161 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( to_pay_max_27 ( positive-defeated $?gen156 & : ( not ( member$ pen_cl27_st1_max $?gen156 ) ) ) ) ) ) => ( calc ( bind $?gen159 ( delete-member$ $?gen158 ( create$ pen_cl27_st1_max-overruled $?gen157 ) ) ) ) ?gen154 <- ( to_pay_max_27 ( negative-overruled $?gen159 ) )"))

([pen_cl27_st1_max-overruled] of derived-attribute-rule
   (pos-name pen_cl27_st1_max-overruled-gen402)
   (depends-on declare commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl27_st1_max] ) ) ) ?gen161 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( to_pay_max_27 ( value 250 ) ( negative-support $?gen157 ) ( negative-overruled $?gen158 & : ( not ( subseq-pos ( create$ pen_cl27_st1_max-overruled $?gen157 $$$ $?gen158 ) ) ) ) ( positive-defeated $?gen156 & : ( not ( member$ pen_cl27_st1_max $?gen156 ) ) ) ) ( test ( eq ( class ?gen154 ) to_pay_max_27 ) ) => ( calc ( bind $?gen159 ( create$ pen_cl27_st1_max-overruled $?gen157 $?gen158 ) ) ) ?gen154 <- ( to_pay_max_27 ( negative-overruled $?gen159 ) )"))

([pen_cl27_st1_max-support] of derived-attribute-rule
   (pos-name pen_cl27_st1_max-support-gen404)
   (depends-on declare commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl27_st1_max] ) ) ) ?gen153 <- ( commited_cl27_st1 ( defendant ?Defendant ) ) ?gen154 <- ( to_pay_max_27 ( value 250 ) ( positive-support $?gen156 & : ( not ( subseq-pos ( create$ pen_cl27_st1_max ?gen153 $$$ $?gen156 ) ) ) ) ) ( test ( eq ( class ?gen154 ) to_pay_max_27 ) ) => ( calc ( bind $?gen159 ( create$ pen_cl27_st1_max ?gen153 $?gen156 ) ) ) ?gen154 <- ( to_pay_max_27 ( positive-support $?gen159 ) )"))

([pen_cl27_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl27_st1_min-defeasibly-dot-gen406)
   (depends-on declare to_pay_min_27 commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl27_st1_min] ) ) ) ?gen145 <- ( to_pay_min_27 ( value 90 ) ( positive 1 ) ( positive-derivator pen_cl27_st1_min $? ) ) ( test ( eq ( class ?gen145 ) to_pay_min_27 ) ) ( not ( and ?gen152 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( to_pay_min_27 ( negative ~ 2 ) ( positive-overruled $?gen147 & : ( not ( member$ pen_cl27_st1_min $?gen147 ) ) ) ) ) ) => ?gen145 <- ( to_pay_min_27 ( positive 0 ) )"))

([pen_cl27_st1_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl27_st1_min-defeasibly-gen408)
   (depends-on declare commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl27_st1_min] ) ) ) ?gen152 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( to_pay_min_27 ( value 90 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen147 & : ( not ( member$ pen_cl27_st1_min $?gen147 ) ) ) ) ( test ( eq ( class ?gen145 ) to_pay_min_27 ) ) => ?gen145 <- ( to_pay_min_27 ( positive 1 ) ( positive-derivator pen_cl27_st1_min ?gen152 ) )"))

([pen_cl27_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl27_st1_min-overruled-dot-gen410)
   (depends-on declare to_pay_min_27 commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl27_st1_min] ) ) ) ?gen145 <- ( to_pay_min_27 ( value 90 ) ( negative-support $?gen148 ) ( negative-overruled $?gen149 & : ( subseq-pos ( create$ pen_cl27_st1_min-overruled $?gen148 $$$ $?gen149 ) ) ) ) ( test ( eq ( class ?gen145 ) to_pay_min_27 ) ) ( not ( and ?gen152 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( to_pay_min_27 ( positive-defeated $?gen147 & : ( not ( member$ pen_cl27_st1_min $?gen147 ) ) ) ) ) ) => ( calc ( bind $?gen150 ( delete-member$ $?gen149 ( create$ pen_cl27_st1_min-overruled $?gen148 ) ) ) ) ?gen145 <- ( to_pay_min_27 ( negative-overruled $?gen150 ) )"))

([pen_cl27_st1_min-overruled] of derived-attribute-rule
   (pos-name pen_cl27_st1_min-overruled-gen412)
   (depends-on declare commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl27_st1_min] ) ) ) ?gen152 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( to_pay_min_27 ( value 90 ) ( negative-support $?gen148 ) ( negative-overruled $?gen149 & : ( not ( subseq-pos ( create$ pen_cl27_st1_min-overruled $?gen148 $$$ $?gen149 ) ) ) ) ( positive-defeated $?gen147 & : ( not ( member$ pen_cl27_st1_min $?gen147 ) ) ) ) ( test ( eq ( class ?gen145 ) to_pay_min_27 ) ) => ( calc ( bind $?gen150 ( create$ pen_cl27_st1_min-overruled $?gen148 $?gen149 ) ) ) ?gen145 <- ( to_pay_min_27 ( negative-overruled $?gen150 ) )"))

([pen_cl27_st1_min-support] of derived-attribute-rule
   (pos-name pen_cl27_st1_min-support-gen414)
   (depends-on declare commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl27_st1_min] ) ) ) ?gen144 <- ( commited_cl27_st1 ( defendant ?Defendant ) ) ?gen145 <- ( to_pay_min_27 ( value 90 ) ( positive-support $?gen147 & : ( not ( subseq-pos ( create$ pen_cl27_st1_min ?gen144 $$$ $?gen147 ) ) ) ) ) ( test ( eq ( class ?gen145 ) to_pay_min_27 ) ) => ( calc ( bind $?gen150 ( create$ pen_cl27_st1_min ?gen144 $?gen147 ) ) ) ?gen145 <- ( to_pay_min_27 ( positive-support $?gen150 ) )"))

([pen_cl26_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl26_st2_max-defeasibly-dot-gen416)
   (depends-on declare to_pay_max_26 commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl26_st2_max] ) ) ) ?gen136 <- ( to_pay_max_26 ( value 250 ) ( positive 1 ) ( positive-derivator pen_cl26_st2_max $? ) ) ( test ( eq ( class ?gen136 ) to_pay_max_26 ) ) ( not ( and ?gen143 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_max_26 ( negative ~ 2 ) ( positive-overruled $?gen138 & : ( not ( member$ pen_cl26_st2_max $?gen138 ) ) ) ) ) ) => ?gen136 <- ( to_pay_max_26 ( positive 0 ) )"))

([pen_cl26_st2_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl26_st2_max-defeasibly-gen418)
   (depends-on declare commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl26_st2_max] ) ) ) ?gen143 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_max_26 ( value 250 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen138 & : ( not ( member$ pen_cl26_st2_max $?gen138 ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_max_26 ) ) => ?gen136 <- ( to_pay_max_26 ( positive 1 ) ( positive-derivator pen_cl26_st2_max ?gen143 ) )"))

([pen_cl26_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl26_st2_max-overruled-dot-gen420)
   (depends-on declare to_pay_max_26 commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl26_st2_max] ) ) ) ?gen136 <- ( to_pay_max_26 ( value 250 ) ( negative-support $?gen139 ) ( negative-overruled $?gen140 & : ( subseq-pos ( create$ pen_cl26_st2_max-overruled $?gen139 $$$ $?gen140 ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_max_26 ) ) ( not ( and ?gen143 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_max_26 ( positive-defeated $?gen138 & : ( not ( member$ pen_cl26_st2_max $?gen138 ) ) ) ) ) ) => ( calc ( bind $?gen141 ( delete-member$ $?gen140 ( create$ pen_cl26_st2_max-overruled $?gen139 ) ) ) ) ?gen136 <- ( to_pay_max_26 ( negative-overruled $?gen141 ) )"))

([pen_cl26_st2_max-overruled] of derived-attribute-rule
   (pos-name pen_cl26_st2_max-overruled-gen422)
   (depends-on declare commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl26_st2_max] ) ) ) ?gen143 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( to_pay_max_26 ( value 250 ) ( negative-support $?gen139 ) ( negative-overruled $?gen140 & : ( not ( subseq-pos ( create$ pen_cl26_st2_max-overruled $?gen139 $$$ $?gen140 ) ) ) ) ( positive-defeated $?gen138 & : ( not ( member$ pen_cl26_st2_max $?gen138 ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_max_26 ) ) => ( calc ( bind $?gen141 ( create$ pen_cl26_st2_max-overruled $?gen139 $?gen140 ) ) ) ?gen136 <- ( to_pay_max_26 ( negative-overruled $?gen141 ) )"))

([pen_cl26_st2_max-support] of derived-attribute-rule
   (pos-name pen_cl26_st2_max-support-gen424)
   (depends-on declare commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl26_st2_max] ) ) ) ?gen135 <- ( commited_cl26_st2 ( defendant ?Defendant ) ) ?gen136 <- ( to_pay_max_26 ( value 250 ) ( positive-support $?gen138 & : ( not ( subseq-pos ( create$ pen_cl26_st2_max ?gen135 $$$ $?gen138 ) ) ) ) ) ( test ( eq ( class ?gen136 ) to_pay_max_26 ) ) => ( calc ( bind $?gen141 ( create$ pen_cl26_st2_max ?gen135 $?gen138 ) ) ) ?gen136 <- ( to_pay_max_26 ( positive-support $?gen141 ) )"))

([pen_cl26_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl26_st2_min-defeasibly-dot-gen426)
   (depends-on declare to_pay_min_26 commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl26_st2_min] ) ) ) ?gen127 <- ( to_pay_min_26 ( value 90 ) ( positive 1 ) ( positive-derivator pen_cl26_st2_min $? ) ) ( test ( eq ( class ?gen127 ) to_pay_min_26 ) ) ( not ( and ?gen134 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_min_26 ( negative ~ 2 ) ( positive-overruled $?gen129 & : ( not ( member$ pen_cl26_st2_min $?gen129 ) ) ) ) ) ) => ?gen127 <- ( to_pay_min_26 ( positive 0 ) )"))

([pen_cl26_st2_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl26_st2_min-defeasibly-gen428)
   (depends-on declare commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl26_st2_min] ) ) ) ?gen134 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_min_26 ( value 90 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen129 & : ( not ( member$ pen_cl26_st2_min $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_min_26 ) ) => ?gen127 <- ( to_pay_min_26 ( positive 1 ) ( positive-derivator pen_cl26_st2_min ?gen134 ) )"))

([pen_cl26_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl26_st2_min-overruled-dot-gen430)
   (depends-on declare to_pay_min_26 commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl26_st2_min] ) ) ) ?gen127 <- ( to_pay_min_26 ( value 90 ) ( negative-support $?gen130 ) ( negative-overruled $?gen131 & : ( subseq-pos ( create$ pen_cl26_st2_min-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_min_26 ) ) ( not ( and ?gen134 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_min_26 ( positive-defeated $?gen129 & : ( not ( member$ pen_cl26_st2_min $?gen129 ) ) ) ) ) ) => ( calc ( bind $?gen132 ( delete-member$ $?gen131 ( create$ pen_cl26_st2_min-overruled $?gen130 ) ) ) ) ?gen127 <- ( to_pay_min_26 ( negative-overruled $?gen132 ) )"))

([pen_cl26_st2_min-overruled] of derived-attribute-rule
   (pos-name pen_cl26_st2_min-overruled-gen432)
   (depends-on declare commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl26_st2_min] ) ) ) ?gen134 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( to_pay_min_26 ( value 90 ) ( negative-support $?gen130 ) ( negative-overruled $?gen131 & : ( not ( subseq-pos ( create$ pen_cl26_st2_min-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( positive-defeated $?gen129 & : ( not ( member$ pen_cl26_st2_min $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_min_26 ) ) => ( calc ( bind $?gen132 ( create$ pen_cl26_st2_min-overruled $?gen130 $?gen131 ) ) ) ?gen127 <- ( to_pay_min_26 ( negative-overruled $?gen132 ) )"))

([pen_cl26_st2_min-support] of derived-attribute-rule
   (pos-name pen_cl26_st2_min-support-gen434)
   (depends-on declare commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl26_st2_min] ) ) ) ?gen126 <- ( commited_cl26_st2 ( defendant ?Defendant ) ) ?gen127 <- ( to_pay_min_26 ( value 90 ) ( positive-support $?gen129 & : ( not ( subseq-pos ( create$ pen_cl26_st2_min ?gen126 $$$ $?gen129 ) ) ) ) ) ( test ( eq ( class ?gen127 ) to_pay_min_26 ) ) => ( calc ( bind $?gen132 ( create$ pen_cl26_st2_min ?gen126 $?gen129 ) ) ) ?gen127 <- ( to_pay_min_26 ( positive-support $?gen132 ) )"))

([rule_cl348_st3_injury-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl348_st3_injury-defeasibly-dot-gen436)
   (depends-on declare commited_cl348_st3 lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl348_st3_injury] ) ) ) ?gen116 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl348_st3_injury $? ) ) ( test ( eq ( class ?gen116 ) commited_cl348_st3 ) ) ( not ( and ?gen123 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen122 & : ( >= ?gen122 1 ) ) ) ?gen125 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen116 <- ( commited_cl348_st3 ( negative ~ 2 ) ( positive-overruled $?gen118 & : ( not ( member$ rule_cl348_st3_injury $?gen118 ) ) ) ) ) ) => ?gen116 <- ( commited_cl348_st3 ( positive 0 ) )"))

([rule_cl348_st3_injury-defeasibly] of derived-attribute-rule
   (pos-name rule_cl348_st3_injury-defeasibly-gen438)
   (depends-on declare lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl348_st3_injury] ) ) ) ?gen123 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen122 & : ( >= ?gen122 1 ) ) ) ?gen125 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen116 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen118 & : ( not ( member$ rule_cl348_st3_injury $?gen118 ) ) ) ) ( test ( eq ( class ?gen116 ) commited_cl348_st3 ) ) => ?gen116 <- ( commited_cl348_st3 ( positive 1 ) ( positive-derivator rule_cl348_st3_injury ?gen123 ?gen125 ) )"))

([rule_cl348_st3_injury-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl348_st3_injury-overruled-dot-gen440)
   (depends-on declare commited_cl348_st3 lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl348_st3_injury] ) ) ) ?gen116 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( negative-support $?gen119 ) ( negative-overruled $?gen120 & : ( subseq-pos ( create$ rule_cl348_st3_injury-overruled $?gen119 $$$ $?gen120 ) ) ) ) ( test ( eq ( class ?gen116 ) commited_cl348_st3 ) ) ( not ( and ?gen123 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen122 & : ( >= ?gen122 1 ) ) ) ?gen125 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen116 <- ( commited_cl348_st3 ( positive-defeated $?gen118 & : ( not ( member$ rule_cl348_st3_injury $?gen118 ) ) ) ) ) ) => ( calc ( bind $?gen121 ( delete-member$ $?gen120 ( create$ rule_cl348_st3_injury-overruled $?gen119 ) ) ) ) ?gen116 <- ( commited_cl348_st3 ( negative-overruled $?gen121 ) )"))

([rule_cl348_st3_injury-overruled] of derived-attribute-rule
   (pos-name rule_cl348_st3_injury-overruled-gen442)
   (depends-on declare lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl348_st3_injury] ) ) ) ?gen123 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen122 & : ( >= ?gen122 1 ) ) ) ?gen125 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen116 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( negative-support $?gen119 ) ( negative-overruled $?gen120 & : ( not ( subseq-pos ( create$ rule_cl348_st3_injury-overruled $?gen119 $$$ $?gen120 ) ) ) ) ( positive-defeated $?gen118 & : ( not ( member$ rule_cl348_st3_injury $?gen118 ) ) ) ) ( test ( eq ( class ?gen116 ) commited_cl348_st3 ) ) => ( calc ( bind $?gen121 ( create$ rule_cl348_st3_injury-overruled $?gen119 $?gen120 ) ) ) ?gen116 <- ( commited_cl348_st3 ( negative-overruled $?gen121 ) )"))

([rule_cl348_st3_injury-support] of derived-attribute-rule
   (pos-name rule_cl348_st3_injury-support-gen444)
   (depends-on declare lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl348_st3_injury] ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ?gen116 <- ( commited_cl348_st3 ( defendant ?Defendant ) ( positive-support $?gen118 & : ( not ( subseq-pos ( create$ rule_cl348_st3_injury ?gen114 ?gen115 $$$ $?gen118 ) ) ) ) ) ( test ( eq ( class ?gen116 ) commited_cl348_st3 ) ) => ( calc ( bind $?gen121 ( create$ rule_cl348_st3_injury ?gen114 ?gen115 $?gen118 ) ) ) ?gen116 <- ( commited_cl348_st3 ( positive-support $?gen121 ) )"))

([rule_cl348_st1_injury-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl348_st1_injury-defeasibly-dot-gen446)
   (depends-on declare commited_cl348_st1 lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl348_st1_injury] ) ) ) ?gen104 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl348_st1_injury $? ) ) ( test ( eq ( class ?gen104 ) commited_cl348_st1 ) ) ( not ( and ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen104 <- ( commited_cl348_st1 ( negative ~ 2 ) ( positive-overruled $?gen106 & : ( not ( member$ rule_cl348_st1_injury $?gen106 ) ) ) ) ) ) => ?gen104 <- ( commited_cl348_st1 ( positive 0 ) )"))

([rule_cl348_st1_injury-defeasibly] of derived-attribute-rule
   (pos-name rule_cl348_st1_injury-defeasibly-gen448)
   (depends-on declare lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl348_st1_injury] ) ) ) ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen104 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen106 & : ( not ( member$ rule_cl348_st1_injury $?gen106 ) ) ) ) ( test ( eq ( class ?gen104 ) commited_cl348_st1 ) ) => ?gen104 <- ( commited_cl348_st1 ( positive 1 ) ( positive-derivator rule_cl348_st1_injury ?gen111 ?gen113 ) )"))

([rule_cl348_st1_injury-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl348_st1_injury-overruled-dot-gen450)
   (depends-on declare commited_cl348_st1 lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl348_st1_injury] ) ) ) ?gen104 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( negative-support $?gen107 ) ( negative-overruled $?gen108 & : ( subseq-pos ( create$ rule_cl348_st1_injury-overruled $?gen107 $$$ $?gen108 ) ) ) ) ( test ( eq ( class ?gen104 ) commited_cl348_st1 ) ) ( not ( and ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen104 <- ( commited_cl348_st1 ( positive-defeated $?gen106 & : ( not ( member$ rule_cl348_st1_injury $?gen106 ) ) ) ) ) ) => ( calc ( bind $?gen109 ( delete-member$ $?gen108 ( create$ rule_cl348_st1_injury-overruled $?gen107 ) ) ) ) ?gen104 <- ( commited_cl348_st1 ( negative-overruled $?gen109 ) )"))

([rule_cl348_st1_injury-overruled] of derived-attribute-rule
   (pos-name rule_cl348_st1_injury-overruled-gen452)
   (depends-on declare lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl348_st1_injury] ) ) ) ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen104 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( negative-support $?gen107 ) ( negative-overruled $?gen108 & : ( not ( subseq-pos ( create$ rule_cl348_st1_injury-overruled $?gen107 $$$ $?gen108 ) ) ) ) ( positive-defeated $?gen106 & : ( not ( member$ rule_cl348_st1_injury $?gen106 ) ) ) ) ( test ( eq ( class ?gen104 ) commited_cl348_st1 ) ) => ( calc ( bind $?gen109 ( create$ rule_cl348_st1_injury-overruled $?gen107 $?gen108 ) ) ) ?gen104 <- ( commited_cl348_st1 ( negative-overruled $?gen109 ) )"))

([rule_cl348_st1_injury-support] of derived-attribute-rule
   (pos-name rule_cl348_st1_injury-support-gen454)
   (depends-on declare lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl348_st1_injury] ) ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ?gen104 <- ( commited_cl348_st1 ( defendant ?Defendant ) ( positive-support $?gen106 & : ( not ( subseq-pos ( create$ rule_cl348_st1_injury ?gen102 ?gen103 $$$ $?gen106 ) ) ) ) ) ( test ( eq ( class ?gen104 ) commited_cl348_st1 ) ) => ( calc ( bind $?gen109 ( create$ rule_cl348_st1_injury ?gen102 ?gen103 $?gen106 ) ) ) ?gen104 <- ( commited_cl348_st1 ( positive-support $?gen109 ) )"))

([rule_cl339_st3_injury-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl339_st3_injury-defeasibly-dot-gen456)
   (depends-on declare commited_cl339_st3 lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl339_st3_injury] ) ) ) ?gen92 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl339_st3_injury $? ) ) ( test ( eq ( class ?gen92 ) commited_cl339_st3 ) ) ( not ( and ?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen92 <- ( commited_cl339_st3 ( negative ~ 2 ) ( positive-overruled $?gen94 & : ( not ( member$ rule_cl339_st3_injury $?gen94 ) ) ) ) ) ) => ?gen92 <- ( commited_cl339_st3 ( positive 0 ) )"))

([rule_cl339_st3_injury-defeasibly] of derived-attribute-rule
   (pos-name rule_cl339_st3_injury-defeasibly-gen458)
   (depends-on declare lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl339_st3_injury] ) ) ) ?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen92 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen94 & : ( not ( member$ rule_cl339_st3_injury $?gen94 ) ) ) ) ( test ( eq ( class ?gen92 ) commited_cl339_st3 ) ) => ?gen92 <- ( commited_cl339_st3 ( positive 1 ) ( positive-derivator rule_cl339_st3_injury ?gen99 ?gen101 ) )"))

([rule_cl339_st3_injury-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl339_st3_injury-overruled-dot-gen460)
   (depends-on declare commited_cl339_st3 lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl339_st3_injury] ) ) ) ?gen92 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( negative-support $?gen95 ) ( negative-overruled $?gen96 & : ( subseq-pos ( create$ rule_cl339_st3_injury-overruled $?gen95 $$$ $?gen96 ) ) ) ) ( test ( eq ( class ?gen92 ) commited_cl339_st3 ) ) ( not ( and ?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen92 <- ( commited_cl339_st3 ( positive-defeated $?gen94 & : ( not ( member$ rule_cl339_st3_injury $?gen94 ) ) ) ) ) ) => ( calc ( bind $?gen97 ( delete-member$ $?gen96 ( create$ rule_cl339_st3_injury-overruled $?gen95 ) ) ) ) ?gen92 <- ( commited_cl339_st3 ( negative-overruled $?gen97 ) )"))

([rule_cl339_st3_injury-overruled] of derived-attribute-rule
   (pos-name rule_cl339_st3_injury-overruled-gen462)
   (depends-on declare lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl339_st3_injury] ) ) ) ?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen92 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( negative-support $?gen95 ) ( negative-overruled $?gen96 & : ( not ( subseq-pos ( create$ rule_cl339_st3_injury-overruled $?gen95 $$$ $?gen96 ) ) ) ) ( positive-defeated $?gen94 & : ( not ( member$ rule_cl339_st3_injury $?gen94 ) ) ) ) ( test ( eq ( class ?gen92 ) commited_cl339_st3 ) ) => ( calc ( bind $?gen97 ( create$ rule_cl339_st3_injury-overruled $?gen95 $?gen96 ) ) ) ?gen92 <- ( commited_cl339_st3 ( negative-overruled $?gen97 ) )"))

([rule_cl339_st3_injury-support] of derived-attribute-rule
   (pos-name rule_cl339_st3_injury-support-gen464)
   (depends-on declare lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl339_st3_injury] ) ) ) ?gen90 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ?gen91 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ?gen92 <- ( commited_cl339_st3 ( defendant ?Defendant ) ( positive-support $?gen94 & : ( not ( subseq-pos ( create$ rule_cl339_st3_injury ?gen90 ?gen91 $$$ $?gen94 ) ) ) ) ) ( test ( eq ( class ?gen92 ) commited_cl339_st3 ) ) => ( calc ( bind $?gen97 ( create$ rule_cl339_st3_injury ?gen90 ?gen91 $?gen94 ) ) ) ?gen92 <- ( commited_cl339_st3 ( positive-support $?gen97 ) )"))

([rule_cl339_st1_injury-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl339_st1_injury-defeasibly-dot-gen466)
   (depends-on declare commited_cl339_st1 lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl339_st1_injury] ) ) ) ?gen80 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl339_st1_injury $? ) ) ( test ( eq ( class ?gen80 ) commited_cl339_st1 ) ) ( not ( and ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ?gen89 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen80 <- ( commited_cl339_st1 ( negative ~ 2 ) ( positive-overruled $?gen82 & : ( not ( member$ rule_cl339_st1_injury $?gen82 ) ) ) ) ) ) => ?gen80 <- ( commited_cl339_st1 ( positive 0 ) )"))

([rule_cl339_st1_injury-defeasibly] of derived-attribute-rule
   (pos-name rule_cl339_st1_injury-defeasibly-gen468)
   (depends-on declare lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl339_st1_injury] ) ) ) ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ?gen89 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen80 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen82 & : ( not ( member$ rule_cl339_st1_injury $?gen82 ) ) ) ) ( test ( eq ( class ?gen80 ) commited_cl339_st1 ) ) => ?gen80 <- ( commited_cl339_st1 ( positive 1 ) ( positive-derivator rule_cl339_st1_injury ?gen87 ?gen89 ) )"))

([rule_cl339_st1_injury-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl339_st1_injury-overruled-dot-gen470)
   (depends-on declare commited_cl339_st1 lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl339_st1_injury] ) ) ) ?gen80 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( negative-support $?gen83 ) ( negative-overruled $?gen84 & : ( subseq-pos ( create$ rule_cl339_st1_injury-overruled $?gen83 $$$ $?gen84 ) ) ) ) ( test ( eq ( class ?gen80 ) commited_cl339_st1 ) ) ( not ( and ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ?gen89 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen80 <- ( commited_cl339_st1 ( positive-defeated $?gen82 & : ( not ( member$ rule_cl339_st1_injury $?gen82 ) ) ) ) ) ) => ( calc ( bind $?gen85 ( delete-member$ $?gen84 ( create$ rule_cl339_st1_injury-overruled $?gen83 ) ) ) ) ?gen80 <- ( commited_cl339_st1 ( negative-overruled $?gen85 ) )"))

([rule_cl339_st1_injury-overruled] of derived-attribute-rule
   (pos-name rule_cl339_st1_injury-overruled-gen472)
   (depends-on declare lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl339_st1_injury] ) ) ) ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ?gen89 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen80 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( negative-support $?gen83 ) ( negative-overruled $?gen84 & : ( not ( subseq-pos ( create$ rule_cl339_st1_injury-overruled $?gen83 $$$ $?gen84 ) ) ) ) ( positive-defeated $?gen82 & : ( not ( member$ rule_cl339_st1_injury $?gen82 ) ) ) ) ( test ( eq ( class ?gen80 ) commited_cl339_st1 ) ) => ( calc ( bind $?gen85 ( create$ rule_cl339_st1_injury-overruled $?gen83 $?gen84 ) ) ) ?gen80 <- ( commited_cl339_st1 ( negative-overruled $?gen85 ) )"))

([rule_cl339_st1_injury-support] of derived-attribute-rule
   (pos-name rule_cl339_st1_injury-support-gen474)
   (depends-on declare lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl339_st1_injury] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ?gen80 <- ( commited_cl339_st1 ( defendant ?Defendant ) ( positive-support $?gen82 & : ( not ( subseq-pos ( create$ rule_cl339_st1_injury ?gen78 ?gen79 $$$ $?gen82 ) ) ) ) ) ( test ( eq ( class ?gen80 ) commited_cl339_st1 ) ) => ( calc ( bind $?gen85 ( create$ rule_cl339_st1_injury ?gen78 ?gen79 $?gen82 ) ) ) ?gen80 <- ( commited_cl339_st1 ( positive-support $?gen85 ) )"))

([rule_cl44-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl44-defeasibly-dot-gen476)
   (depends-on declare commited_cl44 lc:case commited_cl44)
   (implies commited_cl44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl44] ) ) ) ?gen70 <- ( commited_cl44 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl44 $? ) ) ( test ( eq ( class ?gen70 ) commited_cl44 ) ) ( not ( and ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( commited_cl44 ( negative ~ 2 ) ( positive-overruled $?gen72 & : ( not ( member$ rule_cl44 $?gen72 ) ) ) ) ) ) => ?gen70 <- ( commited_cl44 ( positive 0 ) )"))

([rule_cl44-defeasibly] of derived-attribute-rule
   (pos-name rule_cl44-defeasibly-gen478)
   (depends-on declare lc:case commited_cl44)
   (implies commited_cl44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl44] ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( commited_cl44 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen72 & : ( not ( member$ rule_cl44 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) commited_cl44 ) ) => ?gen70 <- ( commited_cl44 ( positive 1 ) ( positive-derivator rule_cl44 ?gen77 ) )"))

([rule_cl44-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl44-overruled-dot-gen480)
   (depends-on declare commited_cl44 lc:case commited_cl44)
   (implies commited_cl44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl44] ) ) ) ?gen70 <- ( commited_cl44 ( defendant ?Defendant ) ( negative-support $?gen73 ) ( negative-overruled $?gen74 & : ( subseq-pos ( create$ rule_cl44-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( test ( eq ( class ?gen70 ) commited_cl44 ) ) ( not ( and ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( commited_cl44 ( positive-defeated $?gen72 & : ( not ( member$ rule_cl44 $?gen72 ) ) ) ) ) ) => ( calc ( bind $?gen75 ( delete-member$ $?gen74 ( create$ rule_cl44-overruled $?gen73 ) ) ) ) ?gen70 <- ( commited_cl44 ( negative-overruled $?gen75 ) )"))

([rule_cl44-overruled] of derived-attribute-rule
   (pos-name rule_cl44-overruled-gen482)
   (depends-on declare lc:case commited_cl44)
   (implies commited_cl44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl44] ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( commited_cl44 ( defendant ?Defendant ) ( negative-support $?gen73 ) ( negative-overruled $?gen74 & : ( not ( subseq-pos ( create$ rule_cl44-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( positive-defeated $?gen72 & : ( not ( member$ rule_cl44 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) commited_cl44 ) ) => ( calc ( bind $?gen75 ( create$ rule_cl44-overruled $?gen73 $?gen74 ) ) ) ?gen70 <- ( commited_cl44 ( negative-overruled $?gen75 ) )"))

([rule_cl44-support] of derived-attribute-rule
   (pos-name rule_cl44-support-gen484)
   (depends-on declare lc:case commited_cl44)
   (implies commited_cl44)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl44] ) ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ) ?gen70 <- ( commited_cl44 ( defendant ?Defendant ) ( positive-support $?gen72 & : ( not ( subseq-pos ( create$ rule_cl44 ?gen69 $$$ $?gen72 ) ) ) ) ) ( test ( eq ( class ?gen70 ) commited_cl44 ) ) => ( calc ( bind $?gen75 ( create$ rule_cl44 ?gen69 $?gen72 ) ) ) ?gen70 <- ( commited_cl44 ( positive-support $?gen75 ) )"))

([rule_cl41-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl41-defeasibly-dot-gen486)
   (depends-on declare commited_cl41 lc:case commited_cl41)
   (implies commited_cl41)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl41] ) ) ) ?gen61 <- ( commited_cl41 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl41 $? ) ) ( test ( eq ( class ?gen61 ) commited_cl41 ) ) ( not ( and ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( commited_cl41 ( negative ~ 2 ) ( positive-overruled $?gen63 & : ( not ( member$ rule_cl41 $?gen63 ) ) ) ) ) ) => ?gen61 <- ( commited_cl41 ( positive 0 ) )"))

([rule_cl41-defeasibly] of derived-attribute-rule
   (pos-name rule_cl41-defeasibly-gen488)
   (depends-on declare lc:case commited_cl41)
   (implies commited_cl41)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl41] ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( commited_cl41 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen63 & : ( not ( member$ rule_cl41 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) commited_cl41 ) ) => ?gen61 <- ( commited_cl41 ( positive 1 ) ( positive-derivator rule_cl41 ?gen68 ) )"))

([rule_cl41-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl41-overruled-dot-gen490)
   (depends-on declare commited_cl41 lc:case commited_cl41)
   (implies commited_cl41)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl41] ) ) ) ?gen61 <- ( commited_cl41 ( defendant ?Defendant ) ( negative-support $?gen64 ) ( negative-overruled $?gen65 & : ( subseq-pos ( create$ rule_cl41-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( test ( eq ( class ?gen61 ) commited_cl41 ) ) ( not ( and ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( commited_cl41 ( positive-defeated $?gen63 & : ( not ( member$ rule_cl41 $?gen63 ) ) ) ) ) ) => ( calc ( bind $?gen66 ( delete-member$ $?gen65 ( create$ rule_cl41-overruled $?gen64 ) ) ) ) ?gen61 <- ( commited_cl41 ( negative-overruled $?gen66 ) )"))

([rule_cl41-overruled] of derived-attribute-rule
   (pos-name rule_cl41-overruled-gen492)
   (depends-on declare lc:case commited_cl41)
   (implies commited_cl41)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl41] ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( commited_cl41 ( defendant ?Defendant ) ( negative-support $?gen64 ) ( negative-overruled $?gen65 & : ( not ( subseq-pos ( create$ rule_cl41-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( positive-defeated $?gen63 & : ( not ( member$ rule_cl41 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) commited_cl41 ) ) => ( calc ( bind $?gen66 ( create$ rule_cl41-overruled $?gen64 $?gen65 ) ) ) ?gen61 <- ( commited_cl41 ( negative-overruled $?gen66 ) )"))

([rule_cl41-support] of derived-attribute-rule
   (pos-name rule_cl41-support-gen494)
   (depends-on declare lc:case commited_cl41)
   (implies commited_cl41)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl41] ) ) ) ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ) ?gen61 <- ( commited_cl41 ( defendant ?Defendant ) ( positive-support $?gen63 & : ( not ( subseq-pos ( create$ rule_cl41 ?gen60 $$$ $?gen63 ) ) ) ) ) ( test ( eq ( class ?gen61 ) commited_cl41 ) ) => ( calc ( bind $?gen66 ( create$ rule_cl41 ?gen60 $?gen63 ) ) ) ?gen61 <- ( commited_cl41 ( positive-support $?gen66 ) )"))

([rule_cl35_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl35_st1-defeasibly-dot-gen496)
   (depends-on declare commited_cl35_st1 lc:case lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl35_st1] ) ) ) ?gen50 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl35_st1 $? ) ) ( test ( eq ( class ?gen50 ) commited_cl35_st1 ) ) ( not ( and ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed_adjustment_according_to \"road_condition\" ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed \"no\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( commited_cl35_st1 ( negative ~ 2 ) ( positive-overruled $?gen52 & : ( not ( member$ rule_cl35_st1 $?gen52 ) ) ) ) ) ) => ?gen50 <- ( commited_cl35_st1 ( positive 0 ) )"))

([rule_cl35_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_cl35_st1-defeasibly-gen498)
   (depends-on declare lc:case lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl35_st1] ) ) ) ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed_adjustment_according_to \"road_condition\" ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed \"no\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen52 & : ( not ( member$ rule_cl35_st1 $?gen52 ) ) ) ) ( test ( eq ( class ?gen50 ) commited_cl35_st1 ) ) => ?gen50 <- ( commited_cl35_st1 ( positive 1 ) ( positive-derivator rule_cl35_st1 ?gen57 ?gen59 ) )"))

([rule_cl35_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl35_st1-overruled-dot-gen500)
   (depends-on declare commited_cl35_st1 lc:case lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl35_st1] ) ) ) ?gen50 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( negative-support $?gen53 ) ( negative-overruled $?gen54 & : ( subseq-pos ( create$ rule_cl35_st1-overruled $?gen53 $$$ $?gen54 ) ) ) ) ( test ( eq ( class ?gen50 ) commited_cl35_st1 ) ) ( not ( and ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed_adjustment_according_to \"road_condition\" ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed \"no\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( commited_cl35_st1 ( positive-defeated $?gen52 & : ( not ( member$ rule_cl35_st1 $?gen52 ) ) ) ) ) ) => ( calc ( bind $?gen55 ( delete-member$ $?gen54 ( create$ rule_cl35_st1-overruled $?gen53 ) ) ) ) ?gen50 <- ( commited_cl35_st1 ( negative-overruled $?gen55 ) )"))

([rule_cl35_st1-overruled] of derived-attribute-rule
   (pos-name rule_cl35_st1-overruled-gen502)
   (depends-on declare lc:case lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl35_st1] ) ) ) ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed_adjustment_according_to \"road_condition\" ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed \"no\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( negative-support $?gen53 ) ( negative-overruled $?gen54 & : ( not ( subseq-pos ( create$ rule_cl35_st1-overruled $?gen53 $$$ $?gen54 ) ) ) ) ( positive-defeated $?gen52 & : ( not ( member$ rule_cl35_st1 $?gen52 ) ) ) ) ( test ( eq ( class ?gen50 ) commited_cl35_st1 ) ) => ( calc ( bind $?gen55 ( create$ rule_cl35_st1-overruled $?gen53 $?gen54 ) ) ) ?gen50 <- ( commited_cl35_st1 ( negative-overruled $?gen55 ) )"))

([rule_cl35_st1-support] of derived-attribute-rule
   (pos-name rule_cl35_st1-support-gen504)
   (depends-on declare lc:case lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl35_st1] ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed_adjustment_according_to \"road_condition\" ) ) ?gen49 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed \"no\" ) ) ?gen50 <- ( commited_cl35_st1 ( defendant ?Defendant ) ( positive-support $?gen52 & : ( not ( subseq-pos ( create$ rule_cl35_st1 ?gen48 ?gen49 $$$ $?gen52 ) ) ) ) ) ( test ( eq ( class ?gen50 ) commited_cl35_st1 ) ) => ( calc ( bind $?gen55 ( create$ rule_cl35_st1 ?gen48 ?gen49 $?gen52 ) ) ) ?gen50 <- ( commited_cl35_st1 ( positive-support $?gen55 ) )"))

([rule_cl29_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl29_st1-defeasibly-dot-gen506)
   (depends-on declare commited_cl29_st1 lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl29_st1] ) ) ) ?gen40 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl29_st1 $? ) ) ( test ( eq ( class ?gen40 ) commited_cl29_st1 ) ) ( not ( and ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( commited_cl29_st1 ( negative ~ 2 ) ( positive-overruled $?gen42 & : ( not ( member$ rule_cl29_st1 $?gen42 ) ) ) ) ) ) => ?gen40 <- ( commited_cl29_st1 ( positive 0 ) )"))

([rule_cl29_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_cl29_st1-defeasibly-gen508)
   (depends-on declare lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl29_st1] ) ) ) ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen42 & : ( not ( member$ rule_cl29_st1 $?gen42 ) ) ) ) ( test ( eq ( class ?gen40 ) commited_cl29_st1 ) ) => ?gen40 <- ( commited_cl29_st1 ( positive 1 ) ( positive-derivator rule_cl29_st1 ?gen47 ) )"))

([rule_cl29_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl29_st1-overruled-dot-gen510)
   (depends-on declare commited_cl29_st1 lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl29_st1] ) ) ) ?gen40 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( negative-support $?gen43 ) ( negative-overruled $?gen44 & : ( subseq-pos ( create$ rule_cl29_st1-overruled $?gen43 $$$ $?gen44 ) ) ) ) ( test ( eq ( class ?gen40 ) commited_cl29_st1 ) ) ( not ( and ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( commited_cl29_st1 ( positive-defeated $?gen42 & : ( not ( member$ rule_cl29_st1 $?gen42 ) ) ) ) ) ) => ( calc ( bind $?gen45 ( delete-member$ $?gen44 ( create$ rule_cl29_st1-overruled $?gen43 ) ) ) ) ?gen40 <- ( commited_cl29_st1 ( negative-overruled $?gen45 ) )"))

([rule_cl29_st1-overruled] of derived-attribute-rule
   (pos-name rule_cl29_st1-overruled-gen512)
   (depends-on declare lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl29_st1] ) ) ) ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen40 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( negative-support $?gen43 ) ( negative-overruled $?gen44 & : ( not ( subseq-pos ( create$ rule_cl29_st1-overruled $?gen43 $$$ $?gen44 ) ) ) ) ( positive-defeated $?gen42 & : ( not ( member$ rule_cl29_st1 $?gen42 ) ) ) ) ( test ( eq ( class ?gen40 ) commited_cl29_st1 ) ) => ( calc ( bind $?gen45 ( create$ rule_cl29_st1-overruled $?gen43 $?gen44 ) ) ) ?gen40 <- ( commited_cl29_st1 ( negative-overruled $?gen45 ) )"))

([rule_cl29_st1-support] of derived-attribute-rule
   (pos-name rule_cl29_st1-support-gen514)
   (depends-on declare lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl29_st1] ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ) ?gen40 <- ( commited_cl29_st1 ( defendant ?Defendant ) ( positive-support $?gen42 & : ( not ( subseq-pos ( create$ rule_cl29_st1 ?gen39 $$$ $?gen42 ) ) ) ) ) ( test ( eq ( class ?gen40 ) commited_cl29_st1 ) ) => ( calc ( bind $?gen45 ( create$ rule_cl29_st1 ?gen39 $?gen42 ) ) ) ?gen40 <- ( commited_cl29_st1 ( positive-support $?gen45 ) )"))

([rule_cl27_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl27_st1-defeasibly-dot-gen516)
   (depends-on declare commited_cl27_st1 lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl27_st1] ) ) ) ?gen29 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl27_st1 $? ) ) ( test ( eq ( class ?gen29 ) commited_cl27_st1 ) ) ( not ( and ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_cl27_st1 ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule_cl27_st1 $?gen31 ) ) ) ) ) ) => ?gen29 <- ( commited_cl27_st1 ( positive 0 ) )"))

([rule_cl27_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_cl27_st1-defeasibly-gen518)
   (depends-on declare lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl27_st1] ) ) ) ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule_cl27_st1 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) commited_cl27_st1 ) ) => ?gen29 <- ( commited_cl27_st1 ( positive 1 ) ( positive-derivator rule_cl27_st1 ?gen36 ?gen38 ) )"))

([rule_cl27_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl27_st1-overruled-dot-gen520)
   (depends-on declare commited_cl27_st1 lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl27_st1] ) ) ) ?gen29 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( subseq-pos ( create$ rule_cl27_st1-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( test ( eq ( class ?gen29 ) commited_cl27_st1 ) ) ( not ( and ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_cl27_st1 ( positive-defeated $?gen31 & : ( not ( member$ rule_cl27_st1 $?gen31 ) ) ) ) ) ) => ( calc ( bind $?gen34 ( delete-member$ $?gen33 ( create$ rule_cl27_st1-overruled $?gen32 ) ) ) ) ?gen29 <- ( commited_cl27_st1 ( negative-overruled $?gen34 ) )"))

([rule_cl27_st1-overruled] of derived-attribute-rule
   (pos-name rule_cl27_st1-overruled-gen522)
   (depends-on declare lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl27_st1] ) ) ) ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( not ( subseq-pos ( create$ rule_cl27_st1-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( positive-defeated $?gen31 & : ( not ( member$ rule_cl27_st1 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) commited_cl27_st1 ) ) => ( calc ( bind $?gen34 ( create$ rule_cl27_st1-overruled $?gen32 $?gen33 ) ) ) ?gen29 <- ( commited_cl27_st1 ( negative-overruled $?gen34 ) )"))

([rule_cl27_st1-support] of derived-attribute-rule
   (pos-name rule_cl27_st1-support-gen524)
   (depends-on declare lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl27_st1] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ?gen29 <- ( commited_cl27_st1 ( defendant ?Defendant ) ( positive-support $?gen31 & : ( not ( subseq-pos ( create$ rule_cl27_st1 ?gen27 ?gen28 $$$ $?gen31 ) ) ) ) ) ( test ( eq ( class ?gen29 ) commited_cl27_st1 ) ) => ( calc ( bind $?gen34 ( create$ rule_cl27_st1 ?gen27 ?gen28 $?gen31 ) ) ) ?gen29 <- ( commited_cl27_st1 ( positive-support $?gen34 ) )"))

([rule_cl26_st2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_cl26_st2-defeasibly-dot-gen526)
   (depends-on declare commited_cl26_st2 lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_cl26_st2] ) ) ) ?gen17 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_cl26_st2 $? ) ) ( test ( eq ( class ?gen17 ) commited_cl26_st2 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_cl26_st2 ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule_cl26_st2 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( commited_cl26_st2 ( positive 0 ) )"))

([rule_cl26_st2-defeasibly] of derived-attribute-rule
   (pos-name rule_cl26_st2-defeasibly-gen528)
   (depends-on declare lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_cl26_st2] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule_cl26_st2 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_cl26_st2 ) ) => ?gen17 <- ( commited_cl26_st2 ( positive 1 ) ( positive-derivator rule_cl26_st2 ?gen24 ?gen26 ) )"))

([rule_cl26_st2-overruled-dot] of derived-attribute-rule
   (pos-name rule_cl26_st2-overruled-dot-gen530)
   (depends-on declare commited_cl26_st2 lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_cl26_st2] ) ) ) ?gen17 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule_cl26_st2-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_cl26_st2 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_cl26_st2 ( positive-defeated $?gen19 & : ( not ( member$ rule_cl26_st2 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule_cl26_st2-overruled $?gen20 ) ) ) ) ?gen17 <- ( commited_cl26_st2 ( negative-overruled $?gen22 ) )"))

([rule_cl26_st2-overruled] of derived-attribute-rule
   (pos-name rule_cl26_st2-overruled-gen532)
   (depends-on declare lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_cl26_st2] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule_cl26_st2-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule_cl26_st2 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_cl26_st2 ) ) => ( calc ( bind $?gen22 ( create$ rule_cl26_st2-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( commited_cl26_st2 ( negative-overruled $?gen22 ) )"))

([rule_cl26_st2-support] of derived-attribute-rule
   (pos-name rule_cl26_st2-support-gen534)
   (depends-on declare lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_cl26_st2] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ?gen17 <- ( commited_cl26_st2 ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule_cl26_st2 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) commited_cl26_st2 ) ) => ( calc ( bind $?gen22 ( create$ rule_cl26_st2 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( commited_cl26_st2 ( positive-support $?gen22 ) )"))

([pen_cl348_st3_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl348_st3_max-deductive-gen285)
   (depends-on commited_cl348_st3 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen252 <- ( commited_cl348_st3 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 4 ) ) ) => ( max_imprisonment ( value 4 ) )")
   (production-rule "( defrule pen_cl348_st3_max-deductive-gen285 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen252 ) ( is-a commited_cl348_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 4 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 4 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 4 ) ) ) ( make-instance ?oid of max_imprisonment ( value 4 ) ) )")
   (derived-class max_imprisonment))

([pen_cl348_st1_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl348_st1_max-deductive-gen284)
   (depends-on commited_cl348_st1 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen243 <- ( commited_cl348_st1 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 8 ) ) ) => ( max_imprisonment ( value 8 ) )")
   (production-rule "( defrule pen_cl348_st1_max-deductive-gen284 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen243 ) ( is-a commited_cl348_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ( make-instance ?oid of max_imprisonment ( value 8 ) ) )")
   (derived-class max_imprisonment))

([pen_cl348_st1_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl348_st1_min-deductive-gen283)
   (depends-on commited_cl348_st1 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen234 <- ( commited_cl348_st1 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen_cl348_st1_min-deductive-gen283 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen234 ) ( is-a commited_cl348_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pen_cl339_st3_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl339_st3_max-deductive-gen282)
   (depends-on commited_cl339_st3 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen225 <- ( commited_cl339_st3 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1 ) ) ) => ( max_imprisonment ( value 1 ) )")
   (production-rule "( defrule pen_cl339_st3_max-deductive-gen282 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen225 ) ( is-a commited_cl339_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1 ) ) )")
   (derived-class max_imprisonment))

([pen_cl339_st1_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl339_st1_max-deductive-gen281)
   (depends-on commited_cl339_st1 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen216 <- ( commited_cl339_st1 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 3 ) ) ) => ( max_imprisonment ( value 3 ) )")
   (production-rule "( defrule pen_cl339_st1_max-deductive-gen281 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen216 ) ( is-a commited_cl339_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ( make-instance ?oid of max_imprisonment ( value 3 ) ) )")
   (derived-class max_imprisonment))

([pen_cl44_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl44_max-deductive-gen280)
   (depends-on commited_cl44 to_pay_max_44)
   (implies to_pay_max_44)
   (deductive-rule "?gen207 <- ( commited_cl44 ( defendant ?Defendant ) ) ( not ( to_pay_max_44 ( value 250 ) ) ) => ( to_pay_max_44 ( value 250 ) )")
   (production-rule "( defrule pen_cl44_max-deductive-gen280 ( declare ( salience ( calc-salience to_pay_max_44 ) ) ) ( run-deductive-rules ) ( object ( name ?gen207 ) ( is-a commited_cl44 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_44 ) ( value 250 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_44 250 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_44 250 ) ) ) ( make-instance ?oid of to_pay_max_44 ( value 250 ) ) )")
   (derived-class to_pay_max_44))

([pen_cl44_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl44_min-deductive-gen279)
   (depends-on commited_cl44 to_pay_min_44)
   (implies to_pay_min_44)
   (deductive-rule "?gen198 <- ( commited_cl44 ( defendant ?Defendant ) ) ( not ( to_pay_min_44 ( value 80 ) ) ) => ( to_pay_min_44 ( value 80 ) )")
   (production-rule "( defrule pen_cl44_min-deductive-gen279 ( declare ( salience ( calc-salience to_pay_min_44 ) ) ) ( run-deductive-rules ) ( object ( name ?gen198 ) ( is-a commited_cl44 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_44 ) ( value 80 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_44 80 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_44 80 ) ) ) ( make-instance ?oid of to_pay_min_44 ( value 80 ) ) )")
   (derived-class to_pay_min_44))

([pen_cl35_st1_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl35_st1_max-deductive-gen278)
   (depends-on commited_cl35_st1 to_pay_max_35)
   (implies to_pay_max_35)
   (deductive-rule "?gen189 <- ( commited_cl35_st1 ( defendant ?Defendant ) ) ( not ( to_pay_max_35 ( value 400 ) ) ) => ( to_pay_max_35 ( value 400 ) )")
   (production-rule "( defrule pen_cl35_st1_max-deductive-gen278 ( declare ( salience ( calc-salience to_pay_max_35 ) ) ) ( run-deductive-rules ) ( object ( name ?gen189 ) ( is-a commited_cl35_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_35 ) ( value 400 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_35 400 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_35 400 ) ) ) ( make-instance ?oid of to_pay_max_35 ( value 400 ) ) )")
   (derived-class to_pay_max_35))

([pen_cl35_st1_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl35_st1_min-deductive-gen277)
   (depends-on commited_cl35_st1 to_pay_min_35)
   (implies to_pay_min_35)
   (deductive-rule "?gen180 <- ( commited_cl35_st1 ( defendant ?Defendant ) ) ( not ( to_pay_min_35 ( value 120 ) ) ) => ( to_pay_min_35 ( value 120 ) )")
   (production-rule "( defrule pen_cl35_st1_min-deductive-gen277 ( declare ( salience ( calc-salience to_pay_min_35 ) ) ) ( run-deductive-rules ) ( object ( name ?gen180 ) ( is-a commited_cl35_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_35 ) ( value 120 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_35 120 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_35 120 ) ) ) ( make-instance ?oid of to_pay_min_35 ( value 120 ) ) )")
   (derived-class to_pay_min_35))

([pen_cl29_st1_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl29_st1_max-deductive-gen276)
   (depends-on commited_cl29_st1 to_pay_max_29)
   (implies to_pay_max_29)
   (deductive-rule "?gen171 <- ( commited_cl29_st1 ( defendant ?Defendant ) ) ( not ( to_pay_max_29 ( value 400 ) ) ) => ( to_pay_max_29 ( value 400 ) )")
   (production-rule "( defrule pen_cl29_st1_max-deductive-gen276 ( declare ( salience ( calc-salience to_pay_max_29 ) ) ) ( run-deductive-rules ) ( object ( name ?gen171 ) ( is-a commited_cl29_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_29 ) ( value 400 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_29 400 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_29 400 ) ) ) ( make-instance ?oid of to_pay_max_29 ( value 400 ) ) )")
   (derived-class to_pay_max_29))

([pen_cl29_st1_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl29_st1_min-deductive-gen275)
   (depends-on commited_cl29_st1 to_pay_min_29)
   (implies to_pay_min_29)
   (deductive-rule "?gen162 <- ( commited_cl29_st1 ( defendant ?Defendant ) ) ( not ( to_pay_min_29 ( value 120 ) ) ) => ( to_pay_min_29 ( value 120 ) )")
   (production-rule "( defrule pen_cl29_st1_min-deductive-gen275 ( declare ( salience ( calc-salience to_pay_min_29 ) ) ) ( run-deductive-rules ) ( object ( name ?gen162 ) ( is-a commited_cl29_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_29 ) ( value 120 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_29 120 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_29 120 ) ) ) ( make-instance ?oid of to_pay_min_29 ( value 120 ) ) )")
   (derived-class to_pay_min_29))

([pen_cl27_st1_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl27_st1_max-deductive-gen274)
   (depends-on commited_cl27_st1 to_pay_max_27)
   (implies to_pay_max_27)
   (deductive-rule "?gen153 <- ( commited_cl27_st1 ( defendant ?Defendant ) ) ( not ( to_pay_max_27 ( value 250 ) ) ) => ( to_pay_max_27 ( value 250 ) )")
   (production-rule "( defrule pen_cl27_st1_max-deductive-gen274 ( declare ( salience ( calc-salience to_pay_max_27 ) ) ) ( run-deductive-rules ) ( object ( name ?gen153 ) ( is-a commited_cl27_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_27 ) ( value 250 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_27 250 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_27 250 ) ) ) ( make-instance ?oid of to_pay_max_27 ( value 250 ) ) )")
   (derived-class to_pay_max_27))

([pen_cl27_st1_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl27_st1_min-deductive-gen273)
   (depends-on commited_cl27_st1 to_pay_min_27)
   (implies to_pay_min_27)
   (deductive-rule "?gen144 <- ( commited_cl27_st1 ( defendant ?Defendant ) ) ( not ( to_pay_min_27 ( value 90 ) ) ) => ( to_pay_min_27 ( value 90 ) )")
   (production-rule "( defrule pen_cl27_st1_min-deductive-gen273 ( declare ( salience ( calc-salience to_pay_min_27 ) ) ) ( run-deductive-rules ) ( object ( name ?gen144 ) ( is-a commited_cl27_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_27 ) ( value 90 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_27 90 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_27 90 ) ) ) ( make-instance ?oid of to_pay_min_27 ( value 90 ) ) )")
   (derived-class to_pay_min_27))

([pen_cl26_st2_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl26_st2_max-deductive-gen272)
   (depends-on commited_cl26_st2 to_pay_max_26)
   (implies to_pay_max_26)
   (deductive-rule "?gen135 <- ( commited_cl26_st2 ( defendant ?Defendant ) ) ( not ( to_pay_max_26 ( value 250 ) ) ) => ( to_pay_max_26 ( value 250 ) )")
   (production-rule "( defrule pen_cl26_st2_max-deductive-gen272 ( declare ( salience ( calc-salience to_pay_max_26 ) ) ) ( run-deductive-rules ) ( object ( name ?gen135 ) ( is-a commited_cl26_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_26 ) ( value 250 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_26 250 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_26 250 ) ) ) ( make-instance ?oid of to_pay_max_26 ( value 250 ) ) )")
   (derived-class to_pay_max_26))

([pen_cl26_st2_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl26_st2_min-deductive-gen271)
   (depends-on commited_cl26_st2 to_pay_min_26)
   (implies to_pay_min_26)
   (deductive-rule "?gen126 <- ( commited_cl26_st2 ( defendant ?Defendant ) ) ( not ( to_pay_min_26 ( value 90 ) ) ) => ( to_pay_min_26 ( value 90 ) )")
   (production-rule "( defrule pen_cl26_st2_min-deductive-gen271 ( declare ( salience ( calc-salience to_pay_min_26 ) ) ) ( run-deductive-rules ) ( object ( name ?gen126 ) ( is-a commited_cl26_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_26 ) ( value 90 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_26 90 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_26 90 ) ) ) ( make-instance ?oid of to_pay_min_26 ( value 90 ) ) )")
   (derived-class to_pay_min_26))

([rule_cl348_st3_injury-deductive] of ntm-deductive-rule
   (pos-name rule_cl348_st3_injury-deductive-gen270)
   (depends-on lc:case lc:case commited_cl348_st3)
   (implies commited_cl348_st3)
   (deductive-rule "?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ( not ( commited_cl348_st3 ( defendant ?Defendant ) ) ) => ( commited_cl348_st3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl348_st3_injury-deductive-gen270 ( declare ( salience ( calc-salience commited_cl348_st3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen114 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ( object ( name ?gen115 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ( not ( object ( is-a commited_cl348_st3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl348_st3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl348_st3 ?Defendant ) ) ) ( make-instance ?oid of commited_cl348_st3 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl348_st3))

([rule_cl348_st1_injury-deductive] of ntm-deductive-rule
   (pos-name rule_cl348_st1_injury-deductive-gen269)
   (depends-on lc:case lc:case commited_cl348_st1)
   (implies commited_cl348_st1)
   (deductive-rule "?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ( not ( commited_cl348_st1 ( defendant ?Defendant ) ) ) => ( commited_cl348_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl348_st1_injury-deductive-gen269 ( declare ( salience ( calc-salience commited_cl348_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen102 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:victim_injuries \"serious\" ) ) ( object ( name ?gen103 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ( not ( object ( is-a commited_cl348_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl348_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl348_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_cl348_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl348_st1))

([rule_cl339_st3_injury-deductive] of ntm-deductive-rule
   (pos-name rule_cl339_st3_injury-deductive-gen268)
   (depends-on lc:case lc:case commited_cl339_st3)
   (implies commited_cl339_st3)
   (deductive-rule "?gen90 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ?gen91 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ( not ( commited_cl339_st3 ( defendant ?Defendant ) ) ) => ( commited_cl339_st3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl339_st3_injury-deductive-gen268 ( declare ( salience ( calc-salience commited_cl339_st3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen90 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ( object ( name ?gen91 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_conscious \"no\" ) ) ( not ( object ( is-a commited_cl339_st3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl339_st3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl339_st3 ?Defendant ) ) ) ( make-instance ?oid of commited_cl339_st3 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl339_st3))

([rule_cl339_st1_injury-deductive] of ntm-deductive-rule
   (pos-name rule_cl339_st1_injury-deductive-gen267)
   (depends-on lc:case lc:case commited_cl339_st1)
   (implies commited_cl339_st1)
   (deductive-rule "?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ( not ( commited_cl339_st1 ( defendant ?Defendant ) ) ) => ( commited_cl339_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl339_st1_injury-deductive-gen267 ( declare ( salience ( calc-salience commited_cl339_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen78 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:victim_injuries \"slight\" ) ) ( object ( name ?gen79 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_conscious \"yes\" ) ) ( not ( object ( is-a commited_cl339_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl339_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl339_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_cl339_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl339_st1))

([rule_cl44-deductive] of ntm-deductive-rule
   (pos-name rule_cl44-deductive-gen266)
   (depends-on lc:case commited_cl44)
   (implies commited_cl44)
   (deductive-rule "?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ) ( not ( commited_cl44 ( defendant ?Defendant ) ) ) => ( commited_cl44 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl44-deductive-gen266 ( declare ( salience ( calc-salience commited_cl44 ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_done_U_turn_prohibited_by_traffic_sign \"yes\" ) ) ( not ( object ( is-a commited_cl44 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl44 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl44 ?Defendant ) ) ) ( make-instance ?oid of commited_cl44 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl44))

([rule_cl41-deductive] of ntm-deductive-rule
   (pos-name rule_cl41-deductive-gen265)
   (depends-on lc:case commited_cl41)
   (implies commited_cl41)
   (deductive-rule "?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ) ( not ( commited_cl41 ( defendant ?Defendant ) ) ) => ( commited_cl41 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl41-deductive-gen265 ( declare ( salience ( calc-salience commited_cl41 ) ) ) ( run-deductive-rules ) ( object ( name ?gen60 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_intersection \"no\" ) ) ( not ( object ( is-a commited_cl41 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl41 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl41 ?Defendant ) ) ) ( make-instance ?oid of commited_cl41 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl41))

([rule_cl35_st1-deductive] of ntm-deductive-rule
   (pos-name rule_cl35_st1-deductive-gen264)
   (depends-on lc:case lc:case commited_cl35_st1)
   (implies commited_cl35_st1)
   (deductive-rule "?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:speed_adjustment_according_to \"road_condition\" ) ) ?gen49 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed \"no\" ) ) ( not ( commited_cl35_st1 ( defendant ?Defendant ) ) ) => ( commited_cl35_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl35_st1-deductive-gen264 ( declare ( salience ( calc-salience commited_cl35_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen48 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:speed_adjustment_according_to \"road_condition\" ) ) ( object ( name ?gen49 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_adjusted_speed \"no\" ) ) ( not ( object ( is-a commited_cl35_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl35_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl35_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_cl35_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl35_st1))

([rule_cl29_st1-deductive] of ntm-deductive-rule
   (pos-name rule_cl29_st1-deductive-gen263)
   (depends-on lc:case commited_cl29_st1)
   (implies commited_cl29_st1)
   (deductive-rule "?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ) ( not ( commited_cl29_st1 ( defendant ?Defendant ) ) ) => ( commited_cl29_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl29_st1-deductive-gen263 ( declare ( salience ( calc-salience commited_cl29_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen39 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_adjusted_driving_to_right_road_side \"no\" ) ) ( not ( object ( is-a commited_cl29_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl29_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl29_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_cl29_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl29_st1))

([rule_cl27_st1-deductive] of ntm-deductive-rule
   (pos-name rule_cl27_st1-deductive-gen262)
   (depends-on lc:case lc:case commited_cl27_st1)
   (implies commited_cl27_st1)
   (deductive-rule "?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ( not ( commited_cl27_st1 ( defendant ?Defendant ) ) ) => ( commited_cl27_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl27_st1-deductive-gen262 ( declare ( salience ( calc-salience commited_cl27_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_joining \"yes\" ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ( not ( object ( is-a commited_cl27_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl27_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl27_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_cl27_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl27_st1))

([rule_cl26_st2-deductive] of ntm-deductive-rule
   (pos-name rule_cl26_st2-deductive-gen261)
   (depends-on lc:case lc:case commited_cl26_st2)
   (implies commited_cl26_st2)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ( not ( commited_cl26_st2 ( defendant ?Defendant ) ) ) => ( commited_cl26_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_cl26_st2-deductive-gen261 ( declare ( salience ( calc-salience commited_cl26_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:wants_to_do_traffic_action \"yes\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_previously_convinced \"no\" ) ) ( not ( object ( is-a commited_cl26_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_cl26_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_cl26_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_cl26_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_cl26_st2))

