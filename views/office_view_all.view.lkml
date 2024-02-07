# The name of this view in Looker is "Office View All"
view: office_view_all {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `visionai_dataset.office_view_all` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Instance" in Explore.

  dimension: instance {
    type: string
    sql: ${TABLE}.instance ;;
  }

  dimension: person_count {
    type: number
    sql: ${TABLE}.person_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_person_count {
    type: sum
    sql: ${person_count} ;;  }
  measure: average_person_count {
    type: average
    sql: ${person_count} ;;  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension_group: time2 {
    type: time
    timeframes: ["date", "week","month", "year", "hour", "minute", "second"]
    sql: ${TABLE}.time ;;
  }
  measure: total_count {
    type: average
    sql: ${person_count}   ;;
  }
  measure: person_count2 {
    type: sum
    sql: ${TABLE}.person_count ;;
  }
  measure: count {
    type: count
  }
}
