delimiter //

create procedure create_flight(in team_id int, in path_id int, in palne_id int)
begin
	set @flight_id = add_flight(create_flight_name(path_id,plane_id));
    insert into _team_r_t(_flight_ID_F,_team_ID_F) value (flight_id,team_id);
    insert into _path_r_t(_flight_ID_F,_path_ID_F) values(flight_id,team_id);
    insert into _plane_r_t(_flight_ID_F,_plane_ID_F) values(flight_id,plane_id);
end// 

delimiter ;
