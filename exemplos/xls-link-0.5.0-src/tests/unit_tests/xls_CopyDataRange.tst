// ====================================================================
// Allan CORNET
// DIGITEO 2008 - 2010
// ====================================================================
// <-- CLI SHELL MODE -->
// ====================================================================


test_path = fullfile(xls_getRootPath(), "tests", "unit_tests");

assert_checkfalse(xls_IsExcelRunning());
r = xls_NewExcel();
assert_checktrue(r);

r = xls_Open(fullfile(test_path, "xls_CopyDataRange.xls"));
assert_checktrue(r);

r = xls_SetWorksheet(1);
assert_checktrue(r);

r = xls_CopyDataRange('A1:C2','A12:C13');
assert_checktrue(r);

result1 = xls_GetData('A1:C2');
result2 = xls_GetData('A12:C13');

assert_checkfalse(or(result1 <> result2));

// disable "Save" msg box ==> not saved !!!
r = xls_SetSave(%t);

assert_checktrue(xls_Close());
assert_checktrue(xls_Quit());
