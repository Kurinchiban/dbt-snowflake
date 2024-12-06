with student_info as (
    select 
    studentId,
    name,
    email,
    phone,
    address,
    from
    student.public.students_info
)

select * from student_info