// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

function TreeNode(left, right) {
    this.left = left;
    this.right = right;
}

function basicObject() {
    var x = new TreeNode("aLeft", "aRight");
    print(x.left);
}

basicObject();
