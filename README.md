Cordova PowerManagement plugin
====================

# Overview #
full wake lock for the app which runs for a long time without user interaction.

prevent or allow device from sleeping.

[android, ios] [cordova cli] [xdk] [cocoon] [phonegap build service]

working example: https://play.google.com/store/apps/details?id=com.cranberrygame.mainsubtimer

This is open source cordova plugin.

You can see Plugins For Cordova in one page: http://cranberrygame.github.io?referrer=github

# Change log #
```c
```
# Install plugin #

## Cordova cli ##
https://cordova.apache.org/docs/en/edge/guide_cli_index.md.html#The%20Command-Line%20Interface - npm install -g cordova@5.0.0
```c
cordova plugin add cordova-plugin-powermanagement
(when build error, use github url: cordova plugin add https://github.com/cranberrygame/cordova-plugin-powermanagement)
```

## Xdk ##
https://software.intel.com/en-us/intel-xdk - Download XDK - XDK PORJECTS - [specific project] - CORDOVA HYBRID MOBILE APP SETTINGS - Plugins - Third Party Plugins - Add a Third Party Plugin - Get Plugin from the Web -
```c
Name: powermanagement
Plugin ID: cordova-plugin-powermanagement
[Do not check] Plugin is located in the Apache Cordova Plugins Registry
Repo URL: https://github.com/cranberrygame/cordova-plugin-powermanagement
```

## Cocoon ##
https://cocoon.io - Create project - [specific project] - Setting - Plugins - Custom - Git Url: https://github.com/cranberrygame/cordova-plugin-powermanagement.git - INSTALL - Save<br>

## Phonegap build service (config.xml) ##
https://build.phonegap.com/ - Apps - [specific project] - Update code - Zip file including config.xml
```c
<gap:plugin name="cordova-plugin-powermanagement" source="npm" />
```

## Construct2 ##
Download construct2 plugin<br>
https://dl.dropboxusercontent.com/u/186681453/pluginsforcordova/index.html<br>
How to install c2 native plugins in xdk, cocoon and cordova cli<br>
https://plus.google.com/102658703990850475314/posts/XS5jjEApJYV

# Server setting #
```c
```

# API #
```javascript

document.addEventListener("deviceready", function(){
}, false);
		
window.powermanagement.acquire();

window.powermanagement.release();
		
```
# Examples #
<a href="https://github.com/cranberrygame/cordova-plugin-powermanagement/blob/master/example/basic/index.html">example/basic/index.html</a><br>

# Test #

[![](http://img.youtube.com/vi/cTbY7OqA-Nw/0.jpg)](https://www.youtube.com/watch?v=cTbY7OqA-Nw&feature=youtu.be "Youtube")

You can also run following test apk.
https://play.google.com/store/apps/details?id=com.cranberrygame.mainsubtimer

# Useful links #

Plugins For Cordova<br>
http://cranberrygame.github.io?referrer=github

# Credits #

https://github.com/simplec-dev/powermanagement
