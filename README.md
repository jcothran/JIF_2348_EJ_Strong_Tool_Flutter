<h1>Building a Weather Ready Nation for All </h1>
We are working with the South Carolina Department of Health and Control (DHEC) in order to design an app that fills out and stores forms digitally in order to educate users on preparation for hazards in case of inclement weather events. Users will be able to upload photos to shows damage within communities, and fill out forms in order to get their prepardness documented. Coded using Flutter, Firestore and Google Cloud. Check the document attached in this folder for Installation and how to download!

<h1>Release Notes</h1>

<h2>Version 0.4.0</h2>
<h3>Features</h3>
<ul style - "list-style-type: square">
<li>Completed Disaster form with proper formatting and such.</li>
<li>Implementation of dropdown menus in parts that need to be changed from text boxes </li>
<li>Database functionality added to store data by the date as well as location  </li>
</ul>
<h3>Bug Fixes</h3>
<ul style - "list-style-type: square">
<li> The Disaster form is running and working now. The disaster form has all of the added features and extra information that is connected to the vulnerability form. </li>
</ul>

<h2>Version 0.3.0</h2>
<h3>Features</h3>
<ul style - "list-style-type: square">
<li>Database functionality added to store forms entered by location</li>
<li>functionality added to edit and revise forms submitted to the database previously</li>
<li>Added page to specify location of user for the purpose of sorting and data analytics</li>
</ul>



<h2>Version 0.2.0</h2>

<h3>Features</h3>
<ul style - "list-style-type: square">
<li>Firebase functionality added</li>
<li>Basic functionality in Firebase for user authentication and datastore established</li>
</ul>
<h3>Bug Fixes</h3>
<ul style - "list-style-type: square">
<li>Removed broken link to disaster risk analysis form that was causing issues; to be fixed.</li>

</ul>

<h2>Version 0.1.0</h2>
<h3>Features</h3>
<ul style - "list-style-type: square">
<li> Functioning access to all forms needed ("Hazard Assessment Form", "Vulnerability Form", "Capacity Assessment Form", and "Disaster Risk Analysis Form").  </li>
<li> Different buttons for all different forms with functioning PDF creation and user entries. </li>
</ul>
<h3>Bug Fixes</h3>
<ul style - "list-style-type: square">
<li> The "Hazard Assessment Form" was previously connected to one big button with the other descriptions as placeholders. This is now multiple different buttons leading to different forms.</li>
<li> The "Vulnerability Form", "Capacity Assessment Form", and "Disaster Risk Analysis Form" buttons have been created and are functional similar to the "Hazard Assessment Form" button in the previous version.</li>


<h2>Version 0.0.1</h2>
<h3>Features</h3>
<ul style - "list-style-type: square">
<li>Access to "Hazard Assessment Form" button and link to fill out information.</li>
<li>Application that allows us to fill out the "Hazard Assessment Form" and create/send a PDF.</li>
</ul>
<h3>Bug Fixes</h3>
<ul style - "list-style-type: square">
<li> Working application running on Flutter.</li>
</ul>

<h1> Installation and Running </h1>
<h2> Install Git Using GitHub Desktop </h2>
Navigate to the latest Git for Windows installer and download the latest version. 

Once the installer has started, follow the instructions as provided in the Git Setup wizard screen until the installation is complete. 

Open the windows command prompt (or Git Bash if you selected not to use the standard Git Windows Command Prompt during the Git installation). 

Type git version to verify Git was installed. 

<h2> Installing Flutter on Mac </h2>
First, download the Flutter SDK from the official website at https://flutter.dev/docs/get-started/install/macos. Click the "Download Flutter for macOS" button to begin the download. 

Once the download is complete, open the terminal application on your Mac. 

Navigate to the directory where you want to install Flutter using the cd command. For example, if you want to install it in the /Users/your-user-name/ directory, type cd /Users/your-user-name/ in the terminal. 

Unzip the downloaded Flutter SDK file using the command: unzip ~/Downloads/flutter_macos_<version>.zip 

Add the Flutter tool to your PATH by running the command: export PATH="$PATH:pwd/flutter/bin" 

Verify that Flutter is installed correctly by running the command: flutter doctor 

<h2> Installing Flutter on PC </h2>
Download the Flutter SDK from the official website at https://flutter.dev/docs/get-started/install/windows. Click the "Download Flutter for Windows" button to begin the download. 

Once the download is complete, extract the contents of the zip file to a directory on your PC. 

Update your system's PATH environment variable to include the Flutter bin directory. This can be done by following the steps listed here: https://flutter.dev/docs/get-started/install/windows#update-your-path 

Open a new Command Prompt window to verify that Flutter is installed correctly by running the command: flutter doctor 

<h2> Installing Firestore </h2>
Go to the Firebase Console website at https://console.firebase.google.com/. 

Sign in with your Google account or create a new account if you don't have one already. 

Let us know the gmail account you will be using and email amccrary6@gatech.edu in order to transfer ownership. 

<h2> Installing IntelliJ </h2>
Go to the official website for IntelliJ IDEA at https://www.jetbrains.com/idea/. 

Click on the "Download" button on the top right corner of the page. 

On the download page, select the version of IntelliJ IDEA that you want to download. There are two versions available: Community and Ultimate. 

If you choose the Community version, click the "Download" button to download the installation file. 

If you choose the Ultimate version, you will be prompted to sign up for a free trial or purchase a license before downloading. 

Once the download is complete, double-click on the installation file to start the installation process. 

Follow the prompts to complete the installation. You may be asked to select the installation location, agree to the license agreement, and create a desktop shortcut. 

After the installation is complete, launch IntelliJ IDEA from the desktop shortcut or by searching for it in your applications folder. 

Once you've completed the setup, you can start using IntelliJ IDEA to develop your projects. 

<h2> Installing VSCode </h2>
Go to the official website for Visual Studio Code at https://code.visualstudio.com/. 

Click on the "Download for [your operating system]" button on the homepage. 

Once the download is complete, open the installer file. 

Follow the prompts to complete the installation. You may be asked to select the installation location, agree to the license agreement, and create a desktop shortcut. 

After the installation is complete, launch Visual Studio Code from the desktop shortcut or by searching for it in your applications folder. 

<h2> Installing Android Studio </h2>
Visit the official Android Studio website at https://developer.android.com/studio/. 

Click on the "Download Android Studio" button. 

Choose your operating system (Windows, Mac, or Linux) and click "Download". 

Once the download is complete, open the downloaded file. 

Follow the installation wizard to install Android Studio on your computer. 

Once the installation is complete, launch Android Studio. 

Android Studio may prompt you to download additional updates or SDKs. Follow the prompts to download and install any necessary updates. 

<h2> Installing XCode (For iOS development on Mac) </h2>
Visit the official website for Apple Developers at https://developer.apple.com/xcode/resources/

Click on the link labelled 'View on the Mac Apple Store' below 

Download Xcode from the App Store

_________________________________

During the installation process, you may be prompted to install additional components, such as the Android SDK or virtual devices. Follow the prompts to install these components as well. 

For more information on the installation process, visit https://docs.flutter.dev/get-started/install

<h1> Running the Application </h1>

Review the steps above and download the Github in order to run it locally, or use Github Desktop. Open in either IntelliJ, VSCode or Android Studio (for Android development). 

Navigate to the general folder in terminal and in order for the flutter commands to work, you can do:  

export PATH="/Users/"YOURUSERNAME”/Downloads/flutter/bin:$PATH" 

Depending on if you’re on Mac or not 

To run the application in the terminal type “flutter run” 

This will start the application and gives you an option to run it as  

1. On the Android Studio application 

2. On Chrome as a Web Application 

When you press either 1 or 2 the application should appear! 

For iOS development, run the app on Xcode (this applies to Mac users). To do this, navigate to the main project folder and then click on the iOS folder. Click on Runner.xcworkspace. This is where you wll run the application on iOS simulators and devices

For more information on how to set up and run the application for iOS through Runner.xcworkspace, refer to this link: https://developer.apple.com/documentation/xcode/running-your-app-in-simulator-or-on-a-device

Note: When trying to run on a physical Apple device, you may recieve an error due to your software being out of date. You may need to update your Cocoa pods and Pod files



