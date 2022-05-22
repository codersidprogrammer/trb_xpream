SELECT DISTINCT
	db_master_cml.cml_applicnbr, 
	db_master_cml.cml_physchemdescr, 
	db_master_cml.cml_product, 
	db_master_cml.cml_effrg, 
	db_master_cml.cml_comment
FROM
	db_prep_task
	INNER JOIN
	db_material
	ON 
		db_prep_task.pre_task_reference = db_material.mat_mpd_task
	INNER JOIN
	db_tasklist
	ON 
		db_prep_task.pre_mpd_task = db_tasklist.gen_mpd_task
	INNER JOIN
	db_master_cml
	ON 
		db_material.mat_cml_reference = db_master_cml.cml_applicnbr,
	db_ws
WHERE
	db_tasklist.gen_mpd_task = db_ws.ws_tasknbr