methods
setCustomValidity: argsList 
"'Do not use this when creating a 'Validator'. This is intended for end users of components. We track manually defined custom errors so we don't clear them on accident in our validators.'"

self callJS: #'setCustomValidity' with: argsList