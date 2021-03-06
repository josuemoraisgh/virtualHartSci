// Copyright (C) 2008 - 2010 - Michael Baudin
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//
// <-- CLI SHELL MODE -->

// Create a sample file.
content = "Coucou!";
filename = fullfile(TMPDIR,"test.txt");
// Update the file only if required.
b = helptbx_updtifneeded ( content , filename );
assert_checkequal(b,%f);
// See the content of the file.
content2 = mgetl ( filename );
assert_checkequal(content,content2);
// No update is necessary now.
b = helptbx_updtifneeded ( content , filename );
assert_checkequal(b,%t);
// Change the content
content = "Hello!";
b = helptbx_updtifneeded ( content , filename );
assert_checkequal(b,%f);
// See the content of the file.
content2 = mgetl ( filename );
assert_checkequal(content,content2);
// No update is necessary now.
b = helptbx_updtifneeded ( content , filename );
assert_checkequal(b,%t);
// Delete the file
mdelete(filename);

