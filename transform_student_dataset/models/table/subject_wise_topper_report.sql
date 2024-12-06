select 
    S.name,
    S.email,
    S.phone,
    S.address,
    M.studentId,
    M.englishMarks,
    M.mathsMarks,
    M.scienceMarks,
    M.socialMarks,
    M.totalMarks,
    dense_rank() over(order by englishMarks desc) as english_ranking,
    dense_rank() over(order by scienceMarks desc) as science_ranking,
    dense_rank() over(order by socialMarks desc) as social_ranking,
    dense_rank() over(order by mathsMarks desc) as maths_ranking,
from  {{ref('student_info')}} as S
join {{ref('student_marks')}} as M
on S.studentId = M.studentId
