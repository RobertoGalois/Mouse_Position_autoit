; Declarer ses variables convenablement
AutoItSetOption("MustDeclareVars", 1)
; Activation du mode evenementiel
Opt("GUIOnEventMode", 1)

; Constantes des GUI
#include <GUIConstantsEx.au3>

; Creation de la fenetre principale
Dim $FenetrePrincipale = GUICreate("XY", 200, 200, 300, 200)
; Fermer le programme en cas de fermeture d'une fenetre.
GUISetOnEvent($GUI_EVENT_CLOSE, "EndProg")

; Creation des elements de la fenetre principale
Dim $texteX = GUICtrlCreateLabel("X:", 70, 70)
Dim $valueX = GUICtrlCreateLabel(MouseGetPos(0), 90, 70)
Dim $texteY = GUICtrlCreateLabel("Y:", 70, 100)
Dim $valueY = GUICtrlCreateLabel(MouseGetPos(1), 90, 100)

; Si la souris bouge, actualiser les valeurs de la fenetre
GUISetOnEvent($GUI_EVENT_MOUSEMOVE, "ActuInfos")

; Affichage de la fenetre principale
GUISetState(@SW_SHOW, $FenetrePrincipale)

; boucle infinie d'affichage du programme
while 1
; Economie du CPU
Sleep(5000)

WEnd



; Definition des fonctions event

Func EndProg()
	Exit
EndFunc

Func ActuInfos()
	GUICtrlSetData($valueX, MouseGetPos(0))
	GUICtrlSetData($valueY, MouseGetPos(1))
EndFunc
