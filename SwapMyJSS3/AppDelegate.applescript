--
--  AppDelegate.applescript
--  SwapMyJSS
--
--  Created by Administrator on 6/20/14.
--  Copyright (c) 2014 Partners. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
    property jssServer : "Checking..."
	property statusText : "Initializing...."
    property userID : "anon123"
    property emailAddr : "Peas@partners.org"
    property fullName : "Peas User"
    property workingNow : true
    property runPolicy : false
    property runInventory : false
    property runManage : false
    property defaults : missing value

	-- IBOutlets
	property theWindow : missing value
    property prefsWindow: missing value
    
    global currServer
    global prodServer
    global testServer
    global devServer
    global prodEnrollK
    global testEnrollK
    global devEnrollK
    global currentServer
    global currServer
    
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened
        
        --set default server values
        tell current application's NSUserDefaults to set defaults to standardUserDefaults()
        tell defaults to registerDefaults_({prodServer:"https://casper.example.com:8443/",testServer:"https://casperTEST.example.com:8443/",devServer:"https://casperDEV.example.com:8443/"})
        
        --get current server. note Timeout doesn't work
        try
            with timeout of 5 seconds
            set my jssServer to (do shell script "/usr/sbin/jamf checkJSSConnection | grep https | cut -d \"/\" -f3|sort -u" with administrator privileges)
        end timeout
        on error
            set my jssServer to ""
        end try
        set my workingNow to false
        set my statusText to "Ready"
        
        --retrieve defaults
        tell defaults to set prodServerKey to objectForKey_("prodServer")
        tell defaults to set testServerKey to objectForKey_("testServer")
        tell defaults to set devServerKey to objectForKey_("devServer")
        tell defaults to set prodEnrollKeyKey to objectForKey_("prodEnrollKey")
        tell defaults to set testEnrollKeyKey to objectForKey_("testEnrollKey")
        tell defaults to set devEnrollKeyKey to objectForKey_("devEnrollKey")
        set prodServer to (prodServerKey as string)
        set testServer to (testServerKey as string)
        set devServer to (devServerKey as string)
        set prodEnrollK to (prodEnrollKeyKey as string)
        set testEnrollK to (testEnrollKeyKey as string)
        set devEnrollK to (devEnrollKeyKey as string)

        try
            set currentServer to (do shell script "defaults read /Library/Preferences/com.jamfsoftware.jamf jss_url")
        on error
            set currentServer to "Other"
            set currServer to "Other"
        end try
        
        if currentServer is prodServer then
            set currServer to "production"
        else if currentServer is testServer then
            set currServer to "test"
        else if currentServer is devServer then
            set currServer to "dev"
        else if currentServer is "" then
            set currServer to "BKUP"
        else
            set currServer to "Other"
        end if
        
	end applicationWillFinishLaunching_
    
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits
		return current application's NSTerminateNow
	end applicationShouldTerminate_
    
    
    on savePrefs_(sender)
        tell theWindow to displayIfNeeded()
        tell prefsWindow to makeFirstResponder_(missing value)
        
        tell defaults to set prodServerKey to objectForKey_("prodServer")
        tell defaults to set testServerKey to objectForKey_("testServer")
        tell defaults to set devServerKey to objectForKey_("devServer")
        tell defaults to set prodEnrollKeyKey to objectForKey_("prodEnrollKey")
        tell defaults to set testEnrollKeyKey to objectForKey_("testEnrollKey")
        tell defaults to set devEnrollKeyKey to objectForKey_("devEnrollKey")
        
        set prodServer to (prodServerKey as string)
        set testServer to (testServerKey as string)
        set devServer to (devServerKey as string)
        set prodEnrollK to (prodEnrollKeyKey as string)
        set testEnrollK to (testEnrollKeyKey as string)
        set devEnrollK to (devEnrollKeyKey as string)
        
        display dialog "Preferences Saved" buttons "OK" default button 1
        prefsWindow's orderOut_(me)
    end savePrefs_

    on quitTime_(sender)
        tell me to quit
    end quitTime_

    on openPrefs_(sender)
        prefsWindow's orderFront_(me)
    end openPrefs_
    
    on setProduction_(sender)
        set my workingNow to true
        set my statusText to "Working.. One moment please"
        tell theWindow to displayIfNeeded()
        
    if (sender's title as string) is "Production"
        set newJSS to prodServer
        set enrollKey to prodEnrollK
    else if (sender's title as string) is "Test"
        set newJSS to testServer
        set enrollKey to testEnrollK
    else if (sender's title as string) is "Development"
        set newJSS to devServer
        set enrollKey to devEnrollK
    end if
    
    set my statusText to "Changing JSS Enrollment to " & newJSS
    set newRole to (sender's title as string)
    tell theWindow to displayIfNeeded()
    
    try
        do shell script "cp /Library/Preferences/com.jamfsoftware.jamf.plist /Library/Preferences/com.jamfsoftware.jamf." & currServer with administrator privileges
    on error
        log "error step 1"
    end try
    try
        do shell script "cp /usr/sbin/jamf /usr/sbin/jamf.backup." & currServer with administrator privileges
        on error
        log "error step 2"
    end try
    try
        do shell script "/usr/sbin/jamf removeFramework" with administrator privileges
    on error
        log "error step 3"
    end try
    try
        do shell script "cp /Library/Preferences/com.jamfsoftware.jamf." & currServer & " /Library/Preferences/com.jamfsoftware.jamf.plist" with administrator privileges
    on error
        log "error step 4"
    end try
    try
        do shell script "cp /usr/sbin/jamf.backup." & currServer & " /usr/sbin/jamf" with administrator privileges
    on error
        log "error step 5"
    end try
    try
        do shell script "defaults write /Library/Preferences/com.jamfsoftware.jamf allowInvalidCertificate -boolean true" with administrator privileges
    on error
        log "error step 6"
    end try
    try
        do shell script "defaults write /Library/Preferences/com.jamfsoftware.jamf jss_url -string " & newJSS with administrator privileges
    on error
        log "error step 7"
    end try
    try
        do shell script "defaults delete /Library/Preferences/com.jamfsoftware.jamf last_management_framework_change_id" with administrator privileges
    on error
        log "error step 8"
    end try
    
    set my statusText to "Settings changed.  Running Re-enrollment now."
    if (runPolicy as string) is "true" as string then set doPolicy to " "
    if (runPolicy as string) is "false" as string then set doPolicy to " -noPolicy "
    if (runInventory as string) is "true" as string then set do2Policy to " "
    if (runInventory as string) is "false" as string then set do2Policy to " -noRecon "
    if (runManage as string) is "true" as string then set do3Policy to " "
    if (runManage as string) is "false" as string then set do3Policy to " -noManage "
    --Do Enrollment
    set shellString to "/usr/sbin/jamf createConf -k -url " & newJSS & ";/usr/sbin/jamf enroll -invitation " & enrollKey & " -endUsername \"" & userID & "\" -realname \"" & fullName & "\" -email \"" & emailAddr & "\" -ldapServerID 1 -userID \"-1\" " & doPolicy & do2Policy & do3Policy
    try
        do shell script (shellString) with administrator privileges
    on error
        display dialog "An error occured during reenrollment. Enroll this computer manually and try again later." buttons "OK" default button 1
        set my workingNow to false
        set my statusText to "Error during enrollment."
        exit
    end try
    
    set my statusText to "Updating local Files " & (sender's title as string)
    tell theWindow to displayIfNeeded()
    
    try
        with timeout of 5 seconds
        set my jssServer to (do shell script "/usr/sbin/jamf checkJSSConnection | grep https | cut -d \"/\" -f3" with administrator privileges)
        end timeout
    on error
        set my jssServer to ""
    end try
    
    set my statusText to "Successfully enrolled in JSS." & (sender's title as string)
    set my workingNow to false
    
end setProduction_

end script