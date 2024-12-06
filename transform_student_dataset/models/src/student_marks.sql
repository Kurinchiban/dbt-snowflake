with student_marks as (
    select 
    studentId,
    englishMarks,
    mathsMarks,
    scienceMarks,
    socialMarks,
    totalMarks
    from
    student.public.students_marks
)

select * from student_marks