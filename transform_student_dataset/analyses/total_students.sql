select sum(studentId) as total_student from {{ref(
    'src_student_info'
)}}