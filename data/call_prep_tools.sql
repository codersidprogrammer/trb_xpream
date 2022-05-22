SELECT
	db_tasklist.gen_mpd_task, 
	db_prep_task.pre_task_reference, 
	db_tools.tol_part_tools, 
	db_tools.tol_qty, 
	db_tools.tol_uom
FROM
	db_prep_task
	LEFT JOIN
	db_tasklist
	ON 
		db_prep_task.pre_mpd_task = db_tasklist.gen_mpd_task
	RIGHT JOIN
	db_tools
	ON 
		db_prep_task.pre_task_reference = db_tools.tol_mpd_task,
	db_ws
WHERE
	db_tasklist.gen_mpd_task = db_ws.ws_tasknbr