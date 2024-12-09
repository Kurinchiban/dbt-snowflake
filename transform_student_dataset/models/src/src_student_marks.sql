with student_marks as (
    select 
    studentId,
    englishMarks,
    mathsMarks,
    scienceMarks,
    socialMarks,
    totalMarks
    from
    {{ source('student', 'students_marks') }}
)

select * from student_marks