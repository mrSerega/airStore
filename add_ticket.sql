delimiter //

create function add_ticket(flight_id int, baggage_id int, order_id int, type_id int, status_id int) returns int
begin
	insert into _ticket_t(_number_v_f, _cost_v_f) values(create_ticket_number(flight_id),get_cost(flight_id,type_id,status_id));
    set @ticket_id = (select last_insert_id(_ticlet_t));
    insert into _ticket_r_t(_flight_id_f, ticket_id_f) values(flight_id, ticket_id);
    insert into _baggage_r_t(_baggage_id_F, _ticket_ID_F) values(baggage_id, ticket_id);
    insert into _order_r_t(_order_ID_F,_ticket_ID_F) values(order_id,ticket_id);
    insert into _boarding_pass_r_t(_boarding_pass_ID_F,_ticket_ID_F) values(add_boardingPass(type_id,status_id,flight_id),ticket_id);
    return ticket_id;
end//
delimiter ;