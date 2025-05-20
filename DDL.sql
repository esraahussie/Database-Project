/==============================================================/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     5/15/2025 3:24:44 PM                         */
/==============================================================/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ACTS_IN') and o.name = 'FK_ACTS_IN_ACTS_IN_ACTOR')
alter table ACTS_IN
   drop constraint FK_ACTS_IN_ACTS_IN_ACTOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ACTS_IN') and o.name = 'FK_ACTS_IN_ACTS_IN2_MOVIE')
alter table ACTS_IN
   drop constraint FK_ACTS_IN_ACTS_IN2_MOVIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MOVIE') and o.name = 'FK_MOVIE_HASGENERE_GENERE')
alter table MOVIE
   drop constraint FK_MOVIE_HASGENERE_GENERE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MOVIE') and o.name = 'FK_MOVIE_SUPPLIES_SUPPLIER')
alter table MOVIE
   drop constraint FK_MOVIE_SUPPLIES_SUPPLIER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MOVIE') and o.name = 'FK_MOVIE_UPLOAD_ADMIN')
alter table MOVIE
   drop constraint FK_MOVIE_UPLOAD_ADMIN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PAYMENT') and o.name = 'FK_PAYMENT_HAS_USER')
alter table PAYMENT
   drop constraint FK_PAYMENT_HAS_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RENTAL') and o.name = 'FK_RENTAL_MAKES_USER')
alter table RENTAL
   drop constraint FK_RENTAL_MAKES_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RENTAL') and o.name = 'FK_RENTAL_RENTS_MOVIE')
alter table RENTAL
   drop constraint FK_RENTAL_RENTS_MOVIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REVIEW') and o.name = 'FK_REVIEW_HASREVIEW_MOVIE')
alter table REVIEW
   drop constraint FK_REVIEW_HASREVIEW_MOVIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REVIEW') and o.name = 'FK_REVIEW_MAKESREVI_USER')
alter table REVIEW
   drop constraint FK_REVIEW_MAKESREVI_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REVIEW') and o.name = 'FK_REVIEW_REVIEWS_ADMIN')
alter table REVIEW
   drop constraint FK_REVIEW_REVIEWS_ADMIN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"USER"') and o.name = 'FK_USER_MANAGES_ADMIN')
alter table "USER"
   drop constraint FK_USER_MANAGES_ADMIN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ACTOR')
            and   type = 'U')
   drop table ACTOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ACTS_IN')
            and   name  = 'ACTS_IN2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ACTS_IN.ACTS_IN2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ACTS_IN')
            and   name  = 'ACTS_IN_FK'
            and   indid > 0
            and   indid < 255)
   drop index ACTS_IN.ACTS_IN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ACTS_IN')
            and   type = 'U')
   drop table ACTS_IN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ADMIN')
            and   type = 'U')
   drop table ADMIN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GENERE')
            and   type = 'U')
   drop table GENERE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MOVIE')
            and   name  = 'UPLOAD_FK'
            and   indid > 0
            and   indid < 255)
   drop index MOVIE.UPLOAD_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MOVIE')
            and   name  = 'HASGENERE_FK'
            and   indid > 0
            and   indid < 255)
   drop index MOVIE.HASGENERE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MOVIE')
            and   name  = 'SUPPLIES_FK'
            and   indid > 0
            and   indid < 255)
   drop index MOVIE.SUPPLIES_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MOVIE')
            and   type = 'U')
   drop table MOVIE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PAYMENT')
            and   name  = 'HAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index PAYMENT.HAS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PAYMENT')
            and   type = 'U')
   drop table PAYMENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RENTAL')
            and   name  = 'MAKES_FK'
            and   indid > 0
            and   indid < 255)
   drop index RENTAL.MAKES_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RENTAL')
            and   name  = 'RENTS_FK'
            and   indid > 0
            and   indid < 255)
   drop index RENTAL.RENTS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RENTAL')
            and   type = 'U')
   drop table RENTAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REVIEW')
            and   name  = 'REVIEWS_FK'
            and   indid > 0
            and   indid < 255)
   drop index REVIEW.REVIEWS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REVIEW')
            and   name  = 'HASREVIEW_FK'
            and   indid > 0
            and   indid < 255)
   drop index REVIEW.HASREVIEW_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REVIEW')
            and   name  = 'MAKESREVIEW_FK'
            and   indid > 0
            and   indid < 255)
   drop index REVIEW.MAKESREVIEW_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REVIEW')
            and   type = 'U')
   drop table REVIEW
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SUPPLIER')
            and   type = 'U')
   drop table SUPPLIER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"USER"')
            and   name  = 'MANAGES_FK'
            and   indid > 0
            and   indid < 255)
   drop index "USER".MANAGES_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"USER"')
            and   type = 'U')
   drop table "USER"
go


create table ACTOR (
   ACTOR_ID             int                  not null,
   ACTOR_NAME           varchar(50)          not null,
   ACTOR_EMAIL          varchar(100)         not null,
   ACTRO_AGE            float                not null,
   constraint PK_ACTOR primary key nonclustered (ACTOR_ID)
)
go


create table ACTS_IN (
   ACTOR_ID             int                  not null,
   MOVIE_ID             int                  not null,
   constraint PK_ACTS_IN primary key (ACTOR_ID, MOVIE_ID)
)
go


create index ACTS_IN_FK on ACTS_IN (
ACTOR_ID ASC
)
go


create index ACTS_IN2_FK on ACTS_IN (
MOVIE_ID ASC
)
go


create table ADMIN (
   ADMIN_ID             int                  not null,
   ADMIN_NAME           varchar(50)          not null,
   ADMIN_MAIL           varchar(200)         not null,
   constraint PK_ADMIN primary key nonclustered (ADMIN_ID)
)
go


create table GENERE (
   GENERE_ID            int              not null,
   GENERE_NAME          varchar(50)          not null,
   constraint PK_GENERE primary key nonclustered (GENERE_ID)
)
go


create table MOVIE (
   MOVIE_ID             int                  not null,
   GENERE_ID            int                not null,
   ADMIN_ID             int                  not null,
   SUPPLIER_ID          int                  not null,
   MOVIE_NAME           varchar(100)         not null,
   MOVIE_YEAR           int                  not null,
   AVAILABILITY         bit                  not null,
   PRICE                decimal              not null,
   added_date           date                 not null, 
   constraint PK_MOVIE primary key nonclustered (MOVIE_ID)
)
go


create index SUPPLIES_FK on MOVIE (
SUPPLIER_ID ASC
)
go


create index HASGENERE_FK on MOVIE (
GENERE_ID ASC
)
go

create index UPLOAD_FK on MOVIE (
ADMIN_ID ASC
)
go


create table PAYMENT (
   PAYMENT_ID           char(10)             not null,
   USER_ID              int                  not null,
   PAYMENT_DATE         datetime             not null,
   AMOUNT               decimal              not null,
   constraint PK_PAYMENT primary key nonclustered (PAYMENT_ID)
)
go


create index HAS_FK on PAYMENT (
USER_ID ASC
)
go


create table RENTAL (
   MOVIE_ID             int                  not null,
   USER_ID              int                  not null,
   RENTAL_DATEE         datetime             not null,
   DUE_DATE             datetime             not null,
   RETURN_DATE          datetime             null,
   constraint PK_RENTAL primary key (MOVIE_ID, USER_ID)
)
go


create index RENTS_FK on RENTAL (
MOVIE_ID ASC
)
go


create index MAKES_FK on RENTAL (
USER_ID ASC
)
go


create table REVIEW (
   USER_ID              int                  not null,
   MOVIE_ID             int                  not null,
   ADMIN_ID             int                  null,
   REVIEW_TEXT          varchar(350)         not null,
   RATE                 int                  not null,
   constraint PK_REVIEW primary key (USER_ID, MOVIE_ID)
)
go


create index MAKESREVIEW_FK on REVIEW (
USER_ID ASC
)
go


create index HASREVIEW_FK on REVIEW (
MOVIE_ID ASC
)
go


create index REVIEWS_FK on REVIEW (
ADMIN_ID ASC
)
go


create table SUPPLIER (
   SUPPLIER_ID          int                  not null,
   SUPPLIER_NAME        varchar(50)          not null,
   constraint PK_SUPPLIER primary key nonclustered (SUPPLIER_ID)
)
go


create table "USER" (
   USER_ID              int                  not null,
   ADMIN_ID             int                  not null,
   EMAIL                varchar(200)         not null,
   BUSSINESS_ADDRESS    varchar(200)         not null,
   PHONE                varchar(14)          not null,
   RESIDENCE_ADDRESS    varchar(200)         not null,
   BILLING_ADDRESS      varchar(200)         not null,
   CREDIT_CARD          numeric              null,
   constraint PK_USER primary key nonclustered (USER_ID)
)
go


create index MANAGES_FK on "USER" (
ADMIN_ID ASC
)
go

alter table ACTS_IN
   add constraint FK_ACTS_IN_ACTS_IN_ACTOR foreign key (ACTOR_ID)
      references ACTOR (ACTOR_ID)
go

alter table ACTS_IN
   add constraint FK_ACTS_IN_ACTS_IN2_MOVIE foreign key (MOVIE_ID)
      references MOVIE (MOVIE_ID)
go

alter table MOVIE
   add constraint FK_MOVIE_HASGENERE_GENERE foreign key (GENERE_ID)
      references GENERE (GENERE_ID)
go

alter table MOVIE
   add constraint FK_MOVIE_SUPPLIES_SUPPLIER foreign key (SUPPLIER_ID)
      references SUPPLIER (SUPPLIER_ID)
go

alter table MOVIE
   add constraint FK_MOVIE_UPLOAD_ADMIN foreign key (ADMIN_ID)
      references ADMIN (ADMIN_ID)
go

alter table PAYMENT
   add constraint FK_PAYMENT_HAS_USER foreign key (USER_ID)
      references "USER" (USER_ID)
go

alter table RENTAL
   add constraint FK_RENTAL_MAKES_USER foreign key (USER_ID)
      references "USER" (USER_ID)
go

alter table RENTAL
   add constraint FK_RENTAL_RENTS_MOVIE foreign key (MOVIE_ID)
      references MOVIE (MOVIE_ID)
go

alter table REVIEW
   add constraint FK_REVIEW_HASREVIEW_MOVIE foreign key (MOVIE_ID)
      references MOVIE (MOVIE_ID)
go

alter table REVIEW
   add constraint FK_REVIEW_MAKESREVI_USER foreign key (USER_ID)
      references "USER" (USER_ID)
go

alter table REVIEW
   add constraint FK_REVIEW_REVIEWS_ADMIN foreign key (ADMIN_ID)
      references ADMIN (ADMIN_ID)
go

alter table "USER"
   add constraint FK_USER_MANAGES_ADMIN foreign key (ADMIN_ID)
      references ADMIN (ADMIN_ID)
go