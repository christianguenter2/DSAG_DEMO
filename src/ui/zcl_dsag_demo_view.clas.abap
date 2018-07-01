CLASS zcl_dsag_demo_view DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS
      display
        IMPORTING
          data TYPE any.

ENDCLASS.



CLASS zcl_dsag_demo_view IMPLEMENTATION.

  METHOD display.

    cl_demo_output=>display( data ).

  ENDMETHOD.

ENDCLASS.
