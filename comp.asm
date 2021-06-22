
	LIST      p=16F84            ; Définition de processeur
	#include <p16F84.inc>        ; Définitions de variables

	__CONFIG   _CP_ON & _WDT_OFF & _PWRTE_ON & _HS_OSC


org 0x0005


#define led_egalite portb,0
#define led_AA_sup_BB portb,1
#define led_AA_inf_BB portb,2


;;;;;; Declaration des variables
cblock 0x0c
AA :1 ; AA VARAIBLE D'ADRESSE 0X0C de taille 1 octet de 8bits
BB :1 ; BB variable d'adresse 0x0D de taille 1 octet de 8bits
endc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;config
BSF status, rp0 ; bank1
bcf trisb,0 ; sortie
bcf trisb,1 ; sortie
bcf trisb,2 ; sortie

;initialisation
BCF status,rp0 ; bank0
bcf portb,0
bcf portb,1
bcf portb,2

;traitement
Movlw D'3' ; w=5
Movwf AA ; AA=w=5
Movlw D'5' ;w=5
Movwf BB ; BB=w=5
clrw ; w=0

compare 
movf BB,w  ; w=BB
subwf AA,w ; w=AA-w

BTFSc status,z
goto egalite ;F (z=1)
BTFSS STATUS,C ;V (z=0)
goto AA_inf_BB  ;F (c=0)
goto AA_sup_BB  ;V (c=1)

egalite
BSF led_egalite
goto compare

AA_sup_BB
BSF led_AA_sup_BB
goto compare

AA_inf_BB
BSF led_AA_inf_BB
goto compare

END
