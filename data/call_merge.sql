SELECT
	db_merge_task.mer_combine, 
	db_merge_task.mer_code, 
	db_tasklist.gen_task_title, 
	db_merge_task.mer_mpd_task
FROM
	db_ws,
	db_tasklist
	RIGHT JOIN
	db_merge_task
	ON 
		db_tasklist.gen_mpd_task = db_merge_task.mer_combine
WHERE
	db_merge_task.mer_mpd_task = db_ws.ws_tasknbr