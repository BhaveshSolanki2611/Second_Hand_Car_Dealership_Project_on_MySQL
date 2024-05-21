create schema cars;

-- Read Data--
select*from cars.car_dekho;

use cars;

-- Total cars: to get a count of total records --
select count(*) from car_dekho;

-- the manager asked the employee, how many cars will be available in 2023 ? --
select count(*) from car_dekho where year=2023;

-- the manager asked the employee , how many cars available in 2020,2021,2022 ? --
select count(*) from car_dekho where year in(2020,2021,2022) group by year;

-- Client asked me to print the total of cars by year , I don't see all detail --
select year, count(*) from car_dekho group by year ;

-- Client asked to car dealer agent , how many diesel car was their in 2019? --
select count(*) from car_dekho where year=2019 and fuel="Diesel";

-- Cliet requested car dealer agent , how many petrol cars was there in 2019? --
select count(*) from car_dekho where year=2019 and fuel="Petrol";

-- the manager told the employee to give a print all the fuel cars(petrol, diesel and cng) come by all year --
select year,count(*) from car_dekho where fuel="Petrol" group by  year;
select year,count(*) from car_dekho where fuel="Diesel" group by  year;
select year,count(*) from car_dekho where fuel="CNG" group by  year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars --
select year, count(*) from car_dekho group by year having count(*) > 100; 

-- the manager said the employee all cars count detail between 2010 and 2023; we need a complete list --
select count(*) from car_dekho where year between 2010 and 2023 ;

-- the manager said the employee all cars details between 2010 and 2023 ; we need complete list --
select*from car_dekho where year between 2010 and 2023 ;

-- FINISH --