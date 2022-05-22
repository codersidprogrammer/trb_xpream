SELECT
	db_zone_task.zon_mpd_task, 
	db_zone_task.zon_mpd_task_code, 
	db_zone_task.zon_description, 
	db_tasklist.gen_task_title, 
	db_zone_task.zon_manpower, 
	db_zone_task.zon_task_mhrs
FROM
	db_tasklist
	LEFT JOIN
	db_zone_task
	ON 
		db_tasklist.gen_mpd_task = db_zone_task.zon_mpd_task,
	db_ws
WHERE
	db_tasklist.gen_mpd_task = db_ws.ws_tasknbr