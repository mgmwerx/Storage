/*Creates the tables for a smartcity event page. The tables have standard integrity checks for duplicate events by virute of a date, time, and location. Other checks are for locations not having the same full attributes. Defaults are put in for optional data to keep them from being null and thus compared in the unique constraint. Events must have a start date before or equal to an end date. Same for start and end time.

As the tables grow, consider adding indexes. Initial thoughts are on events.start_date and events.location_id. This will allow for faster searches for locations and date ranges. 

Use this one for querying events at a specific location(s)
create index event_locs on events (location_id);


Use this(changing the number at the end) to create an index of each month)
create index events_jan on events(start_date) where extract(month from start_date) = 1;--I'm not 100% sure this works so I conly created one.


*/


create table Locations(id serial, name varchar(50) default 'None', street_address varchar(60) not null, second_line varchar(20) default 'None', city varchar(15) not null, state varchar(2) not null, zip integer not null, primary key (id), unique (street_address, city, state, zip, name, second_line), CONSTRAINT zip_integrity check (zip > 9999)); 


create table Events(title varchar(50) not null, location_id integer not null, start_date date not null, end_date date, start_time time not null, end_time time, description varchar(600), website_url varchar(500) not null, upload_time timestamp not null, primary key (location_id, start_date, start_time), foreign key (location_id) references Locations (id), unique(title, location_id),CONSTRAINT date_start_end_integrity CHECK (start_date <= end_date), CONSTRAINT time_start_end_integrity CHECK (start_time < end_time));


/*This table was pulled out of the MVP. Future iterations could use a table of URLs to scrape from allowing more sites with minimum configration*/
--create table Source(url varchar(500), primary key (url));
/* Pulled out but kept just in case
, foreign key (website_url) references Source (url)*/