// ====================================================================
// Allan CORNET
// DIGITEO 2008 - 2010
// ====================================================================
// <-- CLI SHELL MODE -->
// ====================================================================


r = xls_NewExcel();
assert_checktrue(r);

r = xls_AddWorkbook();
assert_checktrue(r);

ver_excel_num = strtod(xls_GetExcelVersion());
if ver_excel_num == 12 | ver_excel_num == 14 then
  max_cell_xls = "XFD1048576";
else
  max_cell_xls = "IV65536";
end

ierr = execstr('xls_CalculateRange()','errcatch');
assert_checkfalse(ierr == 0);

ierr = execstr('xls_CalculateRange(''112A11'',[1 1])','errcatch');
assert_checkfalse(ierr == 0);

ierr = execstr('xls_CalculateRange(''A1'',[1 1])','errcatch');
assert_checkequal(ierr, 0);

ierr = execstr('xls_CalculateRange(max_cell_xls,[1 1])','errcatch');
assert_checkequal(ierr, 0);

assert_checkequal(xls_CalculateRange(max_cell_xls,[1 1]), max_cell_xls);
assert_checkequal(xls_CalculateRange('A1',[1 1]), 'A1');
assert_checkequal(xls_CalculateRange('A1',[1 2]), 'A1:B1');
assert_checkequal(xls_CalculateRange('A1',[2 2]), 'A1:B2');
assert_checkequal(xls_CalculateRange('AZ1',[2 2]), 'AZ1:BA2');

assert_checktrue(xls_SetSave(%t));
assert_checktrue(xls_Close());
assert_checktrue(xls_Quit());
