# synosync opensource
synoSync is a small tool that decrypts DLC files and pushes them on the Synology NAS to the pre-installed Synology Download Station. In addition synoSync supports the Click’n’Load protocol.

synoSync supports any Synology Disk Station from DSM 5.x (it could also work with 4.x, but this is not tested or supported by us).

The tool was developed (with Xojo) and tested on Mac OSX 10.10 Yosemite. Since 08.03.2016 synosync is now under GNU LGPL. I dont have a mac anymore for a long time, so i cant maintain the tool anymore, so i give it opensource.

The Tool uses two Xojo commercial pugins:

- MBS Cocoa (https://www.monkeybreadsoftware.de/xojo/plugin-cocoa.shtml)
- MBS Encryption (https://www.monkeybreadsoftware.net/plugins-mbsencryptionplugin.shtml)
 
These two plugins were needed to run and compile the tool.

# Changelog
0.9
- Timeout exception while adding links is handled now
- Timeout was raised up to 2 min
- Entries in the listbox can now be removed with right-click
- Listbox will be cleared after adding the links
0.8
- Improved WebAPI handling while adding links
- Fixed a English translation bug
- Notification support added
0.7
- Download folder can be chosen now
- Debug-Log shows now API errors
- Login with specials chars in password fixed
- Multilanguage behavior improved
- New icon
0.6
- fixed AppNap Bug
- added Multilanguage-Support (English / German)

# Binary Downloads
The last known binary version 0.9 for OSX can be found here: https://www.sys-worx.net/software/osx-synosync-en/
