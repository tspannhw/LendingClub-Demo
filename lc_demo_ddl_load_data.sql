***********************************
*Built by Kyle D and Zack O
**********************************

\timing

DROP TABLE IF EXISTS completed_loans ;

CREATE TABLE completed_loans 
(
    "id" int,
    "member_id" int,
    "loan_amnt" float,
    "funded_amnt" float,
    "funded_amnt_inv" float,
    "term" text,
    "int_rate" float,
    "installment" text,
    "grade" text,
    "sub_grade" text,
    "emp_title" text, 
    "emp_length" text,
    "home_ownership" text,
    "annual_inc" float,
    "verification_status" text,
    "issue_d" text,
    "loan_status" text,
    "pymnt_plan" text,
    "url" text,
    "desc" text,
    "purpose" text,
    "title" text,
    "zip3_code" text,
    "addr_state" text,
    "dti" text,
    "delinq_2yrs" text,
    "earliest_cr_line" text,
    "inq_last_6mths" text,
    "mths_since_last_delinq" float, 
    "mths_since_last_record" float, 
    "open_acc" float, 
    "pub_rec" float, 
    "revol_bal" float, 
    "revol_util" float, 
    "total_acc" float, 
    "initial_list_status" text, 
    "out_prncp" float, 
    "out_prncp_inv" float, 
    "total_pymnt" float, 
    "total_pymnt_inv" float, 
    "total_rec_prncp" float, 
    "total_rec_int" float, 
    "total_rec_late_fee" float, 
    "recoveries" float, 
    "collection_recovery_fee" float, 
    "last_pymnt_d" text, 
    "last_pymnt_amnt" float, 
    "next_pymnt_d" text, 
    "last_credit_pull_d" text, 
    "collections_12_mths_ex_med" text, 
    "mths_since_last_major_derog" float, 
    "policy_code" text, 
    "application_type" text, 
    "annual_inc_joint" text, 
    "dti_joint" text, 
    "verification_status_joint" text, 
    "acc_now_delinq" float, 
    "tot_coll_amt" float, 
    "tot_cur_bal" float, 
    "open_acc_6m" float, 
    "open_il_6m" float, 
    "open_il_12m" float, 
    "open_il_24m" float, 
    "mths_since_rcnt_il" float, 
    "total_bal_il" float, 
    "il_util" float, 
    "open_rv_12m" float, 
    "open_rv_24m" float, 
    "max_bal_bc" float, 
    "all_util" float, 
    "total_rev_hi_lim" float, 
    "inq_fi" float, 
    "total_cu_tl" float, 
    "inq_last_12m" float, 
    "acc_open_past_24mths" float, 
    "avg_cur_bal" float, 
    "bc_open_to_buy" float, 
    "bc_util" float, 
    "chargeoff_within_12_mths" float, 
    "delinq_amnt" float, 
    "mo_sin_old_il_acct" float, 
    "mo_sin_old_rev_tl_op" float, 
    "mo_sin_rcnt_rev_tl_op" float, 
    "mo_sin_rcnt_tl" float, 
    "mort_acc" float, 
    "mths_since_recent_bc" float, 
    "mths_since_recent_bc_dlq" float, 
    "mths_since_recent_inq" float, 
    "mths_since_recent_revol_delinq" float, 
    "num_accts_ever_120_pd" float, 
    "num_actv_bc_tl" float, 
    "num_actv_rev_tl" float, 
    "num_bc_sats" float, 
    "num_bc_tl" float, 
    "num_il_tl" float, 
    "num_op_rev_tl" float, 
    "num_rev_accts" float, 
    "num_rev_tl_bal_gt_0" float, 
    "num_sats" float, 
    "num_tl_120dpd_2m" float, 
    "num_tl_30dpd" float, 
    "num_tl_90g_dpd_24m" float, 
    "num_tl_op_past_12m" float, 
    "pct_tl_nvr_dlq" float, 
    "percent_bc_gt_75" float, 
    "pub_rec_bankruptcies" float, 
    "tax_liens" float, 
    "tot_hi_cred_lim" float, 
    "total_bal_ex_mort" float, 
    "total_bc_limit" float, 
    "total_il_high_credit_limit" float 
)
DISTRIBUTED RANDOMLY;
;

DROP EXTERNAL TABLE IF EXISTS ext_completed_loans_a ;

CREATE EXTERNAL WEB TABLE ext_completed_loans_a 
(
    "id" int,
    "member_id" int,
    "loan_amnt" float,
    "funded_amnt" float,
    "funded_amnt_inv" float,
    "term" text,
    "int_rate" float,
    "installment" text,
    "grade" text,
    "sub_grade" text,
    "emp_title" text, 
    "emp_length" text,
    "home_ownership" text,
    "annual_inc" float,
    "verification_status" text,
    "issue_d" text,
    "loan_status" text,
    "pymnt_plan" text,
    "url" text,
    "desc" text,
    "purpose" text,
    "title" text,
    "zip3_code" text,
    "addr_state" text,
    "dti" text,
    "delinq_2yrs" text,
    "earliest_cr_line" text,
    "inq_last_6mths" text,
    "mths_since_last_delinq" float, 
    "mths_since_last_record" float, 
    "open_acc" float, 
    "pub_rec" float, 
    "revol_bal" float, 
    "revol_util" float, 
    "total_acc" float, 
    "initial_list_status" text, 
    "out_prncp" float, 
    "out_prncp_inv" float, 
    "total_pymnt" float, 
    "total_pymnt_inv" float, 
    "total_rec_prncp" float, 
    "total_rec_int" float, 
    "total_rec_late_fee" float, 
    "recoveries" float, 
    "collection_recovery_fee" float, 
    "last_pymnt_d" text, 
    "last_pymnt_amnt" float, 
    "next_pymnt_d" text, 
    "last_credit_pull_d" text, 
    "collections_12_mths_ex_med" text, 
    "mths_since_last_major_derog" float, 
    "policy_code" text, 
    "application_type" text, 
    "annual_inc_joint" text, 
    "dti_joint" text, 
    "verification_status_joint" text, 
    "acc_now_delinq" float, 
    "tot_coll_amt" float, 
    "tot_cur_bal" float, 
    "open_acc_6m" float, 
    "open_il_6m" float, 
    "open_il_12m" float, 
    "open_il_24m" float, 
    "mths_since_rcnt_il" float, 
    "total_bal_il" float, 
    "il_util" float, 
    "open_rv_12m" float, 
    "open_rv_24m" float, 
    "max_bal_bc" float, 
    "all_util" float, 
    "total_rev_hi_lim" float, 
    "inq_fi" float, 
    "total_cu_tl" float, 
    "inq_last_12m" float, 
    "acc_open_past_24mths" float, 
    "avg_cur_bal" float, 
    "bc_open_to_buy" float, 
    "bc_util" float, 
    "chargeoff_within_12_mths" float, 
    "delinq_amnt" float, 
    "mo_sin_old_il_acct" float, 
    "mo_sin_old_rev_tl_op" float, 
    "mo_sin_rcnt_rev_tl_op" float, 
    "mo_sin_rcnt_tl" float, 
    "mort_acc" float, 
    "mths_since_recent_bc" float, 
    "mths_since_recent_bc_dlq" float, 
    "mths_since_recent_inq" float, 
    "mths_since_recent_revol_delinq" float, 
    "num_accts_ever_120_pd" float, 
    "num_actv_bc_tl" float, 
    "num_actv_rev_tl" float, 
    "num_bc_sats" float, 
    "num_bc_tl" float, 
    "num_il_tl" float, 
    "num_op_rev_tl" float, 
    "num_rev_accts" float, 
    "num_rev_tl_bal_gt_0" float, 
    "num_sats" float, 
    "num_tl_120dpd_2m" float, 
    "num_tl_30dpd" float, 
    "num_tl_90g_dpd_24m" float, 
    "num_tl_op_past_12m" float, 
    "pct_tl_nvr_dlq" float, 
    "percent_bc_gt_75" float, 
    "pub_rec_bankruptcies" float, 
    "tax_liens" float, 
    "tot_hi_cred_lim" float, 
    "total_bal_ex_mort" float, 
    "total_bc_limit" float, 
    "total_il_high_credit_limit" float 
)
EXECUTE 'wget -qO- https://s3-us-west-2.amazonaws.com/lc-demo-data/LoanStats3a.csv | tail -n+1 | sed -e ''/^[^"]/d;/^$/d;s/""//g;s/%//g''' ON MASTER
FORMAT 'CSV'  (NULL AS '' HEADER);

DROP EXTERNAL TABLE IF EXISTS ext_completed_loans_b ;

CREATE EXTERNAL WEB TABLE ext_completed_loans_b 
(
    "id" int,
    "member_id" int,
    "loan_amnt" float,
    "funded_amnt" float,
    "funded_amnt_inv" float,
    "term" text,
    "int_rate" float,
    "installment" text,
    "grade" text,
    "sub_grade" text,
    "emp_title" text, 
    "emp_length" text,
    "home_ownership" text,
    "annual_inc" float,
    "verification_status" text,
    "issue_d" text,
    "loan_status" text,
    "pymnt_plan" text,
    "url" text,
    "desc" text,
    "purpose" text,
    "title" text,
    "zip3_code" text,
    "addr_state" text,
    "dti" text,
    "delinq_2yrs" text,
    "earliest_cr_line" text,
    "inq_last_6mths" text,
    "mths_since_last_delinq" float, 
    "mths_since_last_record" float, 
    "open_acc" float, 
    "pub_rec" float, 
    "revol_bal" float, 
    "revol_util" float, 
    "total_acc" float, 
    "initial_list_status" text, 
    "out_prncp" float, 
    "out_prncp_inv" float, 
    "total_pymnt" float, 
    "total_pymnt_inv" float, 
    "total_rec_prncp" float, 
    "total_rec_int" float, 
    "total_rec_late_fee" float, 
    "recoveries" float, 
    "collection_recovery_fee" float, 
    "last_pymnt_d" text, 
    "last_pymnt_amnt" float, 
    "next_pymnt_d" text, 
    "last_credit_pull_d" text, 
    "collections_12_mths_ex_med" text, 
    "mths_since_last_major_derog" float, 
    "policy_code" text, 
    "application_type" text, 
    "annual_inc_joint" text, 
    "dti_joint" text, 
    "verification_status_joint" text, 
    "acc_now_delinq" float, 
    "tot_coll_amt" float, 
    "tot_cur_bal" float, 
    "open_acc_6m" float, 
    "open_il_6m" float, 
    "open_il_12m" float, 
    "open_il_24m" float, 
    "mths_since_rcnt_il" float, 
    "total_bal_il" float, 
    "il_util" float, 
    "open_rv_12m" float, 
    "open_rv_24m" float, 
    "max_bal_bc" float, 
    "all_util" float, 
    "total_rev_hi_lim" float, 
    "inq_fi" float, 
    "total_cu_tl" float, 
    "inq_last_12m" float, 
    "acc_open_past_24mths" float, 
    "avg_cur_bal" float, 
    "bc_open_to_buy" float, 
    "bc_util" float, 
    "chargeoff_within_12_mths" float, 
    "delinq_amnt" float, 
    "mo_sin_old_il_acct" float, 
    "mo_sin_old_rev_tl_op" float, 
    "mo_sin_rcnt_rev_tl_op" float, 
    "mo_sin_rcnt_tl" float, 
    "mort_acc" float, 
    "mths_since_recent_bc" float, 
    "mths_since_recent_bc_dlq" float, 
    "mths_since_recent_inq" float, 
    "mths_since_recent_revol_delinq" float, 
    "num_accts_ever_120_pd" float, 
    "num_actv_bc_tl" float, 
    "num_actv_rev_tl" float, 
    "num_bc_sats" float, 
    "num_bc_tl" float, 
    "num_il_tl" float, 
    "num_op_rev_tl" float, 
    "num_rev_accts" float, 
    "num_rev_tl_bal_gt_0" float, 
    "num_sats" float, 
    "num_tl_120dpd_2m" float, 
    "num_tl_30dpd" float, 
    "num_tl_90g_dpd_24m" float, 
    "num_tl_op_past_12m" float, 
    "pct_tl_nvr_dlq" float, 
    "percent_bc_gt_75" float, 
    "pub_rec_bankruptcies" float, 
    "tax_liens" float, 
    "tot_hi_cred_lim" float, 
    "total_bal_ex_mort" float, 
    "total_bc_limit" float, 
    "total_il_high_credit_limit" float 
)
EXECUTE 'wget -qO- https://s3-us-west-2.amazonaws.com/lc-demo-data/LoanStats3b.csv | tail -n+1 | sed -e ''/^[^"]/d;/^$/d;s/""//g;s/%//g''' ON MASTER
FORMAT 'CSV'  (NULL AS '' HEADER);

DROP EXTERNAL TABLE IF EXISTS ext_completed_loans_c ;

CREATE EXTERNAL WEB TABLE ext_completed_loans_c 
(
    "id" int,
    "member_id" int,
    "loan_amnt" float,
    "funded_amnt" float,
    "funded_amnt_inv" float,
    "term" text,
    "int_rate" float,
    "installment" text,
    "grade" text,
    "sub_grade" text,
    "emp_title" text, 
    "emp_length" text,
    "home_ownership" text,
    "annual_inc" float,
    "verification_status" text,
    "issue_d" text,
    "loan_status" text,
    "pymnt_plan" text,
    "url" text,
    "desc" text,
    "purpose" text,
    "title" text,
    "zip3_code" text,
    "addr_state" text,
    "dti" text,
    "delinq_2yrs" text,
    "earliest_cr_line" text,
    "inq_last_6mths" text,
    "mths_since_last_delinq" float, 
    "mths_since_last_record" float, 
    "open_acc" float, 
    "pub_rec" float, 
    "revol_bal" float, 
    "revol_util" float, 
    "total_acc" float, 
    "initial_list_status" text, 
    "out_prncp" float, 
    "out_prncp_inv" float, 
    "total_pymnt" float, 
    "total_pymnt_inv" float, 
    "total_rec_prncp" float, 
    "total_rec_int" float, 
    "total_rec_late_fee" float, 
    "recoveries" float, 
    "collection_recovery_fee" float, 
    "last_pymnt_d" text, 
    "last_pymnt_amnt" float, 
    "next_pymnt_d" text, 
    "last_credit_pull_d" text, 
    "collections_12_mths_ex_med" text, 
    "mths_since_last_major_derog" float, 
    "policy_code" text, 
    "application_type" text, 
    "annual_inc_joint" text, 
    "dti_joint" text, 
    "verification_status_joint" text, 
    "acc_now_delinq" float, 
    "tot_coll_amt" float, 
    "tot_cur_bal" float, 
    "open_acc_6m" float, 
    "open_il_6m" float, 
    "open_il_12m" float, 
    "open_il_24m" float, 
    "mths_since_rcnt_il" float, 
    "total_bal_il" float, 
    "il_util" float, 
    "open_rv_12m" float, 
    "open_rv_24m" float, 
    "max_bal_bc" float, 
    "all_util" float, 
    "total_rev_hi_lim" float, 
    "inq_fi" float, 
    "total_cu_tl" float, 
    "inq_last_12m" float, 
    "acc_open_past_24mths" float, 
    "avg_cur_bal" float, 
    "bc_open_to_buy" float, 
    "bc_util" float, 
    "chargeoff_within_12_mths" float, 
    "delinq_amnt" float, 
    "mo_sin_old_il_acct" float, 
    "mo_sin_old_rev_tl_op" float, 
    "mo_sin_rcnt_rev_tl_op" float, 
    "mo_sin_rcnt_tl" float, 
    "mort_acc" float, 
    "mths_since_recent_bc" float, 
    "mths_since_recent_bc_dlq" float, 
    "mths_since_recent_inq" float, 
    "mths_since_recent_revol_delinq" float, 
    "num_accts_ever_120_pd" float, 
    "num_actv_bc_tl" float, 
    "num_actv_rev_tl" float, 
    "num_bc_sats" float, 
    "num_bc_tl" float, 
    "num_il_tl" float, 
    "num_op_rev_tl" float, 
    "num_rev_accts" float, 
    "num_rev_tl_bal_gt_0" float, 
    "num_sats" float, 
    "num_tl_120dpd_2m" float, 
    "num_tl_30dpd" float, 
    "num_tl_90g_dpd_24m" float, 
    "num_tl_op_past_12m" float, 
    "pct_tl_nvr_dlq" float, 
    "percent_bc_gt_75" float, 
    "pub_rec_bankruptcies" float, 
    "tax_liens" float, 
    "tot_hi_cred_lim" float, 
    "total_bal_ex_mort" float, 
    "total_bc_limit" float, 
    "total_il_high_credit_limit" float 
)
EXECUTE 'wget -qO- https://s3-us-west-2.amazonaws.com/lc-demo-data/LoanStats3c.csv | tail -n+1 | sed -e ''/^[^"]/d;/^$/d;s/""//g;s/%//g''' ON MASTER
FORMAT 'CSV'  (NULL AS '' HEADER);

DROP EXTERNAL TABLE IF EXISTS ext_completed_loans_d ;

CREATE EXTERNAL WEB TABLE ext_completed_loans_d 
(
    "id" int,
    "member_id" int,
    "loan_amnt" float,
    "funded_amnt" float,
    "funded_amnt_inv" float,
    "term" text,
    "int_rate" float,
    "installment" text,
    "grade" text,
    "sub_grade" text,
    "emp_title" text, 
    "emp_length" text,
    "home_ownership" text,
    "annual_inc" float,
    "verification_status" text,
    "issue_d" text,
    "loan_status" text,
    "pymnt_plan" text,
    "url" text,
    "desc" text,
    "purpose" text,
    "title" text,
    "zip3_code" text,
    "addr_state" text,
    "dti" text,
    "delinq_2yrs" text,
    "earliest_cr_line" text,
    "inq_last_6mths" text,
    "mths_since_last_delinq" float, 
    "mths_since_last_record" float, 
    "open_acc" float, 
    "pub_rec" float, 
    "revol_bal" float, 
    "revol_util" float, 
    "total_acc" float, 
    "initial_list_status" text, 
    "out_prncp" float, 
    "out_prncp_inv" float, 
    "total_pymnt" float, 
    "total_pymnt_inv" float, 
    "total_rec_prncp" float, 
    "total_rec_int" float, 
    "total_rec_late_fee" float, 
    "recoveries" float, 
    "collection_recovery_fee" float, 
    "last_pymnt_d" text, 
    "last_pymnt_amnt" float, 
    "next_pymnt_d" text, 
    "last_credit_pull_d" text, 
    "collections_12_mths_ex_med" text, 
    "mths_since_last_major_derog" float, 
    "policy_code" text, 
    "application_type" text, 
    "annual_inc_joint" text, 
    "dti_joint" text, 
    "verification_status_joint" text, 
    "acc_now_delinq" float, 
    "tot_coll_amt" float, 
    "tot_cur_bal" float, 
    "open_acc_6m" float, 
    "open_il_6m" float, 
    "open_il_12m" float, 
    "open_il_24m" float, 
    "mths_since_rcnt_il" float, 
    "total_bal_il" float, 
    "il_util" float, 
    "open_rv_12m" float, 
    "open_rv_24m" float, 
    "max_bal_bc" float, 
    "all_util" float, 
    "total_rev_hi_lim" float, 
    "inq_fi" float, 
    "total_cu_tl" float, 
    "inq_last_12m" float, 
    "acc_open_past_24mths" float, 
    "avg_cur_bal" float, 
    "bc_open_to_buy" float, 
    "bc_util" float, 
    "chargeoff_within_12_mths" float, 
    "delinq_amnt" float, 
    "mo_sin_old_il_acct" float, 
    "mo_sin_old_rev_tl_op" float, 
    "mo_sin_rcnt_rev_tl_op" float, 
    "mo_sin_rcnt_tl" float, 
    "mort_acc" float, 
    "mths_since_recent_bc" float, 
    "mths_since_recent_bc_dlq" float, 
    "mths_since_recent_inq" float, 
    "mths_since_recent_revol_delinq" float, 
    "num_accts_ever_120_pd" float, 
    "num_actv_bc_tl" float, 
    "num_actv_rev_tl" float, 
    "num_bc_sats" float, 
    "num_bc_tl" float, 
    "num_il_tl" float, 
    "num_op_rev_tl" float, 
    "num_rev_accts" float, 
    "num_rev_tl_bal_gt_0" float, 
    "num_sats" float, 
    "num_tl_120dpd_2m" float, 
    "num_tl_30dpd" float, 
    "num_tl_90g_dpd_24m" float, 
    "num_tl_op_past_12m" float, 
    "pct_tl_nvr_dlq" float, 
    "percent_bc_gt_75" float, 
    "pub_rec_bankruptcies" float, 
    "tax_liens" float, 
    "tot_hi_cred_lim" float, 
    "total_bal_ex_mort" float, 
    "total_bc_limit" float, 
    "total_il_high_credit_limit" float 
)
EXECUTE 'wget -qO- https://s3-us-west-2.amazonaws.com/lc-demo-data/LoanStats3d.csv | tail -n+1 | sed -e ''/^[^"]/d;/^$/d;s/""//g;s/%//g''' ON MASTER
FORMAT 'CSV'  (NULL AS '' HEADER);

DROP EXTERNAL TABLE IF EXISTS ext_completed_loans_e ;

CREATE EXTERNAL WEB TABLE ext_completed_loans_e
(
    "id" int,
    "member_id" int,
    "loan_amnt" float,
    "funded_amnt" float,
    "funded_amnt_inv" float,
    "term" text,
    "int_rate" float,
    "installment" text,
    "grade" text,
    "sub_grade" text,
    "emp_title" text, 
    "emp_length" text,
    "home_ownership" text,
    "annual_inc" float,
    "verification_status" text,
    "issue_d" text,
    "loan_status" text,
    "pymnt_plan" text,
    "url" text,
    "desc" text,
    "purpose" text,
    "title" text,
    "zip3_code" text,
    "addr_state" text,
    "dti" text,
    "delinq_2yrs" text,
    "earliest_cr_line" text,
    "inq_last_6mths" text,
    "mths_since_last_delinq" float, 
    "mths_since_last_record" float, 
    "open_acc" float, 
    "pub_rec" float, 
    "revol_bal" float, 
    "revol_util" float, 
    "total_acc" float, 
    "initial_list_status" text, 
    "out_prncp" float, 
    "out_prncp_inv" float, 
    "total_pymnt" float, 
    "total_pymnt_inv" float, 
    "total_rec_prncp" float, 
    "total_rec_int" float, 
    "total_rec_late_fee" float, 
    "recoveries" float, 
    "collection_recovery_fee" float, 
    "last_pymnt_d" text, 
    "last_pymnt_amnt" float, 
    "next_pymnt_d" text, 
    "last_credit_pull_d" text, 
    "collections_12_mths_ex_med" text, 
    "mths_since_last_major_derog" float, 
    "policy_code" text, 
    "application_type" text, 
    "annual_inc_joint" text, 
    "dti_joint" text, 
    "verification_status_joint" text, 
    "acc_now_delinq" float, 
    "tot_coll_amt" float, 
    "tot_cur_bal" float, 
    "open_acc_6m" float, 
    "open_il_6m" float, 
    "open_il_12m" float, 
    "open_il_24m" float, 
    "mths_since_rcnt_il" float, 
    "total_bal_il" float, 
    "il_util" float, 
    "open_rv_12m" float, 
    "open_rv_24m" float, 
    "max_bal_bc" float, 
    "all_util" float, 
    "total_rev_hi_lim" float, 
    "inq_fi" float, 
    "total_cu_tl" float, 
    "inq_last_12m" float, 
    "acc_open_past_24mths" float, 
    "avg_cur_bal" float, 
    "bc_open_to_buy" float, 
    "bc_util" float, 
    "chargeoff_within_12_mths" float, 
    "delinq_amnt" float, 
    "mo_sin_old_il_acct" float, 
    "mo_sin_old_rev_tl_op" float, 
    "mo_sin_rcnt_rev_tl_op" float, 
    "mo_sin_rcnt_tl" float, 
    "mort_acc" float, 
    "mths_since_recent_bc" float, 
    "mths_since_recent_bc_dlq" float, 
    "mths_since_recent_inq" float, 
    "mths_since_recent_revol_delinq" float, 
    "num_accts_ever_120_pd" float, 
    "num_actv_bc_tl" float, 
    "num_actv_rev_tl" float, 
    "num_bc_sats" float, 
    "num_bc_tl" float, 
    "num_il_tl" float, 
    "num_op_rev_tl" float, 
    "num_rev_accts" float, 
    "num_rev_tl_bal_gt_0" float, 
    "num_sats" float, 
    "num_tl_120dpd_2m" float, 
    "num_tl_30dpd" float, 
    "num_tl_90g_dpd_24m" float, 
    "num_tl_op_past_12m" float, 
    "pct_tl_nvr_dlq" float, 
    "percent_bc_gt_75" float, 
    "pub_rec_bankruptcies" float, 
    "tax_liens" float, 
    "tot_hi_cred_lim" float, 
    "total_bal_ex_mort" float, 
    "total_bc_limit" float, 
    "total_il_high_credit_limit" float 
)
EXECUTE 'wget -qO- https://s3-us-west-2.amazonaws.com/lc-demo-data/LoanStats_2016Q1.csv | tail -n+1 | sed -e ''/^[^"]/d;/^$/d;s/""//g;s/%//g''' ON MASTER
FORMAT 'CSV'  (NULL AS '' HEADER);



DROP TABLE IF EXISTS denied_loans ;

CREATE TABLE denied_loans
(
    amountRequested float,
    applicationDate date,
    loanTitle text,
    riskScore float,
    debtToIncomeRatio float,
    zipCode text,
    State text,
    employmentLength text,
    policyCode text
)
DISTRIBUTED RANDOMLY
;

drop external table if exists ext_denied_loans_a;

drop external table if exists ext_denied_loans_b;

drop external table if exists ext_denied_loans_c;

CREATE EXTERNAL WEB TABLE ext_denied_loans_a
(
    amountRequested float,
    applicationDate date,
    loanTitle text,
    riskScore float,
    debtToIncomeRatio float,
    zipCode text,
    State text,
    employmentLength text,
    policyCode text
)
EXECUTE 'wget -qO- https://s3-us-west-2.amazonaws.com/lc-demo-data/RejectStatsA.csv | tail -n+2 | sed -e ''/^$/d;s/""//g;s/%//g''' ON MASTER
FORMAT 'CSV'  (NULL AS '' HEADER);

CREATE EXTERNAL WEB TABLE ext_denied_loans_b
(
    amountRequested float,
    applicationDate date,
    loanTitle text,
    riskScore float,
    debtToIncomeRatio float,
    zipCode text,
    State text,
    employmentLength text,
    policyCode text
)
EXECUTE 'wget -qO-  https://s3-us-west-2.amazonaws.com/lc-demo-data/RejectStatsB.csv | tail -n+2 | sed -e ''/^$/d;s/""//g;s/%//g''' ON MASTER
FORMAT 'CSV'  (NULL AS '' HEADER);

CREATE EXTERNAL WEB TABLE ext_denied_loans_c
(
    amountRequested float,
    applicationDate date,
    loanTitle text,
    riskScore float,
    debtToIncomeRatio float,
    zipCode text,
    State text,
    employmentLength text,
    policyCode text
)
EXECUTE 'wget -qO- https://s3-us-west-2.amazonaws.com/lc-demo-data/RejectStatsC.csv  | tail -n+2 | sed -e ''/^$/d;s/""//g;s/%//g''' ON MASTER
FORMAT 'CSV'  (NULL AS '' HEADER);

CREATE EXTERNAL WEB TABLE ext_denied_loans_d
(
    amountRequested float,
    applicationDate date,
    loanTitle text,
    riskScore float,
    debtToIncomeRatio float,
    zipCode text,
    State text,
    employmentLength text,
    policyCode text
)
EXECUTE 'wget -qO- https://s3-us-west-2.amazonaws.com/lc-demo-data/RejectStats_2016Q1.csv  | tail -n+2 | sed -e ''/^$/d;s/""//g;s/%//g''' ON MASTER
FORMAT 'CSV'  (NULL AS '' HEADER);

TRUNCATE denied_loans;
--load em up
INSERT INTO denied_loans
SELECT * FROM ext_denied_loans_a
UNION ALL
SELECT * FROM ext_denied_loans_b
UNION ALL
SELECT * FROM ext_denied_loans_c
UNION ALL
SELECT * FROM ext_denied_loans_d;


TRUNCATE completed_loans;
--load em up
INSERT INTO completed_loans

SELECT * FROM ext_completed_loans_a
UNION ALL
SELECT * FROM ext_completed_loans_b
UNION ALL 
SELECT * FROM ext_completed_loans_c
UNION ALL
SELECT * FROM ext_completed_loans_d
UNION ALL
SELECT * FROM ext_completed_loans_e;

Analyze completed_loans;

analyze denied_loans;

