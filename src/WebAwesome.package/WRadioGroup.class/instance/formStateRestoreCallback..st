methods
formStateRestoreCallback: argsList 
"'Called when the browser is trying to restore elements state to state in which case reason is 'restore', or when the browser is trying to fulfill autofill on behalf of user in which case reason is 'autocomplete'. In the case of 'restore', state is a string, File, or FormData object previously set as the second argument to setFormValue.'"

self callJS: #'formStateRestoreCallback' with: argsList