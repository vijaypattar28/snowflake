select current_timestamp(), getdate(), systimestamp(), localtimestamp()
select convert_timezone('America/Detroit', current_timestamp()) as easter_time_zone
select convert_timezone('Europe/London', current_timestamp()) as GMT
