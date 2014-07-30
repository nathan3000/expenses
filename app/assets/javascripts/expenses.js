$(function() {
    $('#expenses-tab a').click(function (e) {
	  e.preventDefault();
	  $(this).tab('show');
	})

    $('form#new_expense')
    	.on('ajax:beforeSend', function(e, xhr, settings){
    		var $submitButton = $(this).find('input[name="commit"]');

    		// Update the text of the submit button to let the user know stuff is happening.
    		// But first, store the original text of the submit button, so it can be restored when the request is finished.
    		$submitButton.data('origText', $(this).text());
    		$submitButton.text("Submitting...");
    	})
    	.bind('ajax:success', function(e, data, status, xhr){
    		console.log('ajax:success');
    		var $form = $(this),
    			message,
    			messageText;

    		// Reset fields and any validation errors, so form can be used again, but leave hidden_field values intact.
    		$form.find('textarea,input[type="text"],input[type="number"],select').val("");
    		$form.find('div.validation-error').empty();

    		//message = xhr.getResponseHeader('X-Message');

    		message = "<strong>Success!</strong> Your expense was successfully added."

    		messageText = "<p class='alert alert-success'>" + message + "</p>"; 

    		$('#flash-message').html(messageText);
    	})
    	.on('ajax:complete', function(e, xhr, status){
    		console.log('ajax:complete');

    		var $submitButton = $(this).find('input[name="commit"]');

    		// Restore the original submit button text
    		$submitButton.text( $(this).data('origText'));
    	})
    	.on('ajax:error', function(e, xhr, status, error){
    		console.log('ajax:error');

    		var $form = $(this),
    			errors,
    			errorText;

    		try {
    			// Populate errorText with the comment errors
    			errors = $.parseJSON(xhr.responseText);
    		} catch(err) {
    			// If the responseText is not valid JSON (like if a 500 exception was thrown), populate errors with a generic error message.
                errors = { message: "Please reload the page and try again" };
    		}

    		// Build an unordered list from the list of errors
    		errorText = "<ul class='alert alert-danger'><strong>Ooops!</strong> There were errors with your submission: \n";

    		for (error in errors) {
    			errorText += "<li>" + errors[error] + "</li>";
    		}

    		errorText += "</ul>";

    		// Insert error list into form
    		$form.find('#flash-message').html(errorText);
	 	});


});
