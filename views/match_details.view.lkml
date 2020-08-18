view: match_details {
  sql_table_name: `FE_training_dataset.Match_Details`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: player_of_match {
    type: string
    sql: ${TABLE}.player_of_match ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}.result ;;

  }

  dimension: season {
    type: number
    sql: ${TABLE}.season ;;
  }

  dimension: team1 {
    type: string
    sql: ${TABLE}.team1 ;;
  }

  dimension: team2 {
    type: string
    sql: ${TABLE}.team2 ;;
  }

  dimension: toss_decision {
    type: string
    sql: ${TABLE}.toss_decision ;;
  }

  dimension: toss_winner {
    type: string
    sql: ${TABLE}.toss_winner ;;
  }

  dimension: venue {
    type: string
    sql: ${TABLE}.venue ;;
  }

  dimension: win_by_runs {
    type: number
    sql: ${TABLE}.win_by_runs ;;
  }

  dimension: win_by_wickets {
    type: number
    sql: ${TABLE}.win_by_wickets ;;
  }

  dimension: winner {
    type: string
    sql: ${TABLE}.winner ;;
  }
  dimension: logo_ipl {
    type: string
    sql: '' ;;
    html: <img src="https://vaastuyogam.com/wp-content/uploads/2017/05/IPL-1.jpg"> ;;
  }
  measure: count {
    type: count
    drill_fields: [match_detail*]
  }
 measure: count_seasons {
   type: count_distinct
  sql: ${season} ;;
  drill_fields: [season]
 }
set: match_detail {
  fields: [id,date_date,win_by_runs,win_by_wickets,season,winner]
}
}
