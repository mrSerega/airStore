create database _airStore_DB;
use _airStore_DB;
create table _flight_T(_ID_F int not null primary key auto_increment, _number_V_F varchar(255));
create table _team_R_T(_ID_F int not null primary key auto_increment, _flight_ID_F int not null, _team_ID_F int not null);
create table _team_T(_ID_F int not null primary key auto_increment); # why?
create table _member_R_T(_ID_F int not null primary key auto_increment, _team_ID_F int not null, _memeber_ID_F int not null);
create table _member_T(_ID_F int not null primary key auto_increment, _name_V_F varchar(255), _surname_V_F varchar(255));
create table _post_R_T(_ID_F int not null primary key auto_increment, _post_ID_F int not null, _member_ID_F int not null);
create table _post_T(_ID_F int not null primary key auto_increment, _name_V_F varchar(255));
create table _path_R_T(_ID_F int not null primary key auto_increment, _flight_ID_F int not null, _path_ID_F int not null);
create table _path_T(_ID_F int not null primary key auto_increment); # why?
create table _point_R_T(_ID_F int not null primary key auto_increment ,_path_ID_F int not null, _point_ID_F int not null);
create table _point_T(_ID_F int not null primary key auto_increment, _name_V_F varchar(255), _time_V_F time);
create table _plane_R_T(_ID_F int not null primary key auto_increment, _flight_ID_F int not null, _plane_ID int not null);
create table _plane_T(_ID_F int not null primary key auto_increment); # why?
create table _model_R_T(_ID_F int not null primary key auto_increment, _plane_ID int not null, _model_ID int not null);
create table _model_T(_ID_F int not null primary key auto_increment, _number_V_F varchar(255));
create table _mask_R_T(_ID_F int not null primary key auto_increment, _model_ID_F int not null, _mask_ID_F int not null);
create table _mask_T(_ID_F int not null primary key auto_increment); # why?
create table _mask_site_R_T(_ID_F int not null primary key auto_increment, _mask_ID_F int not null, _mask_site_ID_F int not null);
create table _mask_site_T(_ID_F int not null primary key auto_increment, _number_V_F int not null);
create table _mask_status_R_T(_ID_F int not null primary key auto_increment, _mask_site_ID int not null, _mask_status_ID int not null);
create table _status_T(_ID_F int not null primary key auto_increment, _status_V_F varchar(255));
create table _site_R_T(_ID_F int not null primary key auto_increment, _boarding_pass_ID_F int not null, _site_ID_F int not null);
create table _site_T(_ID_F int not null primary key auto_increment, _number_V_F int not null);
create table _status_R_T(_ID_F int not null primary key auto_increment, _site_ID_F int not null, _status_ID_F int not null);
create table _ticket_R_T(_ID_F int not null primary key auto_increment, _site_ID_F int not null, _ticket_ID_F int not null);
create table _ticket_T(_ID_F int not null primary key auto_increment, _number_V_F varchar(255), _cost_V_F int not null);
create table _order_R_T(_ID_F int not null primary key auto_increment, _ticket_ID_F int not null, _order_ID_F int not null);
create table _order_T(_ID_F int not null primary key auto_increment, _cost_V_F int not null);
create table _user_R_T(_ID_F int not null primary key auto_increment, _order_ID_F int not null, _user_ID_F int not null);
create table _user_T(_ID_F int not null primary key auto_increment, _login_V_F varchar(255), _pass_hash_V_F int not null);
create table _person_R_T(_ID_F int not null primary key auto_increment, _user_ID_F int not null, _person_ID_F int not null);
create table _person_T(_ID_F int not null primary key auto_increment, _pass_number_V_F varchar(255), _name_V_F varchar(255), _surname_V_F varchar(255));
create table _score_R_T(_ID_F int not null primary key auto_increment, _user_ID_F int not null, _score_ID_F int not null);
create table _score_T(_ID_F int not null primary key auto_increment, _value_V_F int not null);
create table _baggage_r_t(_ID_F int not null primary key auto_increment, _user_id_F int not null, _baggage_id_F int not null);
create table _baggage_t(_ID_F int not null primary key auto_increment, _weight_V_F int);
create table _baggage_type_r_t(_ID_F int not null primary key auto_increment, _baggage_ID_F int not null, _type_ID_F int not null);
create table _baggage_type_t(_ID_F int not null primary key auto_increment, _type_V_F varchar(255));
create table _boarding_pass_r_t(_ID_F int not null primary key auto_increment, _ticket_ID_F int not null, _boarding_pass_ID_F int not null);
create table _boarding_pass_t(_ID_F int not null primary key auto_increment, _number_V_F varchar(255));
create table _boarding_pass_type_r_t(_ID_F int not null primary key auto_increment, _boarding_pass_id_f int not null, _boarding_pass_type_id_f int not null);
create table _boarding_pass_type_r(_id_f int not null primary key auto_increment, _type_v_f varchar(255));