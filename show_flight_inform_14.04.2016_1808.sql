delimiter //

create procedure show_flight_inform_proc(in mode_p int, in id_of_flight int)
comment '1 is short version, 0 is full version'
begin
    if mode_p = 0 then
        set @id_of_path = (select _path_id_f from _path_r_t where _flight_id_f = id_of_flight);
        set @min_id_of_point = (select min(_point_ID_F) from _point_r_t where _path_ID_F = id_of_path); 
        set @max_id_of_poin = (select max(_point_ID_F) from _point_r_t where _path_ID_F = id_of_path); 
        
        select _flight_t._number_V_F as flight_number
		from _flight_t
		where flight_number = id_of_flight
		
        union
        
        select _name_v_f, _time_v_f
		from _point_t
		where _point_t._id_f = min_id_of_point
        
        union 
        
        select __name_V_F, _time_v_f
        from _point_t
        where _point_t._id_f = max_id_of_point;
	elseif mode_p = 1 then
		select _flight_t._number_v_f as flight_number
        from _flight_t
        
        union
        
        select _name_v_f, _time_v_f
		from _point_t
		where _point_t._id_f = (select min(_point_ID_F) from _point_r_t where _path_ID_F = (select _path_id_f from _path_r_t where _flight_id_f = flight_number))
        
        union 
        
        select __name_V_F, _time_v_f
        from _point_t
        where _point_t._id_f = (select max(_point_ID_F) from _point_r_t where _path_ID_F = (select _path_id_f from _path_r_t where _flight_id_f = flight_number));
    else
		select 'wrong input';
	end if;
end //

delimiter ;