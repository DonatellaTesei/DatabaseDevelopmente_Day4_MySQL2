#create database
CREATE DATABASE 'NAME' DEFAULT CHARACTER SET utf8; #click GO
#or click on NEW and click GO
#or click on DATABASE and type a name and click GO

#select DATABASE and click on SQL table

#create table
CREATE TABLE 'user'(user_id int(11) not null AUTO_INCREMENT PRIMARY KEY ,
                   first_name varchar(55) not null,
                   birthdate date not null,
                   email varchar(55) not null,
                   gender enum('Male', 'Female', 'Neither') not null,
                   fk_profile_id int,
                   FOREIGN KEY (fk_profile_id) REFERENCES 'profile' (profile_id)); #press GO

#Primary key, gold key. 
#Every table has its own primary key and can have multiple foreign keys referring to information in other tables    

#sometimes the table name is interpreted as a command by MySQL, in that case use quotes e.g. 'user'  
Similarly, when looking up a varchar, put the word in between quotes      
#AUTO_INCREMENT: if you add it, the No. of the primary key will increase as you add data. Primary key is ALWAYS auto-incremented
#not Null is added to a specific column if you want that that field is NOT left empty. This does not apply to primary and foreign keys since they are autofilled with integers when adding value to the table
#in the case of a photo description, where filling the field is not mandatory, there is no need to add the not null specification
 
#DATA TYPE        
#varchar requires length specification
#char (fixed-length) does not require to define a length
#text does not require length specification 

#int length is 11 by default, if you want to add it, write int(11)
#floats. For decimals you need to enter tot nulmber of figures and number of figures after the comma,
#like so: decimal(5,2), not null. Enter the numbers like so: 12.25 w/ a dot

#date does not require length specification, the default format is YYYY-MM-DD (use this format when entering data)
#datetime default format is YYYY-MM-DD HH:MM:SS
#timestamp default format is YYYYMMDDHHMMSS
#time default format is HH:MM:SS
#enum is a list that can be used with e.g., gender, payment method, etc. The options that you want to be displayed have to be added. Add not null if the information is mandatory.
#enum can also be used for TRUE or FALSE since MySQL has no boleans

#foreign keys 
#if it referrs to pre-existing keys, use the method shown above
#if the key it refers to has not been created yet, add the fk name to the table but connect the keys after the other table is created, like shown below
ALTER TABLE 'user' ADD FOREIGN KEY(fk_profile_ID) REFERENCES 'profile' (profile_id); #press GO

#unique keys 
#can be set in user>structure>more A grey key will appear
#Define unique keys when you do not want the user to use the same data multiple times, as in the case of email, phone number, etc. As a result, if the same data are entered twice, you would get an error.
#DESIGNER
#after creating tables click on the database name, click on thebanner, MORE, DESIGNER, to see connections among tables

#if you forget table names and attributes names
#type (tablename.) and a list of all attributes will appear

#ADD data
#Fill the data only after having connected all tables
#go to TABLE>TABLE>STRUCTURE>SQL>INSERT and a template will appear to fill out data. Take out the query that is AUTO_INCREMENT and the corresponding value,
also delete the squared brackets and enter the data in between quotes. 
#alternatively, click INSERT from the TOP BANNER and fill out a table
#fk_ here do not enter data, just the ID No. that corresponds to that attribute in the connected table
#you can add multiple users data all at once by simply separating the code with ;
INSERT INTO `profile`( `bio`) VALUES ('biologist');

#VISUALIZE DATA within each table (e.g., table name: user) #select the table first
SELECT first_name, last_name FROM user;
SELECT * FROM user; #selects all info contained in a table
SELECT * FROM user WHERE last_name='Tesei'; #use quotes for the char or varchar
SELECT first_name, birthdate FROM user WHERE last_name='Tesei';
SELECT password, email, language FROM user WHERE 'user_id'=1;
SELECT * FROM user WHERE last_name LIKE 'T%'; #shows all last names starting with T
SELECT * FROM user WHERE last_name LIKE '%T%'; #will show all lasts names where T is in the beginning or middle
SELECT count(*) FROM user;
SELECT count(user_id) FROM user;
SELECT MAX(price) FROM books #will show the most expensive book
#to find names of the properties in a table type tablename. and a list will appear

#UPDATE entries within each table #select the table first
#click on UPDATE, a template wil appear. leave only the value that you want to change 
UPDATE `user` SET `language`='Spanish' WHERE user_id=4; #if you do not use WHERE, the entry will be changed for all user_IDs

#ALTER a table to add a fk_ after creating all tables 
ALTER TABLE 'user' ADD FOREIGN KEY(fk_profile_ID) REFERNCES 'profile'(profile_ID); 
ALTER TABLE 'user' ADD PRIMARY KEY(user_ID);
ADD CONSTRAINT `enroll_ibfk_1` FOREIGN KEY (`fk_student_id`) REFERENCES `students` (`id`);

#JOIN 
SELECT user.first_name, user.last_name, family_members.name 
FROM user
INNER JOIN family_members on fk_family_members_ID = family_members_ID;

#MODIFY a table #ask Serri about this!!!
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

#DELETE entries 
# use the DELETE button or
DELETE FROM 'user' WHERE user_ID=2

#RENAME A TABLE
#select the table, from the top banner select OPERATIONS>TABLE OPTIONS>Rename table to

#EXPORT THE MySQL database
#From the top banner select EXPORT>Custom method>format SQL>open the table with VSC

