// ====================================================================
// Allan CORNET
// DIGITEO 2008 - 2010
// ====================================================================
// <-- CLI SHELL MODE -->
// ====================================================================


ierr = execstr('res = xls_RecoverExcel(1)','errcatch');
assert_checkfalse(ierr == 0);

assert_checkfalse(xls_IsExcelRunning());

r = xls_NewExcel();
assert_checktrue(r);

assert_checktrue(xls_IsExcelRunning());
assert_checktrue(xls_RecoverExcel());

r = xls_Quit();
assert_checktrue(r);

// We wait that excel close all windows
sleep(2000);
assert_checkfalse(xls_IsExcelRunning());
