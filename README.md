# Outpost Anywhere v4 (OA)

**PC Prerequisites:**

* PC targeted for installation of OA desktop app needs to have a 64-bit ODBC connection to the Sybase Sql Anywhere 12 instance that houses the RPS data. (**For security reasons, that ODBC connection should not connect as a user that has DBA privileges on the database**)  
  * [Click here for info on creating a database user with the minimum necessary privileges](./DB_USER.md)
  * [Click here for info on registering the SqlAnywhere ODBC driver](./ODBC_DRIVER.md) 

* User of PC targeted for installation of OA desktop app needs to have permissions to edit the RPS image set.

* PC targeted for install of OA desktop app should be running a currently supported version of Windows 10 that is capable of communicating with Android devices over MTP.

<hr>

**Tablet Prerequisites:**

* The OA mobile app requires Android 7, 8, or 9 (10 is likely to work also, but is untested)

* Chrome and Android Webview (if present) should be updated to current versions 

* Developer mode should be enabled

* Webview implementation should be using 'Chrome Stable' (in Developer options)

* Automatic System updates should be turned on (in Developer options)

* USB Debugging should be enabled (in Developer options)

* Verify apps over USB should be enabled (in Developer options)

* Select USB Configuration should be set to MTP (in Developer options)

<hr>

**Instructions**

1. Test 64-bit ODBC To RPS (see above prerequisites for more info)

2. Test user's connection to access and modify RPS images and directories.

3. Install desktop app by running ./AppInstallers/DesktopAppInstaller/setup.exe on the PC 
    <br>(This step may require administrative privileges)

4. Open desktop app's config dialog

5. Input config values(dsn, license key, etc...)

6. Test settings

7. If the settings test passes, save the settings, else repeat step 6

8. Install mobile app on the tablet by transferring the ./AppInstallers/MobileAppInstaller/Outpost_v4.0.0.apk to the tablet, and launching the installer by double-tapping its icon.
  