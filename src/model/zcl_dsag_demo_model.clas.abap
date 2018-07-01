CLASS zcl_dsag_demo_model DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
    tty_dsag_demo TYPE STANDARD TABLE OF zdsag_demo
                       WITH NON-UNIQUE DEFAULT KEY.

    METHODS:
      select
        RETURNING
          VALUE(rt_data) TYPE tty_dsag_demo.

ENDCLASS.



CLASS ZCL_DSAG_DEMO_MODEL IMPLEMENTATION.


  METHOD select.

    SELECT FROM zdsag_demo
           FIELDS *
           INTO TABLE @rt_data.

  ENDMETHOD.
ENDCLASS.
