AUI().ready(
	'liferay-sign-in-modal',
	function(A) {
		var signIn = A.one('.sign-in > a');

		if (signIn && signIn.getData('redirect') !== 'true') {
			signIn.plug(Liferay.SignInModal);
		}

		window.setTimeout(function() {
			var formBuilderNode = A.one('.lfr-ddm-form-content');

			var formBuilder = A.Widget.getByNode(formBuilderNode);

			console.log(formBuilder);
		}, 5000);
	}
);