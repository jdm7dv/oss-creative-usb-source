/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;

gTestfile = 'string_replace.js';

/**
   Filename:     string_replace.js
   Description:  'Tests the replace method on Strings using regular expressions'

   Author:       Nick Lerissa
   Date:         March 11, 1998
*/

// var SECTION = 'As described in Netscape doc "Whats new in JavaScript 1.2"';
// var VERSION = 'no version';
// var TITLE   = 'String: replace';



// 'adddb'.replace(/ddd/,"XX")
Assert.expectEq (  "'adddb'.replace(/ddd/,'XX')",
           "aXXb", 'adddb'.replace(/ddd/,'XX'));

// 'adddb'.replace(/eee/,"XX")
Assert.expectEq (  "'adddb'.replace(/eee/,'XX')",
           'adddb', 'adddb'.replace(/eee/,'XX'));

// '34 56 78b 12'.replace(new RegExp('[0-9]+b'),'**')
Assert.expectEq (  "'34 56 78b 12'.replace(new RegExp('[0-9]+b'),'**')",
           "34 56 ** 12", '34 56 78b 12'.replace(new RegExp('[0-9]+b'),'**'));

// '34 56 78b 12'.replace(new RegExp('[0-9]+c'),'XX')
Assert.expectEq (  "'34 56 78b 12'.replace(new RegExp('[0-9]+c'),'XX')",
           "34 56 78b 12", '34 56 78b 12'.replace(new RegExp('[0-9]+c'),'XX'));

// 'original'.replace(new RegExp(),'XX')
Assert.expectEq (  "'original'.replace(new RegExp(),'XX')",
           "XXoriginal", 'original'.replace(new RegExp(),'XX'));

// 'qwe ert x\t\n 345654AB'.replace(new RegExp('x\s*\d+(..)$'),'****')
Assert.expectEq (  "'qwe ert x\t\n 345654AB'.replace(new RegExp('x\\s*\\d+(..)$'),'****')",
           "qwe ert ****", 'qwe ert x\t\n 345654AB'.replace(new RegExp('x\\s*\\d+(..)$'),'****'));


