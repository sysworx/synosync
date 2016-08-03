#tag Class
Protected Class NSProcessInfo
	#tag Method, Flags = &h0
		Function automaticTerminationSupportEnabled() As boolean
		  #if TargetMacOS then
		    if OSVersion >= kOSVersionLion then
		      declare function getValue lib "AppKit" selector "automaticTerminationSupportEnabled" ( ref as Ptr ) as boolean
		      return getValue( NSProcessRef )
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function beginActivityWithOptions(options as UInt64, reason as string) As NSProcessInfoToken
		  #if TargetMacOS then
		    if OSVersion >= kOSVersionMavericks then
		      declare function getToken lib "AppKit" selector "beginActivityWithOptions:reason:" ( ref as Ptr, options as Uint64, reason as CFStringRef ) as Ptr
		      declare sub retain lib "AppKit" selector "retain" ( ref as Ptr )
		      Dim rvalue as new NSProcessInfoToken
		      rvalue.ref = getToken( NSProcessRef, options, reason )
		      rvalue.NSProcessRef = NSProcessRef
		      retain NSProcessRef
		      retain rvalue.ref
		      
		      if rvalue.ref = nil then break
		      
		      return rvalue
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub constructor(inRef as Ptr)
		  NSProcessRef = inRef
		  #if targetMacOS then
		    if NSProcessRef <> nil then
		      declare sub retain lib "AppKit" selector "retain" ( ref as Ptr )
		      retain NSProcessRef
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub destructor()
		  #if targetMacOS then
		    if NSProcessRef <> nil then
		      declare sub release lib "AppKit" selector "release" ( ref as Ptr )
		      release( NSProcessRef )
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub disableAutomaticTermination(reason as string)
		  #if TargetMacOS then
		    if OSVersion >= kOSVersionLion then
		      declare sub setValue lib "AppKit" selector "disableAutomaticTermination:" ( ref as Ptr, value as CFstringRef )
		      setValue( NSProcessRef, reason )
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub disableSuddenTermination()
		  #if TargetMacOS then
		    if OSVersion >= kOSVersionSnowLeopard then
		      declare sub setValue lib "AppKit" selector "disableSuddenTermination" ( ref as Ptr )
		      setValue( NSProcessRef )
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub enableAutomaticTermination(reason as string)
		  #if TargetMacOS then
		    if OSVersion >= kOSVersionLion then
		      declare sub setValue lib "AppKit" selector "enableAutomaticTermination:" ( ref as Ptr, value as CFstringRef )
		      setValue( NSProcessRef, reason )
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub enableSuddenTermination()
		  #if TargetMacOS then
		    if OSVersion >= kOSVersionSnowLeopard then
		      declare sub setValue lib "AppKit" selector "enableSuddenTermination" ( ref as Ptr )
		      setValue( NSProcessRef )
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function operatingSystemVersionString() As string
		  #if TargetMacOS then
		    if OSVersion >= 1020 then
		      declare function getValue lib "AppKit" selector "operatingSystemVersionString" ( ref as Ptr ) as CFStringRef
		      return getValue( NSProcessRef )
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function OSVersion() As integer
		  Dim rvalue as integer
		  call System.Gestalt( "sysv", rvalue )
		  
		  Return cdbl( hex( rvalue ) )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function processInfo() As NSProcessInfo
		  #if TargetMacOS then
		    declare function NSClassFromString lib "AppKit" (aClassName as CFStringRef) as Ptr
		    declare function getProcess lib "AppKit" selector "processInfo" ( classRef as Ptr ) as Ptr
		    
		    return new NSProcessInfo( getProcess( NSClassFromString( kClassName ) ) )
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function processName() As string
		  #if TargetMacOS then
		    declare function getValue lib "AppKit" selector "processName" ( ref as Ptr ) as CFStringRef
		    return getValue( NSProcessRef )
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function processorCount() As Integer
		  #if TargetMacOS then
		    if OSVersion >= 1050 then // Leopard
		      declare function getValue lib "AppKit" selector "processorCount" ( ref as Ptr ) as integer
		      return getValue( NSProcessRef )
		    end if
		  #endif
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		NSProcessRef As Ptr
	#tag EndProperty


	#tag Constant, Name = kClassName, Type = String, Dynamic = False, Default = \"NSProcessInfo", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOSVersionLion, Type = Double, Dynamic = False, Default = \"1070", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOSVersionMavericks, Type = Double, Dynamic = False, Default = \"1090", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOSVersionMountainLion, Type = Double, Dynamic = False, Default = \"1080", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOSVersionSnowLeopard, Type = Double, Dynamic = False, Default = \"1060", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSActivityBackground, Type = Double, Dynamic = False, Default = \"&h000000FF", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSActivitySuddenTerminationDisabled, Type = Double, Dynamic = False, Default = \"&h4000", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSActivityUserInitiated, Type = Double, Dynamic = False, Default = \"&h00FFFFFF", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSActivityUserInitiatedAllowingIdleSystemSleep, Type = Double, Dynamic = False, Default = \"&h00EFFFFF", Scope = Public
	#tag EndConstant


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
