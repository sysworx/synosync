#tag Class
Protected Class HTTPServer
Inherits ServerSocket
	#tag Event
		Function AddSocket() As TCPSocket
		  // Create a new HTTPConnection socket
		  // to pass back to the server
		  Dim s As HttpConnection
		  s = New HttpConnection
		  
		  // Hand it back to the server
		  Return s
		End Function
	#tag EndEvent

	#tag Event
		Sub Error(ErrorCode as Integer)
		  // We got some sort of error, so report it
		  // back to the user
		  MsgBox("Server Error: " + Str( ErrorCode ))
		  
		  // Stop listening because we hit an error condition;
		  // we want the user to restart us if they want to
		  Self.StopListening
		  
		  // Give a visual indication to the user that they
		  // can restart the server if they'd like
		  //MainWindow.StartServerButton.Caption = MainWindow.kStartServer
		End Sub
	#tag EndEvent


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumSocketsConnected"
			Visible=true
			Group="Behavior"
			InitialValue="10"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumSocketsAvailable"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
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
