app-harness
===========

A harness to run locally test apps for the eegeo-platform.

Usage:
* git clone git@github.com:eegeo/app-template.git
* Follow the instructions in the README.md to create an app
* git clone git@github.com:eegeo/app-harness.git
* Include a source reference to your app, and a library reference to eegeo-platform-public/eegeo-platform.swc
* Edit HarnessApplication.as
** Set constant ENTRY_POINT_APP_NAME to your APP_NAME
** Set constant ENTRY_POINT_APP_CLASS to your app entry point Class
* Using the build tool of your choice, build app-harness.swf
* Embed the swf in a webpage and pass in {"storeRoot":"http://dm9tprtc9ukew.cloudfront.net/"} as the flashVars hash

You can automate these steps with an IDE.