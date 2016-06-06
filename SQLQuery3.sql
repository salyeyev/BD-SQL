use DB

 create table  Singer
 (
 ID int identity(1,1) primary key,
 Stage_name varchar(20),
 Real_name varchar(20) not null,
 Country varchar(20) not null,
 Official_site varchar(50),
 Genres_ int not null,
 Page_on_wikipedia varchar(100) 
 )

create table  Album
 (
 ID int identity(1,1) primary key,
 ID_of_singer int not null,
 Name_of_album varchar(20) not null,
 Year_of_production int not null,
 Production_studio varchar(50) not null,
 Author_of_clip varchar(20) not null,
 Number_of_watching int not null
 )

 create table  Song
 (
 ID int identity(1,1) primary key,
 Album_ int not null,
 Name_of_song varchar(20) not null,
 Text_of_song varchar not null,
 Translation_of_song int not null
 )

 create table  Translation
 (
 ID int identity(1,1) primary key,
 Language_of_translation int not null,
 Text_of_translation varchar not null,
 Original_text varchar not null,
 Author_of_translation int not null
 )

 create table  Request
 (
 ID int identity(1,1) primary key,
 Name varchar(20) not null,
 Language_ varchar(20) not null,
 Date_of_creation date not null
 )

 create table  Supported_language
 (
 ID int identity(1,1) primary key,
 List_of_languages varchar(20) not null
 )

  create table  Request_state
 (
 ID int identity(1,1) primary key,
 State_ varchar(20) not null
 )

  create table  Idiom
 (
 ID int identity(1,1) primary key,
 Text_of_idiom_on_english varchar(20) not null,
 Text_of_idiom_on_ukrainian varchar(20) not null,
 Song_id int not null
 )

 create table  Author
 (
 ID int identity(1,1) primary key,
 Nickname varchar(20) not null,
 Name varchar(20) not null
 )




 