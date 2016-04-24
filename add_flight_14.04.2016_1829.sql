delimiter //

create function add_flight(_number varchar(255)) returns int
comment 'add a new flight'
begin
	insert into _flight_t(_number_v_f) values(_number);
    return (select distinct _id_f from _flight_t where _number_V_F = _number);
end//

delimiter ;