methods
getHexString: argsList 
"'Generates a hex string from HSV values. Hue must be 0-360. All other arguments must be 0-100.'"

self callJS: #'getHexString' with: argsList