connection: "fe_training_2020"

# include all the views
include: "/views/**/*.view"

datagroup: fe_training_grp_2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fe_training_grp_2_default_datagroup

explore: ball_by_ball_details_1 {
  join: match_details {
    type: left_outer
    sql_on: ${ball_by_ball_details_1.match_id}=${match_details.id} ;;
    relationship:many_to_one
  }
}

explore: match_details {}
