/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;


var gTestfile = 'regress-344959.js';
//-----------------------------------------------------------------------------
var BUGNUMBER = 344959;
var summary = 'Functions should not lose scope chain after exception';
var actual = '';
var expect = 'with';


//-----------------------------------------------------------------------------
addtestcases();
//-----------------------------------------------------------------------------

function addtestcases()
{

  //printBugNumber(BUGNUMBER);
  //printStatus (summary);
 
  var x = "global"

    with ({x:"with"})
    actual = (function() { try {} catch(exc) {}; return x }());

  Assert.expectEq(summary + ': 1', expect, actual);

  with ({x:"with"})
    actual = (function() { try { throw 1} catch(exc) {}; return x }());

  Assert.expectEq(summary + ': 2', expect, actual);


}

