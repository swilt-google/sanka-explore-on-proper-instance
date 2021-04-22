connection: "user_test_1"

# include all the views
include: "/views/**/*.view"


datagroup: citibike_trips_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: citibike_trips_default_datagroup

explore: citibike_trips {

  join: sheets_table_public {
    type: left_outer
    relationship: many_to_one
    sql_on: ${citibike_trips.bikeid} = ${sheets_table_public.int64_field_0} ;;
  }
}
