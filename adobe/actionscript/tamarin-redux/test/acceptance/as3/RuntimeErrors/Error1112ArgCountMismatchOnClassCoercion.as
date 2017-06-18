/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;
import com.adobe.test.Utils;
var CODE = 1112; // Argument count mismatch on class coercion. Expected 1, got _.

//-----------------------------------------------------------
//-----------------------------------------------------------

var expected = "Error #" + CODE;
var result = "no error";
try {
    class a {
        function a() {}
    }
    var b = a(1,2);
} catch (err) {
    result = Utils.grabError(err, err.toString());
} finally {
    Assert.expectEq("Runtime Error", expected, result);
}

//-----------------------------------------------------------
//-----------------------------------------------------------
