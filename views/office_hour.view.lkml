view: office_view_hour {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `visionai_dataset.office_view_hour` ;;

  dimension: instance {
    type: string
    sql: ${TABLE}.instance ;;
  }

  dimension_group: time {
    type: time
    timeframes: ["date", "week","month", "year", "hour", "minute", "second"]
    sql: ${TABLE}.time ;;
  }

  measure: person_count {
    type: sum
    sql: ${TABLE}.total_person_count ;;
  }

  measure: max_person_count {
    type: max
    sql: ${TABLE}.total_person_count ;;
  }



  }
