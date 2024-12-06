with loan_detail as (
  select 
    CUSTOMER_ID,
    AGE ,
    GENDER ,
    OCCUPATION ,
    MARITAL_STATUS ,
    FAMILY_SIZE,
    INCOME,
    EXPENDITURE ,
    USE_FREQUENCY ,
    LOAN_CATEGORY,
    LOAN_AMOUNT,
    OVERDUE,
    DEBT_RECORD ,
    RETURNED_CHEQUE,
    DISHONOUR_OF_BILL
  FROM "BANKING"."PUBLIC"."LOAN"
)

select * from loan_detail
