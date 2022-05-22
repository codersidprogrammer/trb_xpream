SELECT DISTINCT
	db_material.mat_cml_reference, 
	db_master_cml.cml_physchemdescr
FROM
	db_ws,
	db_tasklist
	LEFT JOIN
	db_access
	ON 
		db_tasklist.gen_mpd_task = db_access.acc_mpd_task
	LEFT JOIN
	db_master_access
	ON 
		db_access.acc_panel = db_master_access.mas_access
	LEFT JOIN
	db_material
	ON 
		db_master_access.mas_amm_install = db_material.mat_mpd_task
	LEFT JOIN
	db_master_cml
	ON 
		db_material.mat_cml_reference = db_master_cml.cml_applicnbr
WHERE
	db_tasklist.gen_mpd_task = db_ws.ws_tasknbr