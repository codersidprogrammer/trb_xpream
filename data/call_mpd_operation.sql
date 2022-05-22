SELECT
	db_zone_task.zon_mpd_task_code, 
	db_operation.sub_task_seq, 
	db_operation.sub_task_description, 
	db_operation.sub_task_skill, 
	db_operation.sub_mhrs
FROM
	db_tasklist
	INNER JOIN
	db_zone_task
	ON 
		db_tasklist.gen_mpd_task = db_zone_task.zon_mpd_task
	INNER JOIN
	db_operation
	ON 
		db_zone_task.zon_mpd_task = db_operation.sub_mpd_task,
	db_ws
WHERE
	db_tasklist.gen_mpd_task = db_ws.ws_tasknbr