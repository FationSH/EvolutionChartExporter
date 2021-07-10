CREATE TABLE wf_process (
    id                VARCHAR(32) PRIMARY KEY NOT NULL ,
    name              VARCHAR(100) ,
    display_Name      VARCHAR(200) ,
    type              VARCHAR(100) ,
    instance_Url      VARCHAR(200) ,
    state             TINYINT(1) ,
    content           LONGBLOB ,
    version           INT(2) ,
    create_Time       VARCHAR(50) ,
    creator           VARCHAR(50) 
);

CREATE TABLE wf_order (
    id                VARCHAR(32) NOT NULL PRIMARY KEY ,
    parent_Id         VARCHAR(32) ,
    process_Id        VARCHAR(32) NOT NULL ,
    creator           VARCHAR(50) ,
    create_Time       VARCHAR(50) NOT NULL ,
    expire_Time       VARCHAR(50) ,
    last_Update_Time  VARCHAR(50) ,
    last_Updator      VARCHAR(50) ,
    priority          TINYINT(1) ,
    parent_Node_Name  VARCHAR(100) ,
    order_No          VARCHAR(50) ,
    variable          VARCHAR(2000) ,
    version           INT(3) 
);

CREATE TABLE wf_task (
    id                VARCHAR(32) NOT NULL PRIMARY KEY ,
    order_Id          VARCHAR(32) NOT NULL ,
    task_Name         VARCHAR(100) NOT NULL ,
    display_Name      VARCHAR(200) NOT NULL ,
    task_Type         TINYINT(1) NOT NULL ,
    perform_Type      TINYINT(1) ,
    operator          VARCHAR(50) ,
    create_Time       VARCHAR(50) ,
    finish_Time       VARCHAR(50) ,
    expire_Time       VARCHAR(50) ,
    action_Url        VARCHAR(200) ,
    parent_Task_Id    VARCHAR(32) ,
    variable          VARCHAR(2000) ,
    version           TINYINT(1) 
);

CREATE TABLE wf_task_actor (
    task_Id           VARCHAR(32) not null ,
    actor_Id          VARCHAR(50) not null 
);

create table wf_hist_order (
    id                VARCHAR(32) not null primary key ,
    process_Id        VARCHAR(32) not null ,
    order_State       TINYINT(1) not null ,
    creator           VARCHAR(50) ,
    create_Time       VARCHAR(50) not null ,
    end_Time          VARCHAR(50) ,
    expire_Time       VARCHAR(50) ,
    priority          TINYINT(1) ,
    parent_Id         VARCHAR(32) ,
    order_No          VARCHAR(50) ,
    variable          VARCHAR(2000) 
);

create table wf_hist_task (
    id                VARCHAR(32) not null primary key ,
    order_Id          VARCHAR(32) not null ,
    task_Name         VARCHAR(100) not null ,
    display_Name      VARCHAR(200) not null ,
    task_Type         TINYINT(1) not null ,
    perform_Type      TINYINT(1) ,
    task_State        TINYINT(1) not null ,
    operator          VARCHAR(50) ,
    create_Time       VARCHAR(50) not null ,
    finish_Time       VARCHAR(50) ,
    expire_Time       VARCHAR(50) ,
    action_Url        VARCHAR(200) ,
    parent_Task_Id    VARCHAR(32) ,
    variable          VARCHAR(2000) 
);

create table wf_hist_task_actor (
    task_Id           VARCHAR(32) not null ,
    actor_Id          VARCHAR(50) not null 
);

create table wf_surrogate (
    id                VARCHAR(32) PRIMARY KEY NOT NULL ,
    process_Name       VARCHAR(100) ,
    operator          VARCHAR(50) ,
    surrogate         VARCHAR(50) ,
    odate             VARCHAR(64) ,
    sdate             VARCHAR(64) ,
    edate             VARCHAR(64) ,
    state             TINYINT(1) 
);

create table wf_cc_order (
    order_Id        varchar(32) ,
    actor_Id        varchar(50) ,
    creator         varchar(50) ,
    create_Time     varchar(50) ,
    finish_Time     varchar(50) ,
    status          TINYINT(1)  
);
