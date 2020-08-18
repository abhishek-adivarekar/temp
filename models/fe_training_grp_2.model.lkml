connection: "fe_training_2020"

# include all the views
include: "/views/**/*.view"

datagroup: fe_training_grp_2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fe_training_grp_2_default_datagroup

explore: ball_by_ball_details_1 {}

explore: match_details {}
