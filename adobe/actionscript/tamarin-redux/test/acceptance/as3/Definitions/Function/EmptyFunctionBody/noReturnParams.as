/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
package EmptyFunctionBody {
    function noReturnParamsInner(s:String, b:Boolean) { return s; }
    public function noReturnParams(s:String, b:Boolean) { return noReturnParamsInner(s,b); }
}

