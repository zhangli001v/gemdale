drop table if exists jdtask;
drop table if exists jduser;

create table jdtask (
	id bigint,
	title varchar(128) not null,
	description varchar(255),
	user_id bigint not null,
    primary key (id)
);

create table jduser (
	id bigint,
	login_name varchar(64) not null unique,
	name varchar(64) not null,
	password varchar(255) not null,
	salt varchar(64) not null,
	roles varchar(255) not null,
	register_date timestamp not null,
	primary key (id)
);


create sequence jdseq_task start with 100 increment by 20;
create sequence jdseq_user start with 100 increment by 20;