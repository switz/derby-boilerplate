[![build status](https://secure.travis-ci.org/switz/phishvids.png)](http://travis-ci.org/switz/phishvids)

# PhishVids

## More here soon!
If you have any questions in the meantime, you can email me at d@phishvids.com.

## Directory Structure
	/public -- public files served through express
	/src -- coffeescript source
 	  /api -- external APIs
	  /app -- derby app
	  /extras -- extraneous scripts
	  /lib -- external modules
	  /server -- server files (express, derby server)
	/styles -- stylus css
	/ui -- derby components
	/views - derby html templates

## Tests
To run tests please install [Webspecter](https://github.com/jgonera/webspecter) and then execute the following command

    webspecter tests/test.coffee

## Config
This will not run without a file at `src/api/config.json`.

	{
	  "phishnetAPI":"",
	  "youtubeAPI":""
	}

You can get a Phish.net API key from [here](http://api.phish.net/).

## Setlist data
All setlist data is courtesy of the Mockingbird Foundation. Thanks to them, this is all possible.
