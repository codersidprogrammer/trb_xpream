SELECT DISTINCT
	db_tasklist.gen_prep_task, 
	db_tasklist.gen_prep_mhrs, 
	db_tasklist.gen_independent, 
	db_tasklist.gen_distinct
FROM
	db_ws,
	db_tasklist
WHERE
	db_tasklist.gen_mpd_task = db_ws.ws_tasknbr AND
	db_tasklist.gen_prep_task IS NOT NULL