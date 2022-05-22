SELECT
	db_prep_task.pre_mpd_task, 
	db_prep_task.pre_task_reference, 
	db_master_task.amm_phase_condition, 
	db_master_task.amm_skill, 
	db_master_task.amm_task_code, 
	db_master_task.amm_description, 
	db_master_task.amm_men, 
	db_master_task.amm_duration, 
	db_master_task.amm_exp_mhrs, 
	db_master_task.amm_independen_mark, 
	db_master_task.amm_distinct
FROM
	db_tasklist
	RIGHT JOIN
	db_prep_task
	ON 
		db_tasklist.gen_mpd_task = db_prep_task.pre_mpd_task
	INNER JOIN
	db_master_task
	ON 
		db_prep_task.pre_task_reference = db_master_task.amm_task_reference,
	db_ws
WHERE
	db_tasklist.gen_mpd_task = db_ws.ws_tasknbr
ORDER BY
	db_master_task.amm_phase_condition ASC, 
	db_prep_task.pre_id ASC