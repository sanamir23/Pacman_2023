INCLUDE Irvine32.inc
includelib Winmm.lib

PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD

.data

sound1 db ".\bg_sound.wav", 0

setUp1 db "########################################################################################################################" 
       db "####################          #                                 ##                                 #####################"
       db "####################       .  #   . . .                         ##               .  .  .  .  .  .  #####################"       
       db "####################       .  #  .     .                        ##                              .  #####################"         
       db "####################       .  #  .  #  . ###################    ##    #############    #######  .  #####################"           
       db "####################       .  #  .  #  . ##                     ##    ##          #    ##       .  #####################"          
       db "####################       .  #  .  #  . ##                     ##    ##          #    ##       .  #####################"           
       db "####################       .  #  .  #  . ##                     ##    ##          #    ##       .  #####################"           
       db "####################    ## .  #  .  #  . ##                     ##    ##    #     #    ##       .  #####################"          
       db "####################    ## .  #  .  #  . ##                     ##    ##    #     #    ##       .  #####################"            
       db "####################    ## .  #  .  #  . ###################    ##    ##    #     #    #######  .  #####################"           
       db "####################    ## .  #  .  #  . . . . . . . . .   #    ##    ##    #     #    ##       .  #####################"           
       db "####################    ## .  #  .  #                  .   #    ##    ##    #     #    ##       .  #####################"         
       db "####################    ## .  #  .  #################  .   #    ##    ##    #     #    ##       .  #####################"          
       db "####################    ## . . . .  #                  .   #    ##    ##    #     #    ##       .  #####################"           
       db "####################    ##          #                  .   #    ##    ##    #     #    ##       .  #####################"          
       db "####################    #############    #########     .   #    ##    ##    #     #######  .  .    #####################"         
       db "####################                #    ##   .  .  .  .   #    ##    ##    #     #    ## .  ##    #####################"        
       db "####################                #    ## .  #############    ##    ##    #     #       .  ##    #####################"          
       db "####################                #    ## .  ##               ##    ##    #     #       .  ##    #####################"           
       db "####################                #    ## .  ##               ##    ##    #     #       .  ##    #####################"           
       db "####################    #############    ## .  ###################    ##    #     ####### .        #####################"          
       db "####################                #    ## .                         ##    #     #    ## .        #####################"          
       db "####################                #    ##                           ##    #     #    ## .        #####################"           
       db "###############################     #    ###############################    #          ## .        #####################"        
       db "####################                #                                       #          ## .        #####################"          
       db "####################                #                                       #          ##          #####################"          
       db "########################################################################################################################", 0
                                                                                                                                                                             
setUp2 db "########################################################################################################################"  
       db "###################            ###        ####      ####       ##################  .            ########################"  
       db "###################  .  .  .   ###        ####      ####       ### .               .   ###      ########################"   
       db "################### .          ###        ####      ####       ### .               .   ###      ########################" 
       db "################### .  #######################      ####    ###### .   ##########  .   ###      ########################" 
       db "################### .  #######################      ####    ###### .   ##########  .   ###      ########################"  
       db "################### .  #######################      ####    ###### .   ##########  .   ###      ########################"  
       db "################### .                     ####              ###   .    ###         .       . .  ########################"    
       db "###################   . . .               ####              ###  .     ###         .         .  ########################"     
       db "###################        . ##########   ####              ###  .     ###         .   ###   .  ########################"   
       db "################### .        ##########   #####################  .     ###########     ###   .  ########################"  
       db "################### .  ###                                  ###  .     ###             ###   .  ########################" 
       db "################### .  ###                                  ###        ###             ###   .  ########################"   
       db "################### .  #################################    ##############     ###########   .  ########################"  
       db "################### .  #################################    ##############     ###########   .  ########################" 
       db "################### .                                       ###                              .  ########################"  
       db "################### .                                       ###                                 ########################"  
       db "###################       ########################## .      ###    ##########      ###########  ########################" 
       db "###################       ########################## .      ###    ###    ###      ####  #####  ########################"  
       db "###################       ###     ################## .      ###    ###    ###      ####  #####  ########################"  
       db "###################       ###          . . . . . . . .             ###    ###      ###    ####  ########################" 
       db "###################       ###         .                            ###    ###      ###    ####  ########################"  
       db "###################       ####    ### .   ####                     ###    ###      ####  #####  ########################" 
       db "###################               ### .   ####    ####################    ###      ###########  ########################"   
       db "###################       ####    ### .   ####        .  . . . . . .      ###      ##########   ########################"  
       db "###################       ###     ### .   ####                            ###      ###          ########################"  
       db "###################       ###     ###     ####    ###########################      ###          ########################"  
       db "########################################################################################################################", 0
                                                                                                 
                                                                                                      
setUp3 db "########################################################################################################################"                                                                                          
       db "#####################                  . . . . . . . . .                #####                   ########################"             
       db "#####################                                   .   #####       #####                   ########################"            
       db "####################################################### .   #####    ###################################################"                 
       db "####################################################### .   #####    ###################################################"          
       db "#####################                            . #### .   #####                              #########################"        
       db "#####################                     #####  . #### .   #####           . . . . . . .      #########################"           
       db "#####################                     #####    .  .     #####                        .     #########################"           
       db "#####################################     #######################      .  ####           .     #########################"
       db "#####################################     #######################      .  ####           .     #########################"
       db "#####################################     #####                        .  ####           .     #########################"
       db "#####################                     #####         . . . .        .  ####           .     #########################"
       db "#####################        ######       #####         .     #####    .  ####           .     #########################"
       db "#####################        ######      #############  .     #####       ####           .     #########################"
       db "#####################        ######      #############  .     #####       ####           .     #########################"
       db "#####################                    #############  .     #####       ####                 #########################"           
       db "#####################                    ####     ####  .     #####             #####       ############################"           
       db "#####################                    ####     ####  .     #####             #####       ############################"           
       db "#############################################     ####  .     #####             #####       ############################"           
       db "#############################################     ####  .     #####             #####       ############################"           
       db "#############################################     ####  .     #####        #############################################"           
       db "####################    . . . . .        ####     ####  .     #####        #############################################"
       db "####################   .                 ####     ####  .                  #############################################"           
       db "####################   .  ####                    ####  .    ############                      #########################"            
       db "####################   .  ####             . . .  ####  .    ############                      #########################"           
       db "####################   .  ####                  .  . . .     ############                      #########################"                            
       db "####################      ####               #####                          ############################################"     
       db "########################################################################################################################", 0                 
                                                                                                      

totalCols byte 120
totalRows byte 30

temp byte ?

xGatePos byte 80
yGatePos byte 24

xTeleportPos byte 30
yTeleportPos byte 2

gameTitle1 BYTE "########################################################################################################################", 0
gameTitle2 BYTE "##################.........#######..+#######+.......+#######..#########..#######..#######.+####.......##################", 0
gameTitle3 BYTE "##################...........####....+#####.........########....+###-....######....######....##.......##################", 0
gameTitle4 BYTE "##################...........+##......-###........+#########.............####+......#####.............##################", 0
gameTitle5 BYTE "##################...........##.........##.......#####+++++#.............###+........####.............##################", 0
gameTitle6 BYTE "##################..........+#...........#........-###.....#.............##...........+##.............##################", 0
gameTitle7 BYTE "##################.....-+###+.............#.........+#######.............#.............-#.............##################", 0
gameTitle8 BYTE "##################......+##+...............##.......########..........................................##################", 0
gameTitle9 BYTE "########################################################################################################################", 0


menuTitle1 BYTE "*            ##     ## ######## ##    ## ##     ##           *", 0
menuTitle2 BYTE "*            ###   ### ##       ###   ## ##     ##           *", 0
menuTitle3 BYTE "*            #### #### ##       ####  ## ##     ##           *", 0
menuTitle4 BYTE "*            ## ### ## ######   ## ## ## ##     ##           *", 0
menuTitle5 BYTE "*            ##     ## ##       ##  #### ##     ##           *", 0
menuTitle6 BYTE "*            ##     ## ##       ##   ### ##     ##           *", 0
menuTitle7 BYTE "*            ##     ## ######## ##    ##  #######            *", 0


infoTitle1 BYTE "##     ##  #######  ##      ##    ########  #######     ########  ##          ###    ##    ##  #######", 0 
infoTitle2 BYTE "##     ## ##     ## ##  ##  ##       ##    ##     ##    ##     ## ##         ## ##    ##  ##  ##     ##", 0
infoTitle3 BYTE "##     ## ##     ## ##  ##  ##       ##    ##     ##    ##     ## ##        ##   ##    ####         ##", 0 
infoTitle4 BYTE "######### ##     ## ##  ##  ##       ##    ##     ##    ########  ##       ##     ##    ##        ###", 0  
infoTitle5 BYTE "##     ## ##     ## ##  ##  ##       ##    ##     ##    ##        ##       #########    ##       ##", 0     
infoTitle6 BYTE "##     ## ##     ## ##  ##  ##       ##    ##     ##    ##        ##       ##     ##    ##", 0              
infoTitle7 BYTE "##     ##  #######   ###  ###        ##     #######     ##        ######## ##     ##    ##       ##", 0 

gameOver1 BYTE "####     ######      ###    ##     ## ########     #######  ##     ## ######## ########     ####", 0
gameOver2 BYTE "####    ##    ##    ## ##   ###   ### ##          ##     ## ##     ## ##       ##     ##    ####", 0
gameOver3 BYTE "####    ##         ##   ##  #### #### ##          ##     ## ##     ## ##       ##     ##    ####", 0
gameOver4 BYTE " ##     ##   #### ##     ## ## ### ## ######      ##     ## ##     ## ######   ########      ## ", 0 
gameOver5 BYTE "        ##    ##  ######### ##     ## ##          ##     ##  ##   ##  ##       ##   ##          ", 0
gameOver6 BYTE "####    ##    ##  ##     ## ##     ## ##          ##     ##   ## ##   ##       ##    ##     ####", 0
gameOver7 BYTE "####     ######   ##     ## ##     ## ########     #######     ###    ######## ##     ##    ####", 0

pause1 BYTE " ######      ###    ##     ## ########    ########     ###    ##     ##  ######  ######## ########", 0 
pause2 BYTE "##    ##    ## ##   ###   ### ##          ##     ##   ## ##   ##     ## ##    ## ##       ##     ##", 0
pause3 BYTE "##         ##   ##  #### #### ##          ##     ##  ##   ##  ##     ## ##       ##       ##     ##", 0
pause4 BYTE "##   #### ##     ## ## ### ## ######      ########  ##     ## ##     ##  ######  ######   ##     ##", 0 
pause5 BYTE "##    ##  ######### ##     ## ##          ##        ######### ##     ##       ## ##       ##     ##", 0 
pause6 BYTE "##    ##  ##     ## ##     ## ##          ##        ##     ## ##     ## ##    ## ##       ##     ##", 0 
pause7 BYTE " ######   ##     ## ##     ## ########    ##        ##     ##  #######   ######  ######## ########", 0

strPause BYTE "Press 'r' to resume game.",0ah, 0
ifPaused BYTE ?

endMessage BYTE "Press 'x' key to exit game.", 0ah, 0
                                                
info1 BYTE "## Press 'w' key to move up.", 0ah, 0
info2 BYTE "## Press 'd' key to move right.", 0ah, 0
info3 BYTE "## Press 's' key to move left.", 0ah, 0
info4 BYTE "## Press 'a' key to move down.", 0ah, 0                                             
info5 BYTE "## Press 'p' key to pause game.", 0ah, 0                                             
info6 BYTE "## Press 'b' key to return to menu.", 0ah, 0                                             

menuChoice BYTE ?
infoChoice BYTE ?
ifGameOver BYTE ?

option1 BYTE "###################### ARE YOU READY ? ########################",0ah, 0
option2 BYTE "## Press '1' for PAC-PLAYGROUND.",0ah, 0
option3 BYTE "## Press '2' for FRUIT FRENZY.",0ah, 0
option4 BYTE "## Press '3' for GHOST GOBBLE.",0ah, 0
option5 BYTE "## Press 'i' key to show instructions.",0ah, 0
option6 BYTE "## Press 'x' key to exit game.",0ah, 0

userName byte 255 dup(?) 
prompt byte "Enter player name: ", 0
strName byte "Player name: ", 0

strScore BYTE "Score: ",0
score BYTE 0

ifPlayerCollision byte 0
ifGhost1Collision byte 0
ifGhost2Collision byte 0
ifGhost3Collision byte 0

strLives BYTE "Lives: ", 0
lives BYTE 3
iflevel BYTE 0

xPos BYTE 55
yPos BYTE 20

chosenDirection BYTE ?

xGhost1Pos BYTE 25
yGhost1Pos BYTE 6

xGhost2Pos BYTE 35
yGhost2Pos BYTE 6

xGhost3Pos BYTE 70
yGhost3Pos BYTE 10

xFruitPos BYTE ?
yFruitPos BYTE ?

inputChar BYTE ?

.code
main PROC
    
    call MainScreen

    menuLoop:
    call MenuScreen

    cmp menuChoice, "1" 
    je startGame

    cmp menuChoice, "2"
    je startGame

    cmp menuChoice, "3"
    je startGame

    cmp menuChoice, "i" ;go to instructions screen
    je infoLoop

    cmp menuChoice, "x"
    je exitGame

    jmp menuLoop

    infoLoop:
    call InfoScreen

    cmp infoChoice, "b" ;go back to menu screen
    je menuLoop

    cmp infoChoice, "x"
    je exitGame
    jmp infoLoop

    gameOverLoop:
    call gameEndScreen

    cmp ifGameOver, "x"
    je exitGame
    jmp gameOverLoop

    gamePause:
    call PauseScreen

    cmp ifPaused, "r" ;resume game
    je resumeGame
    jmp gamePause

    resumeGame:
    jmp startGame

    startGame:
    call DrawMaze ;levels decided in DrawMaze function according to menuChoice
    call DrawPlayer

    cmp ifLevel, 2 ;introdution of fruits
    je showFruits
    jmp gameLoop

    showFruits:
    call CreateRandomFruit
    call DrawFruit

    gameLoop:
        INVOKE PlaySound, OFFSET sound1, NULL,11h ;music for game
        call CollectPoints 
        call DecrementLives1
        call DetectFruitCollision

        cmp Lives, 0 ;displays gameOver screen as soon as lives become 0
        je gameOverLoop

        ; draw lives:
        mov dl,1
        mov dh,29
        call Gotoxy
        mov edx,OFFSET strLives
        call WriteString
        mov al,lives
        call WriteInt

        ; draw score:
        mov edx,0
        mov dl,110
        mov dh,29
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov al,score
        call WriteInt

        call DetectGhost1Collision
        call DrawGhost1
        call MoveGhost1
        
       cmp ifLevel, 3
        jne moveOn

        ;addition of 2 ghosts when level is 3
        call DrawGate
        call DrawOtherGate
        call DetectGate
        call DetectOtherGate

        call DetectGhost2Collision
        call DrawGhost2
        call MoveGhost2

        call DetectGhost3Collision
        call DrawGhost3
        call MoveGhost3

        moveOn:
        ; get user key input:
        call Readkey
        mov inputChar,al
        mov eax, 10
        call delay

        ; exit game if user types 'x'
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar, "p"
        je gamePause

jmp gameLoop
   
        moveUp:
        dec ypos
        call DetectPlayerCollision
        inc ypos
        cmp ifPlayerCollision, 1
        je counterUp
        call UpdatePlayer
        dec yPos
        call DrawPlayer
        counterUp:
        jmp gameLoop

        moveDown:
        inc yPos
        call DetectPlayerCollision
        dec yPos
        cmp ifPlayerCollision, 1
        je counterDown
        call UpdatePlayer
        inc yPos
        call DrawPlayer
        counterDown:
        jmp gameLoop

        moveLeft:
        dec xPos
        call DetectPlayerCollision
        inc xPos
        cmp ifPlayerCollision, 1
        je counterLeft
        call UpdatePlayer
        dec xPos
        call DrawPlayer
        counterLeft:
        jmp gameLoop

        moveRight:
        inc xPos
        call DetectPlayerCollision
        dec xPos
        cmp ifPlayerCollision, 1
        je counterRight
        call UpdatePlayer
        inc xPos
        call DrawPlayer
        counterRight:
        jmp gameLoop

    jmp gameLoop

    exitGame:
    exit
main ENDP

;pause screen displayed
PauseScreen PROC
    call clrscr

    mov eax, LightCyan
    call setTextColor

    mov dh, 9
    mov dl, 10
    call Gotoxy
    mov edx, offset pause1
    call WriteString
    
    mov dh, 10
    mov dl, 10
    call Gotoxy
    mov edx, offset pause2
    call WriteString

    mov dh, 11
    mov dl, 10
    call Gotoxy
    mov edx, offset pause3
    call WriteString

    mov dh, 12
    mov dl, 10
    call Gotoxy
    mov edx, offset pause4
    call WriteString

    mov dh, 13
    mov dl, 10
    call Gotoxy
    mov edx, offset pause5
    call WriteString

    mov dh, 14
    mov dl, 10
    call Gotoxy
    mov edx, offset pause6
    call WriteString

    mov dh, 15
    mov dl, 10
    call Gotoxy
    mov edx, offset pause7
    call WriteString

    mov eax, lightmagenta
    call settextcolor

    mov dh, 28
    mov dl, 45
    call gotoxy
    mov edx, offset strPause ;option to press 'r' to resume game
    call writeString

    call readChar
    mov ifPaused, al

    call clrscr
    ret
PauseScreen ENDP

;main screen displayed
MainScreen PROC
    mov eax,lightmagenta + (black * 16)
    call SetTextColor

    mov dl,0
    mov dh,0
    call Gotoxy
    mov edx, offset gameTitle1
    call WriteString

    mov dl,0
    mov dh,1
    call Gotoxy
    mov edx, offset gameTitle2
    call WriteString

    mov dl,0
    mov dh,2
    call Gotoxy
    mov edx, offset gameTitle3
    call WriteString

    mov dl,0
    mov dh,3
    call Gotoxy
    mov edx, offset gameTitle4
    call WriteString

    mov dl,0
    mov dh,4
    call Gotoxy
    mov edx, offset gameTitle5
    call WriteString

    mov dl,0
    mov dh,5
    call Gotoxy
    mov edx, offset gameTitle6
    call WriteString

    mov dl,0
    mov dh,6
    call Gotoxy
    mov edx, offset gameTitle7
    call WriteString

    mov dl,0
    mov dh,7
    call Gotoxy
    mov edx, offset gameTitle8
    call WriteString

    mov dl,0
    mov dh,8
    call Gotoxy
    mov edx, offset gameTitle9
    call WriteString

    mov dl,40
    mov dh,20
    call gotoxy
    mov edx, offset prompt
    call writestring ;enter ur name is displayed 
    
    mov eax, lightCyan
    call settextcolor
    mov dl,60
    mov dh,20
    call gotoxy
    lea edx,userName
    mov ecx,255
    call readstring ;reads name 

    call clrscr
    ret
MainScreen ENDP

;game over screen is displayed
GameEndScreen PROC
    call clrscr

    mov eax, red
    call settextcolor

    mov dh, 9
    mov dl, 11
    call Gotoxy
    mov edx, offset gameOver1
    call WriteString

    mov dh, 10
    mov dl, 11
    call Gotoxy
    mov edx, offset gameOver2
    call WriteString

    mov dh, 11
    mov dl, 11
    call Gotoxy
    mov edx, offset gameOver3
    call WriteString

    mov dh, 12
    mov dl, 11
    call Gotoxy
    mov edx, offset gameOver4
    call WriteString

    mov dh, 13
    mov dl, 11
    call Gotoxy
    mov edx, offset gameOver5
    call WriteString

    mov dh, 14
    mov dl, 11
    call gotoxy
    mov edx, offset gameOver6
    call WriteString

    mov dh, 15
    mov dl, 11
    call Gotoxy
    mov edx, offset gameOver7
    call WriteString

    mov eax, lightBlue
    call settextcolor

    mov dh, 17
    mov dl, 37
    call Gotoxy
    mov edx,OFFSET strScore ;score displayed
    call WriteString
    mov al,score
    call WriteInt

    mov dh, 17
    mov dl, 60
    call Gotoxy
    mov edx,OFFSET strName ;player name displayed
    call WriteString
    
    mov dh, 17
    mov dl, 73
    call Gotoxy
    mov edx,OFFSET userName
    call WriteString

    mov eax, red
    call settextcolor

    mov dh, 28
    mov dl, 45
    call Gotoxy
    mov edx, offset endMessage ;option to press 'x' to exit game
    call WriteString

    call ReadChar
    mov ifGameOver, al

    call clrscr
    ret
GameEndScreen ENDP

;instruction screen displayed
InfoScreen PROC
    mov eax, lightCyan
    call settextcolor

    mov dl, 8
    mov dh, 1
    call Gotoxy
    mov edx, offset infoTitle1
    call WriteString

    mov dl, 8
    mov dh, 2
    call Gotoxy
    mov edx, offset infoTitle2
    call WriteString

    mov dl, 8
    mov dh, 3
    call Gotoxy
    mov edx, offset infoTitle3
    call WriteString

    mov dl, 8
    mov dh, 4
    call Gotoxy
    mov edx, offset infoTitle4
    call WriteString

    mov dl, 8
    mov dh, 5
    call Gotoxy
    mov edx, offset infoTitle5
    call WriteString

    mov dl, 8
    mov dh, 6
    call Gotoxy
    mov edx, offset infoTitle6
    call WriteString

    mov dl, 8
    mov dh, 7
    call Gotoxy
    mov edx, offset infoTitle7
    call WriteString

    mov eax, lightBlue
    call settextcolor

    mov dl, 8
    mov dh, 11
    call Gotoxy
    mov edx, offset info1
    call WriteString

    mov dl, 8
    mov dh, 14
    call Gotoxy
    mov edx, offset info2
    call WriteString

    mov dl, 8
    mov dh, 17
    call Gotoxy
    mov edx, offset info3
    call WriteString

    mov dl, 8
    mov dh, 20
    call Gotoxy
    mov edx, offset info4
    call WriteString

    mov dl, 8
    mov dh, 23
    call Gotoxy
    mov edx, offset info5
    call WriteString

    mov dl, 8
    mov dh, 26
    call Gotoxy
    mov edx, offset info6
    call WriteString

    call readChar
    mov infoChoice, al

    call clrscr
    ret
InfoScreen ENDP

;menu screen displayed
MenuScreen PROC
    mov eax, lightCyan + (black * 16)
    call SetTextColor
        
    mov dl,27
    mov dh,2
    call Gotoxy
    mov edx, offset menuTitle1
    call WriteString

    mov dl,27
    mov dh,3
    call Gotoxy
    mov edx, offset menuTitle2
    call WriteString

    mov dl,27
    mov dh,4
    call Gotoxy
    mov edx, offset menuTitle2
    call WriteString

    mov dl,27
    mov dh,5
    call Gotoxy
    mov edx, offset menuTitle3
    call WriteString

    mov dl,27
    mov dh,6
    call Gotoxy
    mov edx, offset menuTitle4
    call WriteString

    mov dl,27
    mov dh,7
    call Gotoxy
    mov edx, offset menuTitle5
    call WriteString

    mov dl,27
    mov dh,8
    call Gotoxy
    mov edx, offset menuTitle6
    call WriteString

    mov dl,27
    mov dh,9
    call Gotoxy
    mov edx, offset menuTitle7
    call WriteString

    mov eax, lightMagenta
    call SetTextColor

    mov dl,27
    mov dh,12
    call Gotoxy
    mov edx, offset option1
    call WriteString

    mov eax, lightBlue
    call SetTextColor

    mov dl,40
    mov dh,16
    call Gotoxy
    mov edx, offset option2
    call WriteString

    mov dl,40
    mov dh,18
    call Gotoxy
    mov edx, offset option3
    call WriteString

    mov dl,40
    mov dh,20
    call Gotoxy
    mov edx, offset option4
    call WriteString

    mov dl,40
    mov dh,22
    call Gotoxy
    mov edx, offset option5
    call WriteString

    mov dl,40
    mov dh,24
    call Gotoxy
    mov edx, offset option6
    call WriteString

    call readChar
    mov menuChoice, al

    call clrscr
    ret
MenuScreen ENDP

DrawGhost1 PROC
    ; draw player at (xPos,yPos):
    mov eax,lightCyan ;(blue*16)
    call SetTextColor
    mov dl,xGhost1Pos
    mov dh,yGhost1Pos
    call Gotoxy
    mov al,"G"
    call WriteChar
    ret
DrawGhost1 ENDP

DrawGhost2 PROC
    ; draw player at (xPos,yPos):
    mov eax,lightCyan ;(blue*16)
    call SetTextColor
    mov dl,xGhost2Pos
    mov dh,yGhost2Pos
    call Gotoxy
    mov al,"G"
    call WriteChar
    ret
DrawGhost2 ENDP

DrawGhost3 PROC
    ; draw player at (xPos,yPos):
    mov eax,lightCyan ;(blue*16)
    call SetTextColor
    mov dl,xGhost3Pos
    mov dh,yGhost3Pos
    call Gotoxy
    mov al,"G"
    call WriteChar
    ret
DrawGhost3 ENDP

DrawMaze PROC
    cmp menuChoice, "1" ;draw setUp1 if level is 1
    je setMazeOne

    cmp menuChoice, "2" ;draw setUp2 if level is 2
    je setMazeTwo

    cmp menuChoice, "3" ;draw setUp3 if level is 3
    je setMazeThree

setMazeOne:
    mov ifLevel, 1
    mov eax,blue (black * 16)
    call SetTextColor
    mov dh, 0
    mov dl, 0
    call Gotoxy
    mov edx, OFFSET setUp1
    call WriteString
    jmp endDrawMaze

setMazeTwo:
    mov ifLevel, 2
    mov eax,magenta (black * 16)
    call SetTextColor
    mov dh, 0
    mov dl, 0
    call Gotoxy
    mov edx, OFFSET setUp2
    call WriteString
    jmp endDrawMaze

setMazeThree:
    mov ifLevel, 3
    mov eax,lightRed (black * 16)
    call SetTextColor
    mov dh, 0
    mov dl, 0
    call Gotoxy
    mov edx, OFFSET setUp3
    call WriteString
    jmp endDrawMaze

    endDrawMaze:
    ret
DrawMaze ENDP

DrawPlayer PROC
    ; draw player at (xPos,yPos):
    mov eax,lightCyan ;(blue*16)
    call SetTextColor
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al,"X"
    call WriteChar
    ret
DrawPlayer ENDP

UpdatePlayer PROC
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdatePlayer ENDP

UpdateGhost1 PROC
    mov dl,xGhost1Pos
    mov dh,yGhost1Pos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdateGhost1 ENDP

UpdateGhost2 PROC
    mov dl,xGhost2Pos
    mov dh,yGhost2Pos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdateGhost2 ENDP

UpdateGhost3 PROC
    mov dl,xGhost3Pos
    mov dh,yGhost3Pos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdateGhost3 ENDP

;generates random number from 1-4 to decide direction for ghost
GenerateRandom PROC
    mov eax, 4
    add eax,1
    call RandomRange
    mov chosenDirection, al
    ret
GenerateRandom ENDP

MoveGhost1 PROC
    cmp chosenDirection, 1 
    je left

    cmp chosenDirection, 2
    je right

    cmp chosenDirection, 3
    je up

    cmp chosenDirection, 4
    je down

    jne update

    up:
        dec yGhost1Pos
        call DetectGhost1Collision
        inc yGhost1Pos
        cmp ifGhost1Collision, 1
        je update
        call UpdateGhost1
        dec yGhost1Pos
        call DrawGhost1
        mov eax, 70
        call Delay
        ret

    down:
        inc yGhost1Pos
        call DetectGhost1Collision
        dec yGhost1Pos
        cmp ifGhost1Collision, 1
        je update
        call UpdateGhost1
        inc yGhost1Pos
        call DrawGhost1
        mov eax, 70
        call Delay
        ret

    left:
        dec xGhost1Pos
        call DetectGhost1Collision
        inc xGhost1Pos
        cmp ifGhost1Collision, 1
        je update
        call UpdateGhost1
        dec xGhost1Pos
        call DrawGhost1
        mov eax, 70
        call Delay
        ret

    right:
        inc xGhost1Pos
        call DetectGhost1Collision
        dec xGhost1Pos
        cmp ifGhost1Collision, 1
        je update
        call UpdateGhost1
        inc xGhost1Pos
        call drawGhost1
        mov eax, 70
        call Delay
        ret

    update:
        call GenerateRandom
    
    ret       
MoveGhost1 ENDP

MoveGhost2 PROC
    cmp chosenDirection, 1
    je left

    cmp chosenDirection, 2
    je right

    cmp chosenDirection, 3
    je up

    cmp chosenDirection, 4
    je down

    jne update

    up:
        dec yGhost2Pos
        call DetectGhost2Collision
        inc yGhost2Pos
        cmp ifGhost2Collision, 1
        je update
        call UpdateGhost2
        dec yGhost2Pos
        call drawGhost2
        mov eax, 40
        call Delay
        ret

    down:
        inc yGhost2Pos
        call DetectGhost2Collision
        dec yGhost2Pos
        cmp ifGhost2Collision, 1
        je update
        call UpdateGhost2
        inc yGhost2Pos
        call DrawGhost2
        mov eax, 40
        call Delay
        ret

    left:
        dec xGhost2Pos
        call DetectGhost2Collision
        inc xGhost2Pos
        cmp ifGhost2Collision, 1
        je update
        call UpdateGhost2
        dec xGhost2Pos
        call DrawGhost2
        mov eax, 40
        call Delay
        ret

    right:
        inc xGhost2Pos
        call DetectGhost2Collision
        dec xGhost2Pos
        cmp ifGhost2Collision, 1
        je update
        call UpdateGhost2
        inc xGhost2Pos
        call DrawGhost2
        mov eax, 40
        call Delay
        ret

    update:
        call GenerateRandom
    
    ret       
MoveGhost2 ENDP

MoveGhost3 PROC
    cmp chosenDirection, 1
    je left

    cmp chosenDirection, 2
    je right

    cmp chosenDirection, 3
    je up

    cmp chosenDirection, 4
    je down

    jne update

    up:
        dec yGhost3Pos
        call DetectGhost3Collision
        inc yGhost3Pos
        cmp ifGhost3Collision, 1
        je update
        call UpdateGhost3
        dec yGhost3Pos
        call drawGhost3
        mov eax, 70
        call Delay
        ret

    down:
        inc yGhost3Pos
        call DetectGhost3Collision
        dec yGhost3Pos
        cmp ifGhost3Collision, 1
        je update
        call UpdateGhost3
        inc yGhost3Pos
        call DrawGhost3
        mov eax, 70
        call Delay
        ret

    left:
        dec xGhost3Pos
        call DetectGhost3Collision
        inc xGhost3Pos
        cmp ifGhost3Collision, 1
        je update
        call UpdateGhost3
        dec xGhost3Pos
        call DrawGhost3
        mov eax, 70
        call Delay
        ret

    right:
        inc xGhost3Pos
        call DetectGhost3Collision
        dec xGhost3Pos
        cmp ifGhost3Collision, 1
        je update
        call UpdateGhost3
        inc xGhost3Pos
        call DrawGhost3
        mov eax, 70
        call Delay
        ret

    update:
        call GenerateRandom
    
    ret       
MoveGhost3 ENDP

DrawFruit PROC
    mov eax,yellow ;(red * 16)
    call SetTextColor
    mov dl,xFruitPos
    mov dh,yFruitPos
    call Gotoxy
    mov al,"*"
    call WriteChar
    ret
DrawFruit ENDP

DetectGate PROC
    mov dl, xPos
    mov dh, yPos
    cmp dl, xGatePos
    jne notEqual
    cmp dh, yGatePos
    jne notEqual
   
    call UpdatePlayer 
    mov dl, xTeleportPos
    mov dh, yTeleportPos
    mov xPos,dl
    mov yPos,dh
    dec yPos
    call DrawPlayer

    notEqual:
    ret
DetectGate ENDP

DetectOtherGate PROC
    mov dl, xPos
    mov dh, yPos
    cmp dl, xTeleportPos
    jne notEqual
    cmp dh, yTeleportPos
    jne notEqual

    mov dl, xGatePos
    mov dh, yGatePos
    call Gotoxy

    notEqual:
    ret
DetectOtherGate ENDP

;drawing teleportation gates
DrawGate PROC
    mov eax, yellow ;(red * 16)
    call SetTextColor
    mov dl,xGatePos
    mov dh,yGatePos
    call Gotoxy
    mov al,"_"
    call WriteChar
    ret
DrawGate ENDP

DrawOtherGate PROC
    mov eax, yellow ;(red * 16)
    call SetTextColor
    mov dl,xTeleportPos
    mov dh,yTeleportPos
    call Gotoxy
    mov al,"_"
    call WriteChar
    ret
DrawOtherGate ENDP

;lives decrement when player intersects with ghost
DecrementLives1 PROC
mov dl, xPos
mov dh, yPos
cmp dl, xGhost1Pos
jne notEqual
cmp dh, yGhost1Pos
jne notEqual

dec Lives
ret

notEqual:
ret
DecrementLives1 ENDP

DecrementLives2 PROC
mov dl, xPos
mov dh, yPos
cmp dl, xGhost2Pos
jne notEqual
cmp dh, yGhost2Pos
jne notEqual

dec Lives
ret

notEqual:
ret
DecrementLives2 ENDP

DecrementLives3 PROC
mov dl, xPos
mov dh, yPos
cmp dl, xGhost3Pos
jne notEqual
cmp dh, yGhost3Pos
jne notEqual

dec Lives
ret

notEqual:
ret
DecrementLives3 ENDP

;function to inc points when intersecting with '.' character
CollectPoints PROC
   cmp ifLevel, 1
   je level1

   cmp ifLevel, 2
   je level2

   cmp ifLevel, 3
   je level3

   level1:
   mov esi, OFFSET setUp1
   movzx edi, yPos
   mov al, 120
   imul edi, eax ;edi = 120 * ypos
   mov ecx, 0
   mov cl, xPos
   add edi, ecx ;edi = edi + xpos

   add esi, edi
   mov al, [esi]
   cmp al, "."
   jne notCollecting1

   inc score
   mov al, " "
   mov [esi], al
   call DrawPlayer

   notCollecting1:
   jmp exitProc

   level2:
   mov esi, OFFSET setUp2
   movzx edi, yPos
   mov al, 120
   imul edi, eax ;edi = 120 * ypos
   mov ecx, 0
   mov cl, xPos
   add edi, ecx ;edi = edi + xpos

   add esi, edi
   mov al, [esi]
   cmp al, "."
   jne notCollecting2

   inc score
   mov al, " "
   mov [esi], al
   call DrawPlayer

   notCollecting2:
   jmp exitProc

   level3:
   mov esi, OFFSET setUp3
   movzx edi, yPos
   mov al, 120
   imul edi, eax ;edi = 120 * ypos
   mov ecx, 0
   mov cl, xPos
   add edi, ecx ;edi = edi + xpos

   add esi, edi
   mov al, [esi]
   cmp al, "."
   jne notCollecting3

   inc score
   mov al, " "
   mov [esi], al
   call DrawPlayer

   notCollecting3:
   jmp exitProc

   exitProc:
   ret
CollectPoints ENDP

DetectGhost1Collision PROC
  mov ifGhost1Collision, 0
  mov eax, 0

  cmp ifLevel, 1
  je level1

  cmp ifLevel, 2
  je level2

  cmp ifLevel, 3
  je level3

  level1:
  ; calculate the position of the player in setUp1 maze
  mov esi, OFFSET setUp1
  movzx eax, yGhost1Pos
  mov bl, 120
  mul bl ; edi = 120 * ypos
  mov ecx, 0
  mov cl, xGhost1Pos
  add eax, ecx ; edi = edi + xpos

  add esi, eax
  mov al, [esi]

  ; check if the character is "#"
  cmp al, "#"
  je collisionDetected1

  jmp collisionUndetected1

collisionDetected1:
    mov ifGhost1Collision, 1
    mov eax, 1
    call GenerateRandom
    ret

collisionUndetected1:
    mov ifGhost1Collision, 0
    jmp exitProc

level2:
  ; calculate the position of the player in setUp2 maze
  mov esi, OFFSET setUp2
  movzx eax, yGhost1Pos
  mov bl, 120
  mul bl ; edi = 120 * ypos
  mov ecx, 0
  mov cl, xGhost1Pos
  add eax, ecx ; edi = edi + xpos

  add esi, eax
  mov al, [esi]

  ; check if the character is "#"
  cmp al, "#"
  je collisionDetected2

  jmp collisionUndetected2

collisionDetected2:
    mov ifGhost1Collision, 1
    mov eax, 1
    call GenerateRandom
    ret

collisionUndetected2:
    mov ifGhost1Collision, 0
    jmp exitProc

level3:
  ; calculate the position of the player in setUp3 maze
  mov esi, OFFSET setUp3
  movzx eax, yGhost1Pos
  mov bl, 120
  mul bl ; edi = 120 * ypos
  mov ecx, 0
  mov cl, xGhost1Pos
  add eax, ecx ; edi = edi + xpos

  add esi, eax
  mov al, [esi]

  ; check if the character is "#"
  cmp al, "#"
  je collisionDetected3

  jmp collisionUndetected3

collisionDetected3:
    mov ifGhost1Collision, 1
    mov eax, 1
    call GenerateRandom
    ret

collisionUndetected3:
    mov ifGhost1Collision, 0
    jmp exitProc

    exitProc:
    ret
DetectGhost1Collision ENDP

DetectGhost2Collision PROC
  mov ifGhost2Collision, 0
  mov eax, 0

  ; calculate the position of the player in setUp1 maze
  mov esi, OFFSET setUp3
  movzx eax, yGhost2Pos
  mov bl, 120
  mul bl ; edi = 120 * ypos
  mov ecx, 0
  mov cl, xGhost2Pos
  add eax, ecx ; edi = edi + xpos

  add esi, eax
  mov al, [esi]

  ; check if the character is "#"
  cmp al, "#"
  je collisionDetected

  jmp collisionUndetected

collisionDetected:
    mov ifGhost2Collision, 1
    mov eax, 1
    call GenerateRandom
    ret

collisionUndetected:
    mov ifGhost2Collision, 0
    jmp exitProc

    exitProc:
    ret
DetectGhost2Collision ENDP

DetectGhost3Collision PROC
  mov ifGhost3Collision, 0
  mov eax, 0

  ; calculate the position of the player in setUp1 maze
  mov esi, OFFSET setUp3
  movzx eax, yGhost3Pos
  mov bl, 120
  mul bl ; edi = 120 * ypos
  mov ecx, 0
  mov cl, xGhost3Pos
  add eax, ecx ; edi = edi + xpos

  add esi, eax
  mov al, [esi]

  ; check if the character is "#"
  cmp al, "#"
  je collisionDetected

  jmp collisionUndetected

collisionDetected:
    mov ifGhost3Collision, 1
    mov eax, 1
    call GenerateRandom
    ret

collisionUndetected:
    mov ifGhost3Collision, 0
    jmp exitProc

    exitProc:
    ret
DetectGhost3Collision ENDP

DetectFruitCollision PROC
    mov dl, xPos
    mov dh, yPos
    cmp dl, xFruitPos
    jne notEqual
    cmp dh, yFruitPos
    jne notEqual

    add score, 5
    call CreateRandomFruit
    call DrawFruit

    notEqual:
    ret
DetectFruitCollision ENDP

DetectPlayerCollision PROC
  mov ifPlayerCollision, 0
  mov eax, 0

  cmp ifLevel, 1
  je level1

  cmp ifLevel, 2
  je level2

  cmp ifLevel, 3
  je level3

  level1:
  ; calculate the position of the player in setUp1 maze
  mov esi, OFFSET setUp1
  movzx eax, yPos
  mov bl, 120
  mul bl ; edi = 120 * ypos
  mov ecx, 0
  mov cl, xPos
  add eax, ecx ; edi = edi + xpos

  add esi, eax
  mov al, [esi]

  ; check if the character is "#"
  cmp al, "#"
  je collisionDetected1

  jmp collisionUndetected1

collisionDetected1:
    mov ifPlayerCollision, 1
    mov eax, 1
    ret

collisionUndetected1:
    mov ifPlayerCollision, 0
    jmp exitProc

    level2:
    ; calculate the position of the player in setUp2 maze
     mov esi, OFFSET setUp2
     movzx eax, yPos
     mov bl, 120
     mul bl ; edi = 120 * ypos
     mov ecx, 0
     mov cl, xPos
     add eax, ecx ; edi = edi + xpos

     add esi, eax
     mov al, [esi]

     ; check if the character is "#"
     cmp al, "#"
     je collisionDetected2
     
     jmp collisionUndetected2

collisionDetected2:
        mov ifPlayerCollision, 1
        mov eax, 1
        ret

collisionUndetected2:
        mov ifPlayerCollision, 0
        jmp exitProc

    level3:
     ; calculate the position of the player in setUp3 maze
      mov esi, OFFSET setUp3
      movzx eax, yPos
      mov bl, 120
      mul bl ; edi = 120 * ypos
      mov ecx, 0
      mov cl, xPos
      add eax, ecx ; edi = edi + xpos

      add esi, eax
      mov al, [esi]

      ; check if the character is "#"
      cmp al, "#"
      je collisionDetected3

      jmp collisionUndetected3

collisionDetected3:
    mov ifPlayerCollision, 1
    mov eax, 1
    ret

collisionUndetected3:
    mov ifPlayerCollision, 0
    jmp exitProc

    exitProc:
    ret
DetectPlayerCollision ENDP

;creates random '*' character in the maze
CreateRandomFruit PROC
    mov eax,70
    call RandomRange
    mov xFruitPos,al

    mov eax,30
    call RandomRange
    mov yFruitPos,al

    ret
CreateRandomFruit ENDP

END main