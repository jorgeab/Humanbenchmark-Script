; Author		: Jorge AB
; Website to test it: https://www.humanbenchmark.com/tests/reactiontime

;Get the pos X, Y and the color to search.
$color = InputBox("Color picker", "Write the color in Hexadecimal:", "0x4BDB6A")
$posX = InputBox("PosX - search color", "Coord X:", "560")
$posY = InputBox("PosY - search color", "Coord Y:", "180")

;Get the pos X and Y where we are going to click if the color is found.
$clickPosX = InputBox("PosX - Click", "Coord X:", "560")
$clickPosY = InputBox("PosY - Click", "Coord Y:", "180")

HotKeySet("^q", "_Exit") ;CTRL + q to exit

While True
   $coord = PixelSearch( 0, 0, $posX, $posY, $color )
   If Not @error Then
	  sleep(60)
	  MouseClick("primary", $clickPosX, $clickPosY, 1, 1)
	  sleep(10)
	  MouseClick("primary", $clickPosX, $clickPosY, 1, 1)
	EndIf
 WEnd

Func _Exit()
   Exit 0
EndFunc
