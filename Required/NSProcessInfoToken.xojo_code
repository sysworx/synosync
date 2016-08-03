#tag Class
Protected Class NSProcessInfoToken
	#tag Method, Flags = &h0
		Sub Destructor()
		  #if TargetMacOS then
		    if ref <> nil and NSProcessRef <> nil and NSProcessInfo.OSVersion >= NSProcessInfo.kOSVersionMavericks then
		      declare sub setValue lib "AppKit" selector "endActivity:" ( ref as Ptr, token as Ptr )
		      setValue( NSProcessRef, ref )
		    end if
		    
		    declare sub release lib "AppKit" selector "release" ( ref as Ptr )
		    if NSProcessRef <> nil then release NSProcessRef
		    if ref <> nil then release ref
		  #endif
		  
		  NSProcessRef = nil
		  ref = nil
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		NSProcessRef As Ptr
	#tag EndProperty

	#tag Property, Flags = &h0
		ref As Ptr
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
End Class
#tag EndClass
