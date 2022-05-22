SELECT
	db_prep_task.pre_mpd_task, 
	db_operation.sub_mpd_task, 
	db_master_task.amm_description, 
	db_operation.sub_task_seq, 
	db_operation.sub_task_description
FROM
	db_tasklist
	INNER JOIN
	db_prep_task
	ON 
		db_tasklist.gen_mpd_task = db_prep_task.pre_mpd_task
	INNER JOIN
	db_operation
	ON 
		db_prep_task.pre_task_reference = db_operation.sub_mpd_task
	INNER JOIN
	db_master_task
	ON 
		db_prep_task.pre_task_reference = db_master_task.amm_task_reference,
	db_ws
WHERE
	db_tasklist.gen_mpd_task = db_ws.ws_tasknbr