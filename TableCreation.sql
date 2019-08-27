create table Locations(id serial, name varchar(50) default 'None', street_address varchar(60) not null, second_line varchar(20) default 'None', city varchar(15) not null, state varchar(2) not null, zip integer not null, primary key (id), unique (street_address, city, state, zip, name, second_line), CONSTRAINT zip_integrity check (zip > 9999)); 

--create table Source(url varchar(500), primary key (url));

create table Events(title varchar(50) not null, location_id integer not null, start_date date not null, end_date date, start_time time not null, end_time time, description varchar(600), website_url varchar(500) not null, upload_time timestamp not null, primary key (location_id, start_date, start_time), foreign key (location_id) references Locations (id), unique(title, location_id),CONSTRAINT date_start_end_integrity CHECK (start_date <= end_date), CONSTRAINT time_start_end_integrity CHECK (start_time < end_time));


/* Pulled out but kept just in case
, foreign key (website_url) references Source (url)*/

