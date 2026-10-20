\* Source Pyomo model name=unknown *\

min 
objectif:
+1 slack_variable

s.t.

c_e_c_masse_salariale_:
+1 ms_directe_activites
+1 ms_directe_intercontrat
+1 ms_directe_innovation
+1 ms_indirects
-1 masse_salariale
= 0

c_u_c_env_prp_rf_:
+0.02720000000000001 ms_directe_activites
-0.04000000000000001 ms_indirects
+0.034 mad
+0.002800000000000001 x_achats
+0.002800000000000001 x_st
<= 0.0465

c_u_c_env_prp_ri_:
+0.38079999999999997 ms_directe_activites
-0.5599999999999999 ms_indirects
+0.476 mad
+0.0392 x_achats
+0.0392 x_st
<= 0.6509999999999999

c_u_c_env_prp_de_:
+0.136 ms_directe_activites
-0.2 ms_indirects
+0.17 mad
+0.014000000000000002 x_achats
+0.014000000000000002 x_st
<= 0.23249999999999998

c_u_c_env_prp_fs_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_u_c_f2030_rf_:
-0.06720000000000001 ms_directe_activites
-0.084 mad
-0.04280000000000001 x_achats
-0.04280000000000001 x_st
+1 f2030_rf
<= 0.053500000000000006

c_u_c_f2030_ri_:
-0.47039999999999993 ms_directe_activites
-0.588 mad
-0.2996 x_achats
-0.2996 x_st
+1 f2030_ri
<= 0.3745

c_u_c_f2030_de_:
-0.084 ms_directe_activites
-0.10500000000000001 mad
-0.053500000000000006 x_achats
-0.053500000000000006 x_st
+1 f2030_de
<= 0.066875

c_u_c_f2030_fs_:
+1 f2030_fs
<= 0.0

c_e_c_f2030_:
+1 f2030_rf
+1 f2030_ri
+1 f2030_de
+1 f2030_fs
-1 f2030
= 0

c_u_c_projets_collaboratifs_min_:
+0.15625 ms_directe_activites
+0.03125 x_achats
+0.03125 x_st
-1 projets_collaboratifs
<= 0

c_u_c_prestations_:
+0.19760000000000003 ms_directe_activites
+0.06760000000000001 x_achats
+0.06760000000000001 x_st
-1 prestations
<= 0

c_u_c_f2030_max_:
-0.3333333333333333 masse_salariale
-0.3333333333333333 mad
-0.3333333333333333 x_achats
-0.3333333333333333 x_st
+1 f2030
<= 0.6666666666666666

c_u_c_cofinancements_:
-1 mad
+1 f2030
-1 cash
<= 0

c_u_c_st_rf_:
-0.033600000000000005 ms_directe_activites
-0.042 mad
-0.021400000000000006 x_achats
+0.018600000000000002 x_st
<= 0.026750000000000003

c_u_c_st_ri_:
-0.47039999999999993 ms_directe_activites
-0.588 mad
-0.2996 x_achats
+0.26039999999999996 x_st
<= 0.3745

c_u_c_st_de_:
-0.168 ms_directe_activites
-0.21000000000000002 mad
-0.10700000000000001 x_achats
+0.093 x_st
<= 0.13375

c_u_c_st_fs_:
+0 ONE_VAR_CONSTANT
<= 0.0

c_l_c_resultat_:
+1 slack_variable
-1 masse_salariale
-1 x_achats
-1 x_st
+1 f2030
+1 projets_collaboratifs
+1 prestations
+1 cash
+1 autres_revenus
>= 2.0

bounds
   1 <= ONE_VAR_CONSTANT <= 1
   0 <= slack_variable <= +inf
   7.0 <= ms_directe_activites <= 10.0
   0.0 <= ms_directe_intercontrat <= 1.0
   0.0 <= ms_directe_innovation <= 0.5
   7.0 <= ms_indirects <= 10.0
   15.0 <= masse_salariale <= 30.0
   5.0 <= mad <= 10.0
   5.0 <= x_achats <= 7.0
   5.0 <= x_st <= 7.0
   0 <= f2030_rf <= +inf
   0 <= f2030_ri <= +inf
   0 <= f2030_de <= +inf
   0 <= f2030_fs <= +inf
   0.0 <= f2030 <= 11.0
   3.0 <= projets_collaboratifs <= 4.0
   3.0 <= prestations <= 4.0
   5.0 <= cash <= 8.0
   0.5 <= autres_revenus <= 1.0
end
