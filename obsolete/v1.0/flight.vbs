'This is Planespotter's Friend, a VBScript tool to turn FlightRadar24 data into CSV spreadsheets.
'The source code for the main file (flight.vbs) is below.
'Thanks!
'POLARIS183.
dim FlightID
MsgBox "Welcome to Planespotter's Friend. Please do not attempt to type anything on your computer until the program is finished, unless you are prompted, because it may disrupt the program. The program will start in three seconds. Thank you."
set wshshell = wscript.CreateObject("wScript.Shell")
WScript.Sleep 3000
FlightID=InputBox("Enter your FlightRadar ID", vbQuestion, "Flight ID")
MsgBox("You entered " & FlightID)
WScript.Sleep 2000
WshShell.Run "chrome.exe"
WScript.Sleep 2000
WshShell.SendKeys "^t"
WshShell.SendKeys ("https://api.flightradar24.com/common/v1/flight-playback.json?flightId=" & FlightID)
WScript.Sleep 500
WshShell.SendKeys "{ENTER}"
WScript.Sleep 2000
result = MsgBox ("Would you like to save this data as a CSV?", vbYesNo + vbQuestion, "PLANESPOTTER'S FRIEND")
Select Case result
Case vbYes
    WshShell.SendKeys "^t"
    WshShell.SendKeys ("https://json-csv.com/?u=" & "https://api.flightradar24.com/common/v1/flight-playback.json?flightId=" & FlightID)
    WScript.Sleep 3000
    WshShell.SendKeys "{ENTER}"
    WScript.Sleep 3000
    MsgBox "The data from FlightRadar24 ID " & FlightID & " has now been converted into an CSV file. If it hasn't, save the file as a JSON, or try again later. Thank you for using this tool. The program has ended."
Case vbNo
    WshShell.SendKeys "^s"
    WScript.Sleep 1500
    WshShell.SendKeys (FlightID & ".json")
    WScript.Sleep 4500
    MsgBox "The data from FlightRadar24 ID " & FlightID & " has now been converted into a JSON file. Please choose where you'd like to store the file, and press enter. Thank you for using this tool. The program has ended."
End select
