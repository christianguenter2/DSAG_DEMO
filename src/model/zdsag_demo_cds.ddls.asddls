@AbapCatalog.sqlViewName: 'ZDSAG_DEMO_DDIC'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'DSAG Demo'
define view ZDSAG_DEMO_CDS
  as select from zdsag_demo
{
  //zdsag_demo
  mandt,
  uname,
  text,
  status
} 
 