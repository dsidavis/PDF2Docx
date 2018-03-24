tell application "System Events"
    tell process "PDFpenPro"
        set frontmost to true
        click menu item "Export…" of menu "File" of menu bar 1
	delay 1
	keystroke return
	delay 12
	keystroke return	
    end tell
--    tell process "PDFpenPro"
--	click button "Export"
--	-- (first button where its accessibility description = "Export")
--    end tell
end tell
