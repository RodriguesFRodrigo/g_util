alter session set nls_language = 'BRAZILIAN PORTUGUESE';
alter session set current_schema = horas;
set define off;

create or replace package g_util is

  function format_moeda(
    p_value number,
    p_decimal_places number
  ) return varchar2;

end;
/
