// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

function someBody(message:String) {
	this.x = message;
}

someBody.prototype.printMessage = function() {
	print(this.x);
}

function shadowProperty() {
    var testBody:Object = new someBody("weee prototype");
    testBody.printMessage();
}

shadowProperty();
