$(document).ready(function() {
		$.featureList(
			$("#feature_tabs li"),
			$("#feature_output li"), {
				start_item : 0,
				transition_interval: 5000
			}
		);

		$('textarea').autosize({append: "\n"});
});