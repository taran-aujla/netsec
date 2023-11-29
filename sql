-- Create a database named 'x'
CREATE DATABASE x;

-- Switch to the 'x' database
USE x;

-- Create a table named 'y' with a column 'name' of type varchar(15)
CREATE TABLE y (
    name VARCHAR(15)
);

-- Display the structure of the 'y' table
DESCRIBE y;

-- Insert a record into the 'y' table with the value 'wow' in the 'name' column
INSERT INTO y (name) VALUES ('wow');

-- Retrieve all records from the 'y' table
SELECT * FROM y;
///////////////////////////////////////////////////////////////////////////////
insert into ear values (1,'Taran',2500);

create procedure raise_salary
(eID in NUMBER,bonus in NUMBER) IS
begin
   update ear
   set salary = salary + bonus
   where enu = eID;
end;
/
begin
raise_salary(2,500);
end;
/
select*from ear
////////////////////sum of two numbers////////////////////////////////////////
create or replace  function add(a in number, b in number)
return number
is 
c number(8);
begin
c :=a+b;
return c;
end;

begin
dbms_output.put_line('after addition result is ='||add(2,4));
end;
//addition of the departments//////////////////////////////////////////////
create table emp(
    empno number(4) not null primary key,
    ename varchar2(20),
    job varchar2(20),
    deptno number(5),
    salary number(8),
)
insert into emp values(195,'Taran','manager',13,2000)
insert into emp values(196,'dhuta','CEO',12,5000)
insert into emp values(420,'raj','worker',13,200)

create or replace function totalsalary(depno in number)
return number
is
total number(10);
begin
    select  sum(salary)
    into total 
    from emp
    where deptno = depno;
    return total;
end;
/
declare 
    deptno number(5);
begin 	
    deptno :=13;
    dbms_output.put_line('sum of salary of department number'||deptno||'is'||totalsalary(deptno));
end;
/
    
