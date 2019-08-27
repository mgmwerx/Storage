/*seed data for smart city application  */


INSERT INTO Locations (street_address, city, state, zip, name, second_line) values ('1234 smartcity ln' , 'montgomery', 'AL', 12345, DEFAULT, DEFAULT);
INSERT INTO Locations (street_address, city, state, zip, name, second_line) values ('2345 smartcity ln' , 'montgomery', 'AL', 12345,'great hall', DEFAULT);
INSERT INTO Locations (street_address, city, state, zip, name, second_line) values ('3456 smartcity ln' , 'montgomery', 'AL', 12345,'tavern', DEFAULT);
INSERT INTO Locations (street_address, city, state, zip, name, second_line) values ('4567 smartcity ln' , 'montgomery', 'AL', 12345,'ballroom one', DEFAULT);
INSERT INTO Locations (street_address, city, state, zip, name, second_line) values ('5678 smartcity ln' , 'montgomery', 'AL', 12345, DEFAULT, DEFAULT);
INSERT INTO Locations (street_address, city, state, zip, name, second_line) values ('6789 smartcity ln' , 'montgomery', 'AL', 12345, DEFAULT, DEFAULT);
INSERT INTO Locations (street_address, city, state, zip, name, second_line) values ('7890 smartcity ln' , 'montgomery', 'AL', 12345, DEFAULT, DEFAULT);
INSERT INTO Locations (street_address, city, state, zip, name, second_line) values ('1234 smartcity ln' , 'montgomery', 'AL', 12345, DEFAULT, DEFAULT);--should not work



INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Meet and Greet',1,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),'Introductions','www.eventbrite.com/Events&ID=1',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Scrum 1',2,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME, (CURRENT_TIME + interval '1'), DEFAULT,'www.facebook.com/Events&ID=2',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Scrum 2',3,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),DEFAULT,'www.google.com/Events&ID=3',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Scrum 3',4,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),DEFAULT,'www.eventbrite.com/Events&ID=4',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Some cool happening',5,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),'Description of this cool happening','www.facebook.com/Events&ID=5',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Conference',6,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),'Agenda Description','www.google.com/Events&ID=6',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Billiards tournament',7,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),'Come play some pool','www.google.com/Events&ID=7',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Pies and Pints',1,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),'Grab a slice','www.eventbrite.com/Events&ID=8',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Hackathon',2,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),'Test your skills','www.facebook.com/Events&ID=9',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Gaming Competition',3,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),'May the best gamer win','www.eventbrite.com/Events&ID=10',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Comicon',4,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),'Get your geek on','www.google.com/Events&ID=11',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Another fun thing',5,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),DEFAULT,'www.eventbrite.com/Events&ID=12',CURRENT_TIMESTAMP);
INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
('Closing Ceremony',6,CURRENT_DATE,CURRENT_DATE,CURRENT_TIME,(CURRENT_TIME + interval '1'),'Remarks from the boss','www.eventbrite.com/Events&ID=13',CURRENT_TIMESTAMP);


--INSERT INTO Source values ('www.google.com');
--INSERT INTO Source values ('www.facebook.com');
--INSERT INTO Source values ('www.yahoo.com');
--INSERT INTO Source values ('www.espn.go.com');
--INSERT INTO Source values ('www.slack.com');
--INSERT INTO Source values ('www.trello.com');
--INSERT INTO Source values ('www.eventbrite.com');

/*Template for adding more seed events */
--('<title>',1,CURRENT_DATE,CURRENT_TIME,CURRENT_DATE,CURRENT_TIME,'<description>','<url>',CURRENT_TIMESTAMP);
--INSERT INTO Events (title, location_id, start_date, end_date, start_time, end_time, description, website_url, upload_time) values 
