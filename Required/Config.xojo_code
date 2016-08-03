#tag Module
Protected Module Config
	#tag Method, Flags = &h1
		Protected Sub addlog(entry as string, result as String)
		  Dim d As New Date
		  
		  entry = ReplaceLineEndings(entry,"")
		  result = ReplaceLineEndings(result,"")
		  
		  entry = ConvertEncoding(entry, Encodings.UTF8)
		  result = ConvertEncoding(result, Encodings.UTF8)
		  
		  Dim finishedEntry as string = d.ShortDate + " - " + d.LongTime + ": " + entry + " [" + result + "]" + endofline
		  
		  frm_main.ta_debug.AppendText(finishedEntry)
		  System.DebugLog(entry + " [" + result + "]")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function cryptGet(byval Config_Value as String) As string
		  'Die Keys sind in den Properties "pubKey" und "priKey" gespeichert
		  'Dies ist kein wirklich sicheres vorgehen, allerdings erhebt die Verschlüsselung innerhalb der Konfig-Datei keine wirkliche Sicherheit
		  
		  Dim cValue as String = Config_Value
		  Dim foItem As FolderItem = SpecialFolder.ApplicationData
		  foItem = foItem.child (App.ExecutableFile.name + ".cfg")
		  
		  Dim configInput as TextInputStream
		  
		  if foItem.Exists then
		    Dim decryptedResult as String
		    
		    configInput = TextInputStream.Open(foItem)
		    
		    Dim cResult as String = configInput.Readall
		    Dim cJSON as new JSONItem(cResult)
		    
		    Dim result as String = cJSON.Lookup(cValue, "false")
		    
		    
		    If result = "false" Then
		      
		      decryptedResult = result
		      
		    else
		      Dim decode as string = DecodeBase64(result)
		      Dim decryptedData as MemoryBlock = Crypto.RSADecrypt(decode, priKey)
		      decryptedResult = decryptedData
		    end if
		    
		    configInput.Close
		    
		    return decryptedResult
		    
		  else
		    
		    return "Es wurde keine Konfigurations-Datei gefunden!"
		    
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub cryptSet(byval Config_Key as String,byval Config_Value as String)
		  'Die Keys sind in den Properties "pubKey" und "priKey" gespeichert
		  'Dies ist kein wirklich sicheres vorgehen, allerdings erhebt die Verschlüsselung innerhalb der Konfig-Datei keine wirkliche Sicherheit
		  
		  Dim cKey as String = Config_Key
		  Dim cValue as String = Config_Value
		  Dim foItem As FolderItem = SpecialFolder.ApplicationData
		  Dim configOutput as TextOutputStream
		  Dim configInput as TextInputStream
		  foItem = foItem.child (App.ExecutableFile.name + ".cfg")
		  
		  if Config_Key <>"" and Config_Value <>"" then
		    
		    if foItem.Exists then
		      
		      configInput = TextInputStream.Open(foItem)
		      
		      Dim cResult as String = configInput.Readall
		      Dim cJSON as new JSONItem(cResult)
		      
		      configInput.Close
		      
		      Dim cString as new MemoryBlock(32)
		      cString = cValue
		      Dim encryptedData as MemoryBlock = Crypto.RSAEncrypt(cString,pubKey)
		      Dim encryptString as string = encryptedData
		      
		      cJSON.value(Config_Key) = EncodeBase64(encryptString)
		      Dim cSave as String =cJSON.ToString
		      
		      configOutput = configOutput.Create(foItem)
		      configOutput.Write(cSave)
		      configOutput.Close
		      
		    else
		      
		      Dim cJSON as new JSONItem
		      
		      Dim cString as new MemoryBlock(32)
		      cString = cValue
		      Dim encryptedData as MemoryBlock = Crypto.RSAEncrypt(cString,pubKey)
		      Dim encryptString as string = encryptedData
		      
		      cJSON.value(Config_Key) = EncodeBase64(encryptString)
		      Dim cSave as String =cJSON.ToString
		      
		      configOutput = configOutput.Create(foItem)
		      configOutput.Write(cSave)
		      configOutput.Close
		      
		    end if
		  else
		    
		    MsgBox "Es wurden keine Werte zum schreiben in die Konfigurations-Datei übergeben!"
		    
		  end if
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub fileDelete()
		  Dim foItem As FolderItem = SpecialFolder.ApplicationData
		  foItem = foItem.child (App.ExecutableFile.name + ".cfg")
		  
		  
		  if foItem.Exists then
		    
		    foItem.Delete
		    
		  else
		    
		    msgbox "Es wurde keine Konfigurations-Datei gefunden!"
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fileExists() As Boolean
		  Dim foItem As FolderItem = SpecialFolder.ApplicationData
		  foItem = foItem.child (App.ExecutableFile.name + ".cfg")
		  
		  if foItem.Exists then
		    
		    return true
		    
		  else
		    
		    return false
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function filePath() As String
		  Dim foItem As FolderItem = SpecialFolder.ApplicationData
		  foItem = foItem.child (App.ExecutableFile.name + ".cfg")
		  
		  if foItem.Exists then
		    
		    return foItem.NativePath
		    
		  else
		    
		    return "Es wurde keine Konfigurations-Datei gefunden!"
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function get(byval Config_Value as String) As string
		  Dim cValue as String = Config_Value
		  Dim foItem As FolderItem = SpecialFolder.ApplicationData
		  foItem = foItem.child (App.ExecutableFile.name + ".cfg")
		  
		  Dim configInput as TextInputStream
		  
		  if foItem.Exists then
		    
		    configInput = TextInputStream.Open(foItem)
		    configInput.Encoding = Encodings.UTF8
		    
		    Dim cResult as String = configInput.Readall
		    Dim cJSON as new JSONItem(cResult)
		    
		    Dim result as String = cJSON.Lookup(cValue, "Der Schlüssel wurde in der Konfigurations-Datei nicht gefunden!")
		    configInput.Close
		    
		    return result
		    
		  else
		    
		    return "Es wurde keine Konfigurations-Datei gefunden!"
		    
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getJSON() As String
		  
		  Dim foItem As FolderItem = SpecialFolder.ApplicationData
		  foItem = foItem.child (App.ExecutableFile.name + ".cfg")
		  
		  Dim configInput as TextInputStream
		  
		  if foItem.Exists then
		    
		    configInput = TextInputStream.Open(foItem)
		    'configInput.Encoding = Encodings.UTF8
		    
		    Dim cResult as String = configInput.Readall
		    configInput.Close
		    
		    return cResult
		    
		  else
		    
		    return "Es wurde keine Konfigurations-Datei gefunden!"
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub remove(byval Config_Key as String)
		  Dim cKey as String = Config_Key
		  Dim foItem As FolderItem = SpecialFolder.ApplicationData
		  Dim configOutput as TextOutputStream
		  Dim configInput as TextInputStream
		  foItem = foItem.child (App.ExecutableFile.name + ".cfg")
		  
		  configInput = TextInputStream.Open(foItem)
		  configInput.Encoding = Encodings.UTF8
		  
		  Dim cResult as String = configInput.Readall
		  Dim cJSON as new JSONItem(cResult)
		  
		  Dim result as String = cJSON.Lookup(Config_Key, "Key not found")
		  configInput.Close
		  
		  if result = "Key not found" then
		    msgbox "Der zu löschende Schlüssel würde in der Konfiguration nicht gefunden!"
		  else
		    cJSON.remove(Config_Key)
		    Dim cSave as String =cJSON.ToString
		    configOutput = configOutput.Create(foItem)
		    configOutput.Write(cSave)
		    configOutput.Close
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub set(byval Config_Key as String,byval Config_Value as String)
		  Dim cKey as String = Config_Key
		  Dim cValue as String = Config_Value
		  Dim foItem As FolderItem = SpecialFolder.ApplicationData
		  Dim configOutput as TextOutputStream
		  Dim configInput as TextInputStream
		  foItem = foItem.child (App.ExecutableFile.name + ".cfg")
		  
		  if Config_Key <>"" and Config_Value <>"" then
		    
		    if foItem.Exists then
		      
		      configInput = TextInputStream.Open(foItem)
		      configInput.Encoding = Encodings.UTF8
		      
		      Dim cResult as String = configInput.Readall
		      Dim cJSON as new JSONItem(cResult)
		      
		      configInput.Close
		      
		      cJSON.value(Config_Key) = Config_Value
		      Dim cSave as String =cJSON.ToString
		      
		      configOutput = configOutput.Create(foItem)
		      configOutput.Write(cSave)
		      configOutput.Close
		      
		    else
		      
		      Dim cJSON as new JSONItem
		      
		      cJSON.value(Config_Key) = Config_Value
		      
		      Dim cSave as String =cJSON.ToString
		      
		      configOutput = configOutput.Create(foItem)
		      configOutput.Write(cSave)
		      configOutput.Close
		      
		    end if
		  else
		    
		    MsgBox "Es wurden keine Werte zum schreiben in die Konfigurations-Datei übergeben!"
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		#tag Note
			'Hier wird ein privater RSA-Key erwartet
		#tag EndNote
		Protected priKey As String = "somekey"
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			'Hier wird ein öffentlicher RSA-Key erwartet
		#tag EndNote
		Protected pubKey As String = "somekey"
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
