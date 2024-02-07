# The name of this view in Looker is "Office View Zone Avg"
view: office_view_zone_avg {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `visionai_dataset.office_view_zone_avg` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Avg Person Count" in Explore.

  dimension: avg_person_count {
    type: number
    sql: ${TABLE}.avg_person_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_person_count {
    type: sum
    sql: ${avg_person_count} ;;  }
  measure: average_avg_person_count {
    type: average
    sql: ${avg_person_count} ;;  }

  dimension: instance {
    type: string
    sql: ${TABLE}.instance ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension: zone {
    type: string
    sql: ${TABLE}.zone ;;
  }
  measure: count {
    type: count
  }
}
