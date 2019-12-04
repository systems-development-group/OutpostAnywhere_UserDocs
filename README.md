# Outpost Anywhere v4 (OA)

**PC Prerequisites:**

* PC targeted for installation of OA desktop app needs to have a 64-bit ODBC connection to the Sybase Sql Anywhere 12 instance that houses the RPS data. (**For security reasons, that ODBC connection should not connect as a user that has DBA privileges on the database**)  
  * [Click here for info on creating a database user with the minimum necessary privileges](./DB_USER.md)
  * [Click here for info on registering the SqlAnywhere ODBC driver](./ODBC_DRIVER.md) 
  * [Click here for info on creating an ODBC Connection](./PrerequisiteHelpers/ODBC_Creation.pdf) 

* User of PC targeted for installation of OA desktop app needs to have permissions to edit the RPS image set.

* PC targeted for install of OA desktop app should be running a currently supported version of Windows 10 that is capable of communicating with Android devices over MTP.

---

**Tablet Prerequisites:**

* The OA mobile app requires Android 7, 8, or 9 (10 is likely to work also, but is untested)

* Chrome and Android Webview (if present) should be updated to current versions 

* Developer mode should be enabled

* Webview implementation should be using 'Chrome Stable' (in Developer options)

* Automatic System updates should be turned on (in Developer options)

* USB Debugging should be enabled (in Developer options)

* Verify apps over USB should be enabled (in Developer options)

* Select USB Configuration should be set to MTP (in Developer options)

---

**Instructions**

0. Clone this repo or download it as a .zip (see green button above), unzip if necessary, and cd into the resulting dir.

1. Test the 64-bit ODBC To RPS using the ODBC Data Source Administrator (64-bit). See above prerequisites if you need more info about configuring this connection.

2. Verify that user can read and modify RPS images and directories.

3. Install desktop app by running ./AppInstallers/DesktopAppInstaller/setup.exe on the PC 
    <br>(This step may require administrative privileges)

4. Optional: After the app auto-opens, pin OA Bridge to the user's taskbar.

5. Open Outpost Anywhere Bridge app's config dialog

6. Input config values(ODBC DSN, license key, etc...)

7. Test settings

8. If the settings test passes, save the settings, else return to step 6

9. Verify that you've satisifed the tablet pre-requisites (see above section)

10. Install the mobile app on the tablet by transferring ./AppInstallers/MobileAppInstaller/OA_v4.0.0.apk to the tablet, and launching the installer by double-tapping its icon.
  
11. Connect tablet with PC via USB. When tablet displays the 'Allow access to your data' dialog, select 'Allow'. If this doesn't happen, the customer's IT will need to determine the cause.

12. Open File Explorer > 'This PC' > Select the tablet from the 'Devices and Drives' section. You should see the device's 'Internal shared storage'. If not, the customer's IT will need to address.