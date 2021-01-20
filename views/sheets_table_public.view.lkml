view: sheets_table_public {
  sql_table_name: `swilt-project.SheetsConnectorExample.SheetsTablePublic`
    ;;

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: int64_field_2 {
    type: number
    sql: ${TABLE}.int64_field_2 ;;
  }

  dimension: string_field_1 {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
