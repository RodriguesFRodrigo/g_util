alter session set nls_language = 'BRAZILIAN PORTUGUESE';
alter session set current_schema = horas;
set define off;

create or replace package body g_util is

  function format_moeda(
    p_value number,
    p_decimal_places number,
    p_pattern varchar2
  )  return varchar2 is
  begin
    return 'R$ '||to_char(round(nvl(p_value,0), p_decimal_places), p_pattern);
  end;

end;
/
