@echo off
rem Lista de pacientes con disartria y sin disartria
set disartria= F01 F03 F04 M01 M02 M03 M04 M05
set no_disartria=FC01 FC02 FC03 MC01 MC02 MC03 MC04

rem Bucle para todas las combinaciones de disartria y no disartria
for %%X in (%disartria%) do (
    for %%Y in (%no_disartria%) do (
        echo Ejecutando HResults para %%X con %%Y

			HResults -p -I "C:\Users\root\Desktop\htk-3.2.1\test_%%X_%%Y.mlf" "C:\Users\root\Desktop\htk-3.2.1\clases2.list" "C:\Users\root\Desktop\htk-3.2.1\recout_%%X_%%Y_TEST_corrected.mlf"
   

	)
)

echo Script terminado.
pause
