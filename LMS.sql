create database LMS;
show databases;
use LMS;
create table user_details2(id int not null primary key auto_increment, email varchar(50), first_name varchar(30), last_name varchar(30), 
Password varchar(50), contact_number varchar(15), verified bool, creator_stamp datetime, creator_user int);

create table hired_candidate(id int not null primary key auto_increment,  first_name varchar(30), middle_name varchar(30), last_name varchar(30), 
hired_city varchar(20), degree varchar(20), hired_date date, hired_lab varchar(30), attitude varchar(150), communication_remark varchar(150), 
knowledge_remark varchar(150), aggregate_remark varchar(150), creator_stamp datetime, creator_user int);

create table fellowship_candidate(id int not null primary key auto_increment, cic_id varchar(30),  first_name varchar(50), middle_name varchar(30), last_name varchar(30), 
 hired_city varchar(30), degree varchar(30), hired_city varchar(30), hired_date date, mobile_number varchar(30), permanent_pincode int, hired_lab varchar(30), attitude varchar(30), communication_remark varchar(30), 
knowledge_remark varchar(150), aggregate_remark varchar(150), creator_stamp datetime, creator_user int, birth_date date, 
is_birth_verified bool, parent_name varchar(30), parent_occupation varchar(30), parents_mobile_number varchar(30), parents_annual_salary decimal,
local_address varchar(255), permanent_address varchar(255));

create table candidate_bank_details(id int not null primary key auto_increment ,candidate_id int, name varchar(30) , account_number varchar(30), 
  is_account_number_verified bool, ifsc_code varchar(30), is_ifsc_code_verified bool, pan_number varchar(30), is_pan_number_verified bool, addhaar_number varchar(30),
  is_addhaar_num_verified bool, creator_stamp datetime, creator_user int, foreign key(candidate_id) references fellowship_candidate(id));
  
  create table candidate_Qualification(id int not null primary key auto_increment, candidate_id int, diploma varchar(30), degree_name varchar(30),
  is_degree_name_verified bool, employee_decipline varchar(30), is_employee_decipline_verified bool, passing_year tinyint, is_passing_year_verified bool, aggr_per tinyint,
  is_passing_year_verified bool, final_year_per tinyint, is_final_year_per_verified bool, training_institute varchar(30), 
  is_training_institute_verified bool, training_duration_month tinyint, is_training_duration_month_verified bool, other_training varchar(30),
  is_other_training_verified bool, creator_stamp datetime, creator_user int, foreign key(candidate_id) references fellowship_candidate(id));
  
  create table candidate_documents(id int not null primary key auto_increment, candidate_id int, doc_type varchar(30) , doc_path varchar(255),
  Status varchar(30), creator_stamp datetime, creator_user int, foreign key(candidate_id) references fellowship_candidate(id));
  
  create table company(id int not null primary key auto_increment, name varchar(30), address varchar(255), location varchar(30), status varchar(30), creator_stamp datetime,
  creator_user int);
  
  create table maker_program(id int not null primary key auto_increment, program_name varchar(30), program_type varchar(30), 
 program_link varchar(255) , tech_stack_id int, tech_type_id int, is_program_approved bool,
 description varchar(30), status varchar(30), creator_stamp datetime, creator_user int,foreign key(tech_stack_id) references tech_stack(id),foreign key(tech_type_id) references tech_type(id));
 
 create table lab(id int not null primary key auto_increment, name varchar(30), location varchar(30), address  varchar(255), 
 Status varchar(30), creator_stamp datetime, creator_user int);
 
 create table tech_stack(id int not null primary key auto_increment,tech_name varchar(30), image_path varchar(255), framework varchar(30),
 cur_status varchar(30), creator_stamp datetime, creator_user int);
 
 create table tech_type(id int not null primary key auto_increment, type_name varchar(30), cur_status varchar(30), creator_stamp datetime, 
 creator_user int);
 
 create table mentor(id int not null primary key auto_increment, name varchar(30), mentor_type varchar(30), lab_id int,
  Status varchar(30), creator_stamp datetime, creator_user int, foreign key(lab_id) references lab(id));
  
  create table mentor_ideation_map(id int not null primary key auto_increment, parent_mentor_id int, mentor_id int, status varchar(30), creator_stamp datetime,
creator_user int, foreign key(parent_mentor_id) references mentor(id), foreign key(mentor_id) references mentor(id));

create table mentor_tech_stack(id int not null primary key auto_increment, mentor_id int, tech_stack_id int,
Status varchar(30), creator_stamp datetime, creator_user int, foreign key(mentor_id) references mentor(id), foreign key(tech_stack_id) references tech_stack(id));

create table lab_threshold(id int not null primary key auto_increment, lab_id int, lab_capacity int, lead_threshold int,
 ideation_engg_threshold int, buddy_engg_threshold int,
 Status varchar(30), creator_stamp datetime, creator_user int, foreign key(lab_id) references lab(id));
 
 create table company_requirement(id int not null primary key auto_increment,company_id int, requested_month varchar(30), city varchar(30),
  is_doc_verifrication bool, requirement_doc_path varchar(255), no_of_engg tinyint,
  tech_stack_id int, tech_type_id int, maker_program_id int, 
  lead_id int, ideation_engg_id int, buddy_engg_id int, special_remark varchar(30),
  Status varchar(30), creator_stamp datetime, creator_user int,
  foreign key(company_id) references mentor(id), foreign key(tech_stack_id) references tech_stack(id), foreign key(tech_type_id) references tech_type(id),
 foreign key(maker_program_id) references maker_program(id), foreign key(lead_id) references mentor(id), foreign key(ideation_engg_id) references mentor(id), foreign key(ideation_engg_id) references mentor(id),
  foreign key(buddy_engg_id) references mentor(id)
  );
  
  create table candidate_stack_assignment(id int not null primary key auto_increment, requirement_id int, candidate_id int, assign_date date, complete_date date,
  Status varchar(30), creator_stamp datetime, creator_user int);
  
