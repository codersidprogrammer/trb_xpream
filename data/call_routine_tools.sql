SELECT
	db_tasklist.gen_mpd_task, 
	db_tools.tol_part_tools, 
	db_tools.tol_qty, 
	db_tools.tol_uom
FROM
	db_tasklist
	RIGHT JOIN
	db_tools
	ON 
		db_tasklist.gen_mpd_task = db_tools.tol_mpd_task,
	db_ws
WHERE
	db_tasklist.gen_mpd_task = db_ws.ws_tasknbr