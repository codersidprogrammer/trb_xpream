SELECT DISTINCT
	db_access.acc_panel, 
	db_master_access.mas_amm_removal, 
	db_master_access.mas_amm_install, 
	db_master_access.mas_remove_mhrs, 
	db_master_access.mas_install_mhrs
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
WHERE
	db_tasklist.gen_mpd_task = db_ws.ws_tasknbr