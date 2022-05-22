SELECT DISTINCT
	db_material.mat_ipc_reference, 
	db_material.mat_cml_reference, 
	db_master_cml.cml_physchemdescr, 
	db_material.mat_part_number, 
	db_material.mat_part_description, 
	db_material.mat_qty, 
	db_material.mat_uom
FROM
	db_tasklist
	LEFT JOIN
	db_prep_task
	ON 
		db_tasklist.gen_mpd_task = db_prep_task.pre_mpd_task
	LEFT JOIN
	db_material
	ON 
		db_prep_task.pre_task_reference = db_material.mat_mpd_task
	LEFT JOIN
	db_master_cml
	ON 
		db_material.mat_cml_reference = db_master_cml.cml_applicnbr,
	db_ws
WHERE
	db_tasklist.gen_mpd_task = db_ws.ws_tasknbr