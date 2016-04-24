delimiter //

create function add_team(firstCaptain_id int, secondCaptain_id int) returns int
begin
	insert into _team_t values();
    set @team_id = (select last_insert_id(_team_t));
    insert into _member_r_t(_team_ID_F,_memeber_ID_F) values(firstCaptain_id, team_id);
    insert into _member_r_t(_team_ID_F,_memeber_ID_F) values(SecondCaptain_id, team_id);
    return team_id;
end//

delimiter ;