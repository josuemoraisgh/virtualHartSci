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

r = xls_SetWorksheet(1);
assert_checktrue(r);

r = xls_SetData("A2:B3",1.3);
assert_checktrue(r);

r = xls_SetSave(%t);
assert_checktrue(r);

if isfile(TMPDIR + "/xls_Save.xls") then
  mdelete(TMPDIR + "/xls_Save.xls");
end

r = xls_DisplayAlerts(%f);
assert_checktrue(r);


r = xls_SaveAs(TMPDIR + "/xls_Save.xls");
assert_checktrue(r);

xls_SelectRange("A1");
assert_checktrue(r);

xls_SetFont("ARIAL",%t,%f,20);
assert_checktrue(r);

xls_SetData("A1","Titre");
assert_checktrue(r);

r = xls_SetWorksheetName("test");
assert_checktrue(r);

// disable "Save" msg box ==> not saved !!!
r = xls_SetSave(%t);
assert_checktrue(r);

r = xls_Save();
assert_checktrue(r);

r = xls_Close();
assert_checktrue(r);

r = xls_Quit();
assert_checktrue(r);
