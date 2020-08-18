view: ball_by_ball_details_1 {
  sql_table_name: `FE_training_dataset.Ball_by_Ball_details_1`
    ;;

  dimension: ball {
    type: number
    sql: ${TABLE}.ball ;;
  }

  dimension: batsman {
    type: string
    sql: ${TABLE}.batsman ;;
  }

  dimension: batsman_runs {
    type: number
    sql: ${TABLE}.batsman_runs ;;
  }

  dimension: batting_team {
    type: string
    sql: ${TABLE}.batting_team ;;
  }

  dimension: bowler {
    type: string
    sql: ${TABLE}.bowler ;;
  }

  dimension: bowling_team {
    type: string
    sql: ${TABLE}.bowling_team ;;
  }

  dimension: bye_runs {
    type: number
    sql: ${TABLE}.bye_runs ;;
  }

  dimension: dismissal_kind {
    type: string
    sql: ${TABLE}.dismissal_kind ;;
  }

  dimension: extra_runs {
    type: number
    sql: ${TABLE}.extra_runs ;;
  }

  dimension: fielder {
    type: string
    sql: ${TABLE}.fielder ;;
  }

  dimension: inning {
    type: number
    sql: ${TABLE}.inning ;;
  }

  dimension: is_super_over {
    type: number
    sql: ${TABLE}.is_super_over ;;
  }

  dimension: legbye_runs {
    type: number
    sql: ${TABLE}.legbye_runs ;;
  }

  dimension: match_id {
    type: number
    sql: ${TABLE}.match_id ;;
    primary_key: yes
  }

  dimension: noball_runs {
    type: number
    sql: ${TABLE}.noball_runs ;;
  }

  dimension: non_striker {
    type: string
    sql: ${TABLE}.non_striker ;;
  }

  dimension: number_of_wickets {
    type: number
    sql: ${TABLE}.number_of_wickets ;;
  }

  dimension: over {
    type: number
    sql: ${TABLE}.`over` ;;
  }

  dimension: player_dismissed {
    type: string
    sql: ${TABLE}.player_dismissed ;;
  }

  dimension: total_runs {
    type: number
    sql: ${TABLE}.total_runs ;;
  }

  dimension: wide_runs {
    type: number
    sql: ${TABLE}.wide_runs ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
