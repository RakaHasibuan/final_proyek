SELECT
  * EXCEPT(job,
    marital,
    education,
    `default`,
    housing,
    loan,
    contact,
    poutcome,
    day_of_week,
    `date`
    ),
  -- bisa pake macro
  {{ encode_JOB('job') }} AS job_id,
  {{ encode_MARITAL('marital') }} AS marital_id,
  {{ encode_EDUCATION('education') }} as ID_EDUCATION,
  {{ encode_HOUSING('housing') }} as ID_HOUSING,
  {{ encode_LOAN('loan') }} as ID_LOAN,
  {{ encode_CONTACT('contact') }} as ID_CONTACT,
  {{ encode_POUTCOME('poutcome') }} as ID_POUTCOME,
cast(format_date('%Y%m%d', `date`) as int64) as date_id,
FROM
  {{ ref('raw_data') }}