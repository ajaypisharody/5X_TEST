{{ config(materialized='table') }}
with covidcases as (
select  NEW_CASES,
        NEW_ACTIVE_CASES, 
        TOTAL_CASES,
        NEW_RECOVERED,
        NEW_DEATHS_PER_MILLION, 
        NEW_DEATHS,  
        TOTAL_DEATHS,

TOTAL_RECOVERED,
 TOTAL_CASES_PER_MILLION,
   GROWTH_FACTOR_OF_NEW_DEATHS,
    TOTAL_ACTIVE_CASES,
     NEW_CASES_PER_MILLION,
      POPULATION,
  TOTAL_RURAL_VILLAGES,
        
        PROVINCE
 from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_AJAY_PISHARODY")
select * from covidcases