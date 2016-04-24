delimiter //

create function create_ticket_number(flight_id int) returns varchar(255)
begin
	set @num = (select count(_id_f) from _ticket_r_t where _flight_id_v_f=flight_id);
    set @flight_number = (select distinct _number_v_f from _flight_t where _id_f = flight_id);
    return concat(flight_number,'t',num);
end//

delimiter ;