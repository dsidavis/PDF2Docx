on run theDelay

-- tell application "PDFpenPro"
--    ocr theFile
--    delay 1
-- end tell

  set waitForHowLong to 25
  if (count of theDelay) > 0 then
     set waitForHowLong to theDelay
  end if

tell application "System Events"
    tell process "PDFpenPro"
        set frontmost to true
        click menu item "Export…" of menu "File" of menu bar 1
	delay 1
	keystroke return
	delay waitForHowLong
	keystroke return
	delay 2
    end tell
--    tell process "PDFpenPro"
--	click button "Export"
--	-- (first button where its accessibility description = "Export")
--    end tell
end tell

end run
