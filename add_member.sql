delimiter //

create function add_member(_name varchar(255), _surname varchar(255), post_id int) returns int
begin
	insert into _member_t(_name_v_f, _surname_v_f) values(_name,_surname);
    set @member_id = (select last_insert_id(_mamber_t));
    insert into _post_r_t(_member_ID_F, _post_ID_F) values(member_id, post_id);
    return member_id;
end//

delimiter ;