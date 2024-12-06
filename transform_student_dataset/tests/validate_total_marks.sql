WITH student_data AS (
    SELECT 
        M.studentId,
        M.totalMarks,
        (M.englishMarks + M.mathsMarks + M.scienceMarks + M.socialMarks) AS calculated_totalMarks
    FROM {{ ref('subject_wise_topper_report') }} M
)

SELECT *
FROM student_data
WHERE totalMarks != calculated_totalMarks