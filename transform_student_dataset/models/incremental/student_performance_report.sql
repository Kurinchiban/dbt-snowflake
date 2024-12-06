select 
    S.name,
    S.email,
    S.phone,
    S.address,
    M.englishMarks,
    M.mathsMarks,
    M.scienceMarks,
    M.socialMarks,
    M.totalMarks,
    {{ calculate_average('M.totalMarks') }} as average,
    {{ calculate_percentage('M.totalMarks') }} as percentage_score,
    {{ calculate_performance_label('percentage_score') }} as performance,
    dense_rank() over(order by {{ calculate_percentage('M.totalMarks') }} desc) as rank
from  
    {{ ref('student_info') }} as S
join 
    {{ ref('student_marks') }} as M
on 
    S.studentId = M.studentId

{% if is_incremental() %}
    where S.name >= (select max(name) from {{ this }})
{% endif %}
