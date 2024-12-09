with student_info as (
    select 
    studentId,
    name,
    email,
    phone,
    address,
    from
    {{ source('student', 'students_info') }}
)

select * from student_info