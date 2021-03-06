// ====================================================================
// Allan CORNET
// DIGITEO 2008 - 2010
// ====================================================================
// <-- CLI SHELL MODE -->
// ====================================================================


r = xls_NewExcel();
assert_checktrue(r);

for i=1:10
  r = xls_SetVisible(%t);
  assert_checktrue(r);

  r = xls_SetVisible(%f);
  assert_checktrue(r);
end

r = xls_Quit();
assert_checktrue(r);
