view: boxOffice {
  sql_table_name: paramountPOC.boxOffice ;;

  dimension: boxOffice_id {
    type: number
    sql: ${TABLE}.boxOffice_id ;;
  }

  dimension: movie_title {
    type: string
    sql: ${TABLE}.Movie_title ;;
  }

  dimension: Year {
    type: string
    sql: ${TABLE}.Week ;;
  }
  dimension: Created_date {
    type: string
    sql: ${TABLE}.created_date ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: collection {
    type: sum
    sql: ${TABLE}.Collection ;;
    drill_fields: [detail*]
    value_format_name: usd_0
  }

  measure: avg_collection {
    type: average
    sql: ${TABLE}.Collection ;;
    drill_fields: [detail*]
    value_format_name: usd_0
  }

  set: detail {
    fields: [boxOffice_id, movie_title, Year, collection,Created_date]
  }
}
