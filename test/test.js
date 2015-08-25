var sensit = require("../dist/sensit");
var api    = new sensit("hyR8oFBUK2sXDN38W7YsKrcxWz8zIefnHqb988TugX8oqRlg1kbrkQjvEWMK9Jut");

api.getAllDevices()
	.then(function (json) {
		console.log(json);
	})
	.fail( function (err) {
		console.log(err);
	});