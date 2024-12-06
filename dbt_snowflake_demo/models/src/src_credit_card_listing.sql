with credit_card_detail as (
  select 
    ROWNUMBER,
    CUSTOMERID,
    SURNAME,
    CREDITSCORE,
    GEOGRAPHY,
    GENDER,
    AGE,
    TENURE,
    BALANCE,
    NUMOFPRODUCTS,
    ISACTIVEMEMBER,
    ESTIMATEDSALARY,
    EXITED
  FROM "BANKING"."PUBLIC"."CREDIT_CARD"
)

select * from credit_card_detail