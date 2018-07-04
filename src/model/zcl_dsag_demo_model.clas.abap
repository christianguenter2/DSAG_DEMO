CLASS zcl_dsag_demo_model DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
    tty_dsag_demo TYPE STANDARD TABLE OF zdsag_demo_cds
                       WITH NON-UNIQUE DEFAULT KEY.

    METHODS:
      select
        RETURNING
          VALUE(rt_data) TYPE tty_dsag_demo,

      delete_all.

ENDCLASS.



CLASS zcl_dsag_demo_model IMPLEMENTATION.


  METHOD delete_all.

    DELETE FROM zdsag_demo.

  ENDMETHOD.


  METHOD select.

    SELECT FROM zdsag_demo_cds
           FIELDS *
           INTO TABLE @rt_data.

  ENDMETHOD.
ENDCLASS.
