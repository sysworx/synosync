#tag Class
Protected Class synoSync
Inherits Application
	#tag Event
		Sub Open()
		  // Config Load
		  Dim cnlState as String
		  Dim chUpdate as String
		  Dim dDest as String
		  
		  if Config.fileExists = true then
		    Config.addlog("Configuration loaded", "OK")
		    frm_main.txt_url.text = Config.get("url")
		    frm_main.txt_port.text = Config.get("port")
		    frm_main.txt_user.text = Config.get("username")
		    frm_main.txt_pw.text = Config.cryptGet("password")
		    
		    chUpdate = Config.get("chkupdate")
		    cnlState  = Config.get("cnl")
		    dDest  = Config.get("destination")
		    
		    if dDest = "true" then
		      frm_main.cb_downFolder.State = CheckBox.CheckedStates.Checked
		      frm_main.txt_downFolder.text = Config.get("downloadfolder")
		      frm_main.txt_downFolder.Enabled = true
		    else
		      frm_main.cb_downFolder.State = CheckBox.CheckedStates.Unchecked
		      frm_main.txt_downFolder.text = ""
		      frm_main.txt_downFolder.Enabled = false
		    end if
		    
		    if chUpdate = "true" then
		      frm_main.cb_update.State = CheckBox.CheckedStates.Checked
		    else
		      Config.addlog("Update-Check done", "NOK")
		      frm_main.cb_update.State = CheckBox.CheckedStates.Unchecked
		    end if
		    
		    if cnlState = "true" then
		      frm_main.cb_cnl.State = CheckBox.CheckedStates.Checked
		    else
		      frm_main.cb_cnl.State = CheckBox.CheckedStates.Unchecked
		    end if
		    
		  else
		    
		    frm_main.txt_url.text = "192.168.0.254"
		    frm_main.txt_port.text = "7878"
		    frm_main.txt_user.text = "admin"
		    frm_main.txt_pw.text = "admin"
		    frm_main.cb_update.State = CheckBox.CheckedStates.Checked
		    
		  end if
		  
		  // UpdateCheck
		  If frm_main.cb_update.Value then
		    
		    Dim oVersion As new HTTPSocket
		    oVersion.Yield = True
		    Dim result As String = oVersion.get("http://updates.sys-worx.net/?app=synosync&version",10)
		    result = DefineEncoding(result, Encodings.UTF8)
		    System.DebugLog ("Online-Version: " + result)
		    oVersion.close
		    
		    Config.addlog("Update-Check done","OK")
		    Config.addlog("Upate-Server Verion: " + result,"-")
		    
		    dim int_result as double = val(result)
		    dim int_synoSync as double = val(synoSync.version)
		    
		    if int_result > int_synoSync then
		      synoSync.onVersion = result
		      frm_update.Show
		    end if
		    
		  end if
		  
		  //CnL Server starten
		  if cnlState = "true" then
		    
		    If cnl_server = Nil Then
		      cnl_server = New HttpServer
		    end if
		    
		    cnl_server.port = 9666
		    cnl_server.MinimumSocketsAvailable = 10
		    cnl_server.listen
		    Config.addlog("Click'n'Load Server started", "OK")
		  end if
		  
		  // MBS Cocoa
		  dim x as integer = 100
		  dim s as string = "MBS "
		  dim n as string = decodeBase64("some licence key", encodings.UTF8)
		  dim y as integer = -54
		  
		  // MBS Encryption
		  dim xs as integer = 100
		  dim ss as string = "MBS "
		  dim ns as string = decodeBase64("some licence key", encodings.UTF8)
		  dim ys as integer = -47
		  
		  if not registerMBSPlugin(ns, ss+"Encryption", 2016*xs+01, -4077043*xs+ys) then
		    MsgBox "MBS Plugin serial not valid?"
		  end if
		  
		  
		  if not registerMBSPlugin(n, s+"Cocoa", 2016*x+01, -1780059*x+y) then
		    MsgBox "MBS Plugin serial not valid?"
		  end if
		  
		  // Sprache
		  mbi_about.Text = synoSync.lng_about_window
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function mbi_about() As Boolean Handles mbi_about.Action
			frm_about.Show
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Property, Flags = &h21
		Private cnl_server As HttpServer
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared onVersion As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared version As String = "0.9"
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant

	#tag Constant, Name = lng_about_window, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"About synoSync"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\xC3\x9Cber synoSync"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"About synoSync"
	#tag EndConstant

	#tag Constant, Name = lng_btn_save, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Save"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Speichern"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Save"
	#tag EndConstant

	#tag Constant, Name = lng_btn_sendToDS, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"send to DS"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"an DS senden"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"send to DS"
	#tag EndConstant

	#tag Constant, Name = lng_btn_upload, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"decrypt DLC"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DLC entschl\xC3\xBCsseln"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"decrypt DLC"
	#tag EndConstant

	#tag Constant, Name = lng_cb_cnl, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Activate Click\xE2\x80\x99n\xE2\x80\x99Load (experimental)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Click\xC2\xB4n\xC2\xB4Load aktivieren (Experimentell)"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Activate Click\xE2\x80\x99n\xE2\x80\x99Load (experimental)"
	#tag EndConstant

	#tag Constant, Name = lng_cb_pw, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Password"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Passwort"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Password"
	#tag EndConstant

	#tag Constant, Name = lng_cb_update, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Check for updates at start"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Auf Updates pr\xC3\xBCfen beim starten"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Check for updates at start"
	#tag EndConstant

	#tag Constant, Name = lng_lbl_folder, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Download Folder:"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Download Folder:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Download-Verzeichnis:"
	#tag EndConstant

	#tag Constant, Name = lng_lbl_passwort, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Password:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Passwort:"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Password:"
	#tag EndConstant

	#tag Constant, Name = lng_lbl_pw, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Please enter the password for the archived files in the DLC."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bitte geben Sie hier das Passwort f\xC3\xBCr die im DLC archivierten Dateien an."
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Please enter the password for the archived files in the DLC."
	#tag EndConstant

	#tag Constant, Name = lng_lbl_supportus, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Support us:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Unterst\xC3\xBCtze uns:"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Support us:"
	#tag EndConstant

	#tag Constant, Name = lng_lbl_title, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Update available"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Update verf\xC3\xBCgbar"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Update available"
	#tag EndConstant

	#tag Constant, Name = lng_lbl_url, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"DiskStation Address:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Adresse zur Diskstation:"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"DiskStation Address:"
	#tag EndConstant

	#tag Constant, Name = lng_lbl_username, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Username:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Benutzername:"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Username:"
	#tag EndConstant

	#tag Constant, Name = lng_lbl_version_load, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Download the update from here:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Lade das Update hier herunter:"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Download the update from here:"
	#tag EndConstant

	#tag Constant, Name = lng_lbl_version_text, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Current Version:"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Aktuelle Version:"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Current Version:"
	#tag EndConstant

	#tag Constant, Name = lng_listbox_contex_remove, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Remove row(s)"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Remove row(s)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Link(s) entfernen"
	#tag EndConstant

	#tag Constant, Name = lng_noLinks, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"There are no links available."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Es sind keine Links vorhanden."
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"There are no links available."
	#tag EndConstant

	#tag Constant, Name = lng_noPW, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"There was no password specified!"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Es wurde kein Passwort angegeben!"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"There was no password specified!"
	#tag EndConstant

	#tag Constant, Name = lng_noResponse, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"The DiskStation is not responding\x2C maybe the ip address is wrong\?"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Die Diskstation antwortet nicht\x2C eventuell ist die IP-Adresse falsch\?"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"The DiskStation is not responding\x2C maybe the ip address is wrong\?"
	#tag EndConstant

	#tag Constant, Name = lng_notify_message_nok, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Could not add the link(s)\x2C please check the Debug-Log!"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Could not add the link(s)\x2C please check the Debug-Log!"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Fehler bei Link(s) hinzuf\xC3\xBCgen\x2C bitte kontrolliere das Debug-Log!"
	#tag EndConstant

	#tag Constant, Name = lng_notify_message_ok, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \" link(s) were added to the DownloadStation!"
		#Tag Instance, Platform = Any, Language = en, Definition  = \" link(s) were added to the DownloadStation!"
		#Tag Instance, Platform = Any, Language = de, Definition  = \" Link(s) zur DownloadStation hinzugef\xC3\xBCgt!"
	#tag EndConstant

	#tag Constant, Name = lng_notify_title_nok, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Link(s) not added"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Link(s) not added"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Link(s) nicht hinzugef\xC3\xBCgt"
	#tag EndConstant

	#tag Constant, Name = lng_notify_title_ok, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Link(s) successfully added"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Link(s) successfully added"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Link(s) erfolgreich hinzugef\xC3\xBCgt"
	#tag EndConstant

	#tag Constant, Name = lng_synoSyncRestart, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"For Click\'n\'Load synoSync have to be restarted."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"F\xC3\xBCr Click\'n\'Load muss synoSync neugestartet werden."
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"For Click\'n\'Load synoSync have to be restarted."
	#tag EndConstant

	#tag Constant, Name = lng_update_url, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"http://www.sys-worx.net/software/osx-synosync-en/"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"http://www.sys-worx.net/software/osx-synosync/"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"http://www.sys-worx.net/software/osx-synosync-en/"
	#tag EndConstant

	#tag Constant, Name = lng_wrongLogin, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"The login failed\x2C incorrect login information were used."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Der Login ist fehlgeschlagen\x2C es wurden falsche Login-Informationen benutzt."
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"The login failed\x2C incorrect login information were used."
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
