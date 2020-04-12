include: "_date_comparison.view.lkml"

view: your_view_name {

#---- This is an example view file
  dimension_group: date_dimension {
    type: time
    timeframes: [date, raw]
    sql: ${TABLE}.DATE ;;
  }


#---- Add in these parameters to your own view file replacing your_date_dimension
  extends: [_date_comparison]

  dimension: event_raw{
    sql:  ${TABLE}.DATE_DIMENSION  ;;
    type: date_raw
    hidden: yes
  }

}
