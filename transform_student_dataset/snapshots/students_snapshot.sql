{% snapshot student_snapshot %}  

{{    
  config(      
    target_schema='public',      
    strategy='check',      
    unique_key='studentId',      
    check_cols=['status']    
  )  
}}  

select * 
from {{ source('student', 'students_info') }}

{% endsnapshot %}