#tag Class
Protected Class HTTPConnection
Inherits TCPSocket
	#tag Event
		Sub DataAvailable()
		  // Read in everything from the internal buffers
		  // and process the data
		  ProcessHeaders(Self.ReadAll())
		End Sub
	#tag EndEvent

	#tag Event
		Sub SendComplete(userAborted as Boolean)
		  #Pragma Unused userAborted
		  // Due to the HTTP spec we adhere to, we're
		  // required to close the connection once we've
		  // finished sending you the page.
		  Self.Close
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub ProcessHeaders(headers as string)
		  // JDownloader ClicknLoad Xojo Engine (by Sys-worX.net)
		  
		  Dim temp, cmd, param As String
		  Dim EndOfLine As String = EndOfLine.UNIX
		  
		  // Trennen der empfangen Daten
		  temp = NthField(headers, Chr(13), 1)
		  cmd = NthField( temp, " ", 1 )
		  param = NthField( temp, " ", 2 )
		  
		  // Header lesen und decodieren
		  Dim getData As String = URLDecode(headers)
		  System.DebugLog(getData)
		  
		  // Headers die gesendet werden festlegen
		  Dim reheaders As String = "HTTP/1.1 200 OK" + EndOfLine + "Content-Type: text/html"+ EndOfLine + EndOfLine 
		  
		  // Parameter /jdcheck.js empfangen
		  If param = "/jdcheck.js" Then
		    Config.addlog("[CNL] Parameter: /jdcheck.js", "-")
		    Me.write(reheaders + "jdownloader=true; var version='18507';" )
		  End If
		  
		  // Parameter / empfangen
		  If param = "/" Then
		    Config.addlog("[CNL] Parameter: /", "-")
		    Me.write(reheaders + "synoSync - CnL Engine - V 0.1.3" )
		  End If
		  
		  // Parameter /flash? empfangen
		  If InStr(param, "/flash?") > 0 Then
		    Config.addlog("[CNL] Parameter: /flash?", "-")
		    Me.write(reheaders +  "JDownloader")
		  End If
		  
		  // Parameter /crossdomain.xml empfangen - (dient dazu bei Share-Online als JDownloader = Online angezeigt zu werden
		  If param = "/crossdomain.xml" Then
		    Config.addlog("[CNL] Parameter: /crossdomain.xml", "-")
		    Me.write(reheaders + "<?xml version=" + Chr(34) + "1.0" + Chr(34) + "?>" _
		    + "<!DOCTYPE cross-domain-policy SYSTEM " + Chr(34) + "http://www.macromedia.com/xml/dtds/cross-domain-policy.dtd" + Chr(34) + ">" _
		    + "<cross-domain-policy>" _
		    + "<allow-access-from domain=" + Chr(34) + "*" + Chr(34) + " />" _
		    + " </cross-domain-policy>")
		  End If
		  
		  // Parameter /flash/add empfangen - (Plain CnL Links)
		  If param = "/flash/add" Then
		    
		    Config.addlog("[CNL] Parameter: /flash/add", "-")
		    System.DebugLog(getData)
		    
		    // Daten finden
		    Dim rgxData As New regex
		    Dim data As RegExMatch
		    rgxData.SearchPattern = "urls=(.*?)(&|$)"
		    data = rgxData.Search(getData)
		    
		    Config.addlog("[CNL] Plain-Links: "+ encodeURLComponent(data.SubExpressionString(1)), "-")
		    
		    // Links cleanen und in ein String Array legen
		    Dim link() As String = URLDecode(data.SubExpressionString(1)).Split("\r\n")
		    Dim count As Integer = UBound(link)
		    
		    // Links trennen und der Listbox hinzufügen
		    For i As Integer = 0 To count
		      If link(i) = "" Then
		      Else
		        frm_main.lb_links.AddRow(ReplaceLineEndings(link(i),""))
		        frm_main.lb_links.RowPicture(i) = add
		      End If
		    Next
		    
		  End If
		  
		  // Parameter /flash/addcrypted2 - (Crypted Links)
		  If param = "/flash/addcrypted2" Then
		    Config.addlog("[CNL] Parameter: /flash/addcrypted2", "-")
		    
		    // Listbox löschen und Passwort resetten
		    frm_main.lb_links.DeleteAllRows
		    frm_pwentry.pw_archive = ""
		    
		    //Archive Passwort finden
		    Dim rgxPass As New regex 
		    Dim password As RegExMatch 
		    rgxPass.SearchPattern= "passwords=(.*?)(&|$)"
		    password = rgxPass.Search(getData)
		    
		    // Prüfen ob das Password etwas enthält um Exception zu vermeiden
		    If password <> Nil Then
		      System.DebugLog("Passwort: " + password.SubExpressionString(1))
		      Config.addlog("[CNL] Archiv-PW: "+ encodeURLComponent(password.SubExpressionString(1)), "-")
		    End If
		    
		    // verschlüsselte Daten finden
		    Dim rgxData As New regex
		    Dim data As RegExMatch
		    rgxData.SearchPattern = "crypted=(.*?)(&|$)"
		    data = rgxData.Search(getData)
		    Dim linkData As String = data.SubExpressionString(1)
		    
		    System.DebugLog("Data: " + data.SubExpressionString(1))
		    Config.addlog("[CNL] Data: "+ encodeURLComponent(data.SubExpressionString(1)), "-")
		    
		    // Java Funktion finden
		    Dim rgxKey As New regex
		    Dim dekey As RegExMatch
		    //rgxKey.SearchPattern = "jk=(.*?){(.*?)}(&|$)"
		    rgxKey.SearchPattern = "jk=(.*?){(.*?)}(;|&|$)"
		    dekey = rgxKey.Search(getData)
		    Dim java As String = dekey.SubExpressionString(2)
		    
		    System.DebugLog("Java: " + "function f(){" + java + "} f();")
		    
		    Config.addlog("[CNL] Java-Function: "+ encodeURLComponent(java), "-")
		    
		    // Java ausführen mit MBS Plugin
		    Dim jKey As String
		    
		    // ========= MAC Plugin ================================================================
		    #If TargetMacOS Then
		      jKey = frm_main.htmView.EvaluateJavaScriptMBS("function f(){" + java + "} f();")
		    #EndIf
		    // ========= MAC END ===================================================================
		    
		    jKey = Uppercase(jKey)
		    
		    System.DebugLog("Java Function: " + "function f(){" + java + "} f();")
		    Config.addlog("[CNL] Java-Key: "+ jKey, "-")
		    
		    // Links entschlüsseln mit MBS Plugin
		    linkData = DecodeBase64(linkData)
		    jKey = DecodeHex(jKey)
		    Dim IV As MemoryBlock = jKey
		    Dim c As CipherMBS = CipherMBS.aes_128_cbc
		    c.DecryptInit jKey, IV
		    c.SetPadding False
		    
		    Dim r As String = c.ProcessString(linkData) + c.FinalizeAsString
		    r = DefineEncoding(r, encodings.ASCII)
		    
		    While Asc(Right(r,1)) = 0
		      r = Left(r, Len(r)-1)
		    Wend
		    
		    System.DebugLog(r)
		    Config.addlog("[CNL] Links decrypted: "+ r, "-")
		    
		    // Antworten
		    Dim reheaders2 As String = "HTTP/1.1 200 OK" + EndOfLine + _
		    "Connection: close" + EndOfLine + _
		    "Server: HttpServer" + EndOfLine + _
		    "Access-Control-Allow-Origin: *" + EndOfLine + _
		    "Content-Type: text/html" + EndOfLine + _
		    "Cache-Control: no-store, no-cache" + EndOfLine + EndOfLine
		    
		    Me.write(reheaders2 + "success" + EndOfLine)
		    
		    // Links cleanen und in ein String Array legen
		    Dim link() As String = r.Split(EndOfLine)
		    Dim count As Integer = UBound(link)
		    
		    System.DebugLog ("Links: "+ count.ToText)
		    
		    //Links der Listbox hinzufügen und EndofLine entfernen
		    For i As Integer = 0 To count
		      If link(i) = "" Then
		      Else
		        frm_main.lb_links.AddRow(ReplaceLineEndings(link(i),""))
		        frm_main.lb_links.RowPicture(i) = add
		      End If
		    Next
		    
		    //Senden Button aktivieren
		    frm_main.btn_sendToDS.Enabled = True
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function URLDecode(s as String) As String
		  Dim TempAns As String
		  Dim CurChr As Integer
		  
		  CurChr = 1
		  
		  Do Until CurChr - 1 = Len(s)
		    Select Case Mid(s, CurChr, 1)
		    Case "+"
		      TempAns = TempAns + " "
		    Case "%"
		      TempAns = TempAns + Chr(Val("&h" + Mid(s, CurChr + 1, 2)))
		      CurChr = CurChr + 2
		    Case Else
		      TempAns = TempAns + Mid(s, CurChr, 1)
		    End Select
		    
		    CurChr = CurChr + 1
		  Loop
		  
		  return  TempAns
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Address"
			Visible=true
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
