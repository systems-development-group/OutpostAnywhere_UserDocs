# Outpost Anywhere v4 (OA)

**Note:**
* If you choose to run any of the Powershell scripts provided here, you'll need to adjust the local Powershell execution-policy (which will require an administrative account). 
```powershell
# To allow scripts provided here to run
Set-ExecutionPolicy -ExecutionPolicy 'RemoteSigned'
# To revert setting to default
Set-ExecutionPolicy -ExecutionPolicy 'Default'
```

**PC Prerequisites:**
* **IMPORTANT:** PC targeted for installation of OA desktop app needs to be capable of interacting with an Android device over USB. To test PC compatibility, connect the PC to an Android device(via USB) that has been prepared as per the Mobile Device Prerequisites section of this document (see below), and run the Powershell script located [here](./PrerequisiteHelpers/PCToAndroidCompatibility/TestPCToAndroidCompatibility.ps1). After running the script, you should a device listed below the text 'List of devices attached'. It that script doesn't locate your device, check the Windows Device Manager for any missing drivers in the USB sections (highlighted by yellow exclamation points). The customer's IT department will need to resolve any driver issues. In some cases, needed drivers may not be available for the PC in question, so a different PC must be used.

* PC targeted for installation of OA desktop app needs to be able to access RPS images via a mapped drive. This implies that RPS images must be exposed via a drive shared on the network.

* PC targeted for installation of OA desktop app needs to have a 64-bit ODBC connection to the Sybase Sql Anywhere 12 instance that houses the RPS data. (**For security reasons, that ODBC connection should not connect as a user that has DBA privileges on the database**)  
  * [Click here for info on creating a database user with the minimum necessary privileges](./DB_USER.md)
  * [Click here for info on registering the SqlAnywhere ODBC driver](./ODBC_DRIVER.md) 
  * [Click here for info on creating an ODBC Connection](./PrerequisiteHelpers/ODBC_Creation.pdf) 

* User of PC targeted for installation of OA desktop app need to have permissions to edit the RPS image set via a mapped drive present on the PC targeted for installation of the desktop app. In addition to READ/WRITE/MODIFY being granted in the Properties' Security tab, the shared drive must be configured to allowing changing of files.

* User(s) of PC targeted for installation of OA desktop app need to have an RPSv4 login that has CREATE, UPDATE, and DELETE permissions in RPSv4's database application (see the three columns located in the table DBA.USER_PROFILE)

---

**Mobile Device Prerequisites:**
* Connecting the PC to the mobile device requires a USB cable capable of data transfer. (Also, it's recommended that the mobile device and cable use USB 3.0 or USB 3.1 due to the faster maximum data transfer speeds.)

* The OA mobile app requires Android 7, 8, or 9 (10 is likely to work also, but is untested)

* Chrome and Android Webview (if present) should be updated to current versions. This is done in the Play Store.

* Developer mode should be enabled. <br>
(Settings > About > Software > Tap build number repeatedly)

* Webview implementation should be using 'Chrome Stable' <br>
(found in Settings > Developer options)

* Automatic System updates should be turned on 
<br> (found in Settings > Developer options)

* USB Debugging should be enabled 
<br> (found in Settings > Developer options)

* Verify apps over USB should be enabled 
<br> (found in Settings > Developer options)

* Select USB Configuration should be set to MTP 
<br> (found in Settings > Developer options)

---

**Instructions**

0. Clone this repo or download it as a .zip (see green button above), unzip if necessary, and cd into the resulting dir.

1. Test the 64-bit ODBC To RPS using the ODBC Data Source Administrator (64-bit). See above prerequisites if you need more info about configuring this connection.

2. Verify that user can read and modify RPS images and directories via a mapped drive. For info on creating a mapped drive, see the script [here](./PrerequisiteHelpers/MapRpsImagePath.ps1)

3. Install desktop app by running ./AppInstallers/DesktopAppInstaller/setup.exe on the PC 
    <br>(This step may require administrative privileges)

4. Optional: After the app auto-opens, pin OA Bridge to the user's taskbar.

5. Open Outpost Anywhere Bridge app's 'Config' dialog

6. Input config values(ODBC DSN, license key, etc...)

7. Test settings

8. If the settings test passes, save the settings, else return to step 6

9. Verify that you've satisifed the tablet pre-requisites (see above section)

10. Install the mobile app on the tablet by transferring ./AppInstallers/MobileAppInstaller/OA_v4.0.0.apk to the tablet, and launching the installer by double-tapping its icon.
  
11. Connect tablet with PC via USB. When tablet displays the 'Allow access to your data' dialog, select 'Allow'. If this doesn't happen, the customer's IT will need to determine the cause.

12. Open File Explorer > 'This PC' > Select the tablet from the 'Devices and Drives' section. You should see the device's 'Internal shared storage'. If not, the customer's IT will need to address.