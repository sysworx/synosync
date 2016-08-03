#tag Window
Begin Window frm_main
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   281
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   629922469
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "synoSync"
   Visible         =   True
   Width           =   501
   Begin HTMLViewer htmView
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   481
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Renderer        =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   261
      Visible         =   False
      Width           =   20
   End
   Begin TextArea ta_debug
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   21
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   False
      Styled          =   True
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   259
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   False
      Width           =   21
   End
   Begin TabPanel Tab
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   253
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Home\rOptions"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   8
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   461
      Begin Label lbl_url
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   2
         Text            =   "#address"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   154
      End
      Begin TextField txt_url
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   191
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   51
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   132
      End
      Begin PushButton btn_save
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "#save"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   211
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   232
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label lbl_port
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   335
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   2
         Text            =   "Port:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   30
      End
      Begin TextField txt_port
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   370
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   51
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   91
      End
      Begin PushButton btn_upload
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "#decyrpt"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   229
         Underline       =   False
         Visible         =   True
         Width           =   139
      End
      Begin PushButton btn_sendToDS
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "#send"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   355
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   229
         Underline       =   False
         Visible         =   True
         Width           =   106
      End
      Begin TextField txt_user
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   191
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   84
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   270
      End
      Begin TextField txt_pw
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   191
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   True
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   118
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   270
      End
      Begin Label lbl_username
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   2
         Text            =   "#user:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   85
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   139
      End
      Begin Label lbl_passwort
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   2
         Text            =   "#pw"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   119
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   139
      End
      Begin Listbox lb_links
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   1
         ColumnsResizable=   False
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   False
         HeadingIndex    =   -1
         Height          =   173
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "Tab"
         InitialValue    =   ""
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   1
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   47
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   421
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin ProgressWheel pw
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   16
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Left            =   335
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   232
         Visible         =   False
         Width           =   16
      End
      Begin CheckBox cb_update
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#updates"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   9
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   184
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   421
      End
      Begin CheckBox cb_pw
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#password"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   184
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   229
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   101
      End
      Begin CheckBox cb_cnl
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#cnl"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   10
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   200
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   421
      End
      Begin PushButton btn_debug
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Debug-Log"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   377
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   232
         Underline       =   False
         Visible         =   True
         Width           =   91
      End
      Begin Label lbl_download_folder
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   2
         Text            =   "#download_folder"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   152
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   139
      End
      Begin TextField txt_downFolder
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   191
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   151
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   232
      End
      Begin CheckBox cb_downFolder
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Tab"
         Italic          =   False
         Left            =   435
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   14
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   152
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  //beendet die APP nach dem schliessen der frm_main
		  quit
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  // Sprache
		  frm_main.btn_sendToDS.Caption = synoSync.lng_btn_sendToDS
		  frm_main.btn_upload.Caption = synoSync.lng_btn_upload
		  frm_main.btn_save.Caption = synoSync.lng_btn_save
		  frm_main.cb_cnl.Caption = synoSync.lng_cb_cnl
		  frm_main.cb_pw.Caption = synoSync.lng_cb_pw
		  frm_main.lbl_url.Text = synoSync.lng_lbl_url
		  frm_main.lbl_username.text = synoSync.lng_lbl_username
		  frm_main.lbl_passwort.Text = synoSync.lng_lbl_passwort
		  frm_main.cb_update.Caption = synoSync.lng_cb_update
		  frm_main.lbl_download_folder.text = synoSync.lng_lbl_folder
		  
		  
		  // Form zentrieren
		  me.Left = (Screen(0).AvailableWidth-me.Width)/2
		  me.Top = (Screen(0).AvailableHeight-me.Height)/2
		  
		  // Header für Listbox 
		  lb_links.HasHeading=True
		  lb_links.heading(0)="Links"
		  
		  btn_sendToDS.Enabled = false
		  
		  // FensterPosition speichern
		  #if TargetCocoa then
		    Declare function setFrameAutosaveName lib "cocoa" selector _
		    "setFrameAutosaveName:" ( NSWindowHandle as integer, AutosaveName as _
		    CFStringRef ) as boolean
		    call setFrameAutosaveName( me.Handle, App.ExecutableFile.Name)
		  #endif
		  
		  // APP NAP
		  Dim tpi as NSProcessInfo = NSProcessInfo.processInfo
		  token = tpi.beginActivityWithOptions( NSProcessInfo.NSActivityUserInitiated, "Allowing my app to process in the background!" )
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h21
		Private mProgressValue As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected token As NSProcessInfoToken
	#tag EndProperty


#tag EndWindowCode

#tag Events btn_save
	#tag Event
		Sub Action()
		  //Config speichern
		  Config.set("url", txt_url.text)
		  Config.set("port", txt_port.text)
		  Config.set("username", txt_user.text)
		  Config.cryptSet("password", txt_pw.text)
		  
		  If cb_update.Value then
		    Config.set("chkupdate", "true")
		  Else
		    Config.set("chkupdate", "false")
		  End If
		  
		  if cb_cnl.Value then
		    Config.set("cnl", "true")
		    MsgBox (synoSync.lng_synoSyncRestart)
		  else
		    MsgBox (synoSync.lng_synoSyncRestart)
		    Config.set("cnl", "false")
		  end if
		  
		  
		  if txt_downFolder.text > "" and cb_downFolder.State = CheckBox.CheckedStates.Checked then
		    Config.set("destination", "true")
		    Config.set("downloadfolder", txt_downFolder.text)
		    cb_downFolder.State = CheckBox.CheckedStates.Checked
		  Else
		    Config.set("destination", "false")
		    Config.set("downloadfolder", "none")
		    cb_downFolder.State = CheckBox.CheckedStates.Unchecked
		    txt_downFolder.text = ""
		    txt_downFolder.Enabled = false
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_upload
	#tag Event
		Sub Action()
		  // Listbox löschen und Passwort resetten
		  lb_links.DeleteAllRows
		  frm_pwentry.pw_archive = ""
		  
		  config.addlog("Open DLC Dialog", "OK")
		  
		  // Deklarationen
		  Dim H As New HTTPSocket
		  Dim f As  New FolderItem
		  Dim t As TextInputStream
		  Dim d As New Dictionary
		  Dim result As String 
		  Dim sucessItem As JSONItem
		  Dim links As New JSONItem
		  
		  // File Type festlegen
		  Dim dlcType As New FileType
		  dlcType.Name = "DLC-Container"
		  dlcType.MacType = "DLC"
		  dlcType.Extensions = "dlc"
		  
		  //öffnen Dialog zeigen
		  f = GetOpenFolderItem( dlcType )
		  
		  // Datei öffnen und an dcrypt.it senden
		  If f <> Nil Then
		    
		    t = TextInputStream.Open(f)
		    
		    d.Value("content") = t.ReadAll
		    
		    H.SetFormData(d)
		    
		    result = H.Post("http://dcrypt.it/decrypt/paste",0)
		    result = DefineEncoding(result, Encodings.UTF8)
		    
		    try
		      links = new JSONitem(result)
		      config.addlog("DLC decrypted (dcrypt.it): " + links.ToString,"OK")
		    catch err
		      config.addlog("DLC could not be decrypted (dcrypt.it)" , "NOK")
		      return
		    end try
		    
		    try
		      sucessItem  = links.Value("success")
		    catch err
		      config.addlog("DLC could not be decrypted (dcrypt.it)" , "NOK")
		      return
		    end try
		    
		    Dim linksArray As JSONItem = sucessItem.Value("links")
		    
		    Dim u As Integer = linksArray.Count-1
		    For i As Integer = 0 To u
		      lb_links.AddRow(linksArray.Value(i) + "")
		      lb_links.RowPicture(i) = add
		    Next
		    
		    //Senden Button aktivieren
		    btn_sendToDS.Enabled = True
		    
		  Else
		    //User Cancelled
		  End If
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_sendToDS
	#tag Event
		Sub Action()
		  // Link zur DS erstellen
		  Dim DSUrlLogin As String = "http://" + txt_url.Text + ":" + txt_port.text + "/webapi/auth.cgi?api=SYNO.API.Auth&version=2&method=login&account=" + EncodeURLComponent(txt_user.text) + "&passwd=" + EncodeURLComponent(txt_pw.text) + "&session=DownloadStation&format=sid"
		  
		  // Prüfen ob Links vorhanden sind
		  if lb_links.ListCount < 1 then
		    msgbox synoSync.lng_noLinks
		  else
		    
		    if cb_pw.Value then
		      frm_pwentry.ShowModal
		      
		      if frm_pwentry.pw_archive = "" then
		        msgbox (synoSync.lng_noPW)
		        return
		      end if
		      
		    end if
		    
		    // SID bei der DS abholen
		    btn_sendToDS.Enabled = false
		    pw.Visible = true
		    
		    Dim http As New HTTPSocket
		    http.Yield = true
		    Dim result As String = http.get(DSUrlLogin,15)
		    result = DefineEncoding(result, Encodings.UTF8)
		    Dim jResult As New JSONItem(result)
		    http.Close
		    
		    Dim v As Variant
		    v = jResult.Lookup("success", "not found")
		    
		    If v = "not found" Then
		      
		      //  TimeOut ausgelaufen
		      config.addlog("DS could not be reached, timeout expired", "NOK")
		      MsgBox (synoSync.lng_noResponse)
		      btn_sendToDS.Enabled = true
		      pw.Visible = false
		      
		    Else
		      
		      If v = False Then
		        
		        // Login-Fehler
		        Config.addlog("Login failed!", "NOK")
		        MsgBox (synoSync.lng_wrongLogin)
		        btn_sendToDS.Enabled = true
		        pw.Visible = false
		        
		      End If
		      
		      If v = True Then
		        // Login OK, SID abholen
		        Config.addlog("Login successful", "OK")
		        btn_sendToDS.Enabled = false
		        pw.Visible = true
		        
		        Dim DataItem As JSONItem = jResult.Value("data")
		        Dim SiD As String = DataItem.Value("sid")
		        
		        Dim i as integer 
		        Dim Links as String
		        
		        // Zusammenbauen des Links zum Adden in die DS
		        for i = 0 to lb_links.listcount -1
		          
		          Links = Links + lb_links.Cell(i,0) + ","
		          
		        next
		        
		        // Komma am Ende abschneiden
		        Dim char_count as integer = Len(links)
		        Links = Left(Links, char_count - 1)
		        
		        // ADD Url für WebAPI bauen
		        Dim DSUrlAdd as String = "http://" + txt_url.Text + ":" + txt_port.text + "/webapi/DownloadStation/task.cgi?api=SYNO.DownloadStation.Task&version=1&method=create&uri=" + Links + "&_sid=" + SiD
		        
		        // Passwort Check und URL anpassen
		        if cb_pw.State = CheckBox.CheckedStates.Checked then
		          DSUrlAdd = DSUrlAdd + "&unzip_password=" + EncodeURLComponent(frm_pwentry.pw_archive)
		        end if
		        
		        // Destination Download-Folder check und URL anpassung
		        if cb_downFolder.State = CheckBox.CheckedStates.Checked then
		          DSUrlAdd = DSUrlAdd + "&destination=" + EncodeURLComponent(txt_downFolder.text)
		        end if
		        
		        // Links zur DS adden
		        Dim addlink As new HTTPSocket
		        addlink.Yield = True
		        Dim addresult As String = addlink.get(DSUrlAdd,120)
		        addresult = DefineEncoding(addresult, Encodings.UTF8)
		        addlink.Close
		        
		        Dim jaddResult as new JSONItem(addresult)
		        //Dim av as String = jaddResult.Value("success")
		        
		        Dim av as String = jResult.Lookup("success", "not found")
		        
		        
		        If av = "not found" Then
		          
		          //  TimeOut ausgelaufen
		          config.addlog("DS could not be reached, timeout expired", "NOK")
		          MsgBox (synoSync.lng_noResponse)
		          btn_sendToDS.Enabled = true
		          pw.Visible = false
		          
		        Else
		          
		          // Notifikation
		          if av = "true" then
		            
		            Config.addlog("Download added: " + DSUrlAdd, "OK")
		            notification(lb_links.listcount.ToText + synoSync.lng_notify_message_ok, synoSync.lng_notify_title_ok)
		            
		          else
		            
		            // API ErrorCode abholen
		            dim root as new JSONItem(addresult)
		            dim errorItem as JSONItem = root.Value("error")
		            //dim succ as variant = root.Value("success")
		            dim code as string = errorItem.Value("code")
		            
		            Config.addlog("Download not added: " + DSUrlAdd, "WebAPI Error: " + code)
		            
		            notification(synoSync.lng_notify_message_nok, synoSync.lng_notify_title_ok)
		            
		          end if
		        end if
		        
		        //Abschlussarbeiten
		        pw.Visible = false
		        btn_sendToDS.Enabled = False
		        lb_links.DeleteAllRows
		        
		      End If
		      
		    End If
		    
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lb_links
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  If obj.FolderItemAvailable Then
		    // Listbox löschen
		    lb_links.DeleteAllRows
		    if right(obj.FolderItem.name, 4) = ".dlc" then
		      
		      System.DebugLog (obj.FolderItem.Name)
		      System.DebugLog (obj.FolderItem.NativePath)
		      
		      Dim f As  New FolderItem
		      Dim H As New HTTPSocket
		      Dim t As TextInputStream
		      Dim d As New Dictionary
		      Dim sucessItem As JSONItem
		      Dim result As String 
		      Dim links As New JSONItem
		      
		      f = obj.FolderItem
		      
		      t = TextInputStream.Open(f)
		      
		      d.Value("content") = t.ReadAll
		      
		      H.SetFormData(d)
		      
		      result = H.Post("http://dcrypt.it/decrypt/paste",0)
		      result = DefineEncoding(result, Encodings.UTF8)
		      h.Close
		      
		      try 
		        links = new JSONitem(result)
		        config.addlog("[Drag&Drop] DLC entschlüsselt (dcrypt.it): " + links.ToString,"OK")
		      catch err
		        config.addlog("[Drag&Drop] DLC wurde nicht entschlüsselt (dcrypt.it)" , "NOK")
		        MsgBox ("Dies ist kein gültiger DLC Container, oder der Container ist defekt.")
		        return
		      end try
		      
		      System.DebugLog(links.ToString)
		      
		      try 
		        sucessItem  = links.Value("success")
		      catch err 
		        config.addlog("[Drag&Drop] DLC wurde nicht entschlüsselt (dcrypt.it), DLC defekt?", "NOK")
		        MsgBox ("Dieser DLC-Container scheint defekt zu sein!")
		        return
		      end try
		      
		      Dim linksArray As JSONItem = sucessItem.Value("links")
		      Dim u As Integer = linksArray.Count-1
		      
		      For i As Integer = 0 To u
		        lb_links.AddRow(linksArray.Value(i) + "")
		        lb_links.RowPicture(i) = add
		      Next
		    else
		      config.addlog("[Drag&Drop] DLC wurde nicht entschlüsselt (dcrypt.it), DLC defekt?" , "NOK")
		      MsgBox ("Dies ist kein gültiger DLC Container!")
		    end if
		  End If
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  // File Type festlegen
		  Dim dlcType As New FileType
		  dlcType.Name = "DLC-Container"
		  dlcType.MacType = "DLC"
		  dlcType.Extensions = "dlc"
		  
		  me.AcceptFileDrop(dlcType)
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  If Me.RowFromXY(x, y) >= 0 Then
		    base.Append(New MenuItem(synoSync.lng_listbox_contex_remove))
		    
		  End If
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Select Case hitItem.Text
		  Case synoSync.lng_listbox_contex_remove
		    If Me.ListIndex >= 0 Then
		      
		      for i as integer = 0 to me.listcount-1
		        me.selected(i) = me.RowTag(i)
		      next
		      
		      while me.SelCount > 0
		        me.RemoveRow(me.ListIndex)
		      wend
		      
		    End If
		  End Select
		End Function
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  
		  for i as integer = 0 to me.listcount-1
		    me.RowTag(i) = me.selected(i)
		  next
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btn_debug
	#tag Event
		Sub Action()
		  frm_log.show
		  frm_log.ta_log.text = frm_main.ta_debug.text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cb_downFolder
	#tag Event
		Sub Action()
		  If cb_downFolder.Value then
		    txt_downFolder.Enabled = true
		  Else
		    txt_downFolder.Enabled = false
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
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
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
