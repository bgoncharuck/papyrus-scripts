scriptName praiseTheNineScript extends ObjectReference

import game

BOOL PROPERTY bAkatosh
BOOL PROPERTY bAuriel
BOOL PROPERTY bArkay
BOOL PROPERTY bDibella
BOOL PROPERTY bJulianos
BOOL PROPERTY bKynareth
BOOL PROPERTY bMara
BOOL PROPERTY bStendarr
BOOL PROPERTY bTalos
BOOL PROPERTY bZenithar
BOOL PROPERTY bAzura
BOOL PROPERTY bBoethiah
BOOL PROPERTY bMephala
BOOL PROPERTY bNocturnal

MESSAGE PROPERTY pPreviousWorshipRemovedMSG AUTO

SPELL PROPERTY pChampionOfAkatosh AUTO
SPELL PROPERTY pChampionOfAuriel AUTO
SPELL PROPERTY pPrayToArkay AUTO
SPELL PROPERTY pChampionOfDibella AUTO
SPELL PROPERTY pChampionOfJulianos AUTO
SPELL PROPERTY pChampionOfKynareth AUTO
SPELL PROPERTY pChampionOfMara AUTO
SPELL PROPERTY pPrayToStendarr AUTO
SPELL PROPERTY pChampionOfTalos AUTO
SPELL PROPERTY pChampionOfZenithar AUTO
SPELL PROPERTY pPrayToAzura AUTO
SPELL PROPERTY pChampionOfBoethiah AUTO
SPELL PROPERTY pChampionOfMephala AUTO
SPELL PROPERTY pPrayToNocturnal AUTO

BOOL DOONCE=TRUE
Auto State base

EVENT onACTIVATE(OBJECTREFERENCE obj)
    IF(doOnce && obj AS ACTOR == game.getPlayer())
        doOnce = FALSE

        IF(bAkatosh && game.getPlayer().hasSpell(pChampionOfAkatosh))
            doOnce = TRUE
        ELSEIF(bAuriel && game.getPlayer().hasSpell(pChampionOfAuriel))
            doOnce = TRUE
        ELSEIF(bArkay && game.getPlayer().hasSpell(pPrayToArkay))
            doOnce = TRUE
        ELSEIF(bDibella && game.getPlayer().hasSpell(pChampionOfDibella))
            doOnce = TRUE
        ELSEIF(bJulianos && game.getPlayer().hasSpell(pChampionOfJulianos))
            doOnce = TRUE
        ELSEIF(bKynareth && game.getPlayer().hasSpell(pChampionOfKynareth))
            doOnce = TRUE
        ELSEIF(bMara && game.getPlayer().hasSpell(pChampionOfMara))
            doOnce = TRUE
        ELSEIF(bStendarr && game.getPlayer().hasSpell(pPrayToStendarr))
            doOnce = TRUE
        ELSEIF(bTalos && game.getPlayer().hasSpell(pChampionOfTalos))
            doOnce = TRUE
        ELSEIF(bZenithar && game.getPlayer().hasSpell(pChampionOfZenithar))
            doOnce = TRUE
        ELSEIF(bAzura && game.getPlayer().hasSpell(pPrayToAzura))
            doOnce = TRUE
        ELSEIF(bBoethiah && game.getPlayer().hasSpell(pChampionOfBoethiah))
            doOnce = TRUE
        ELSEIF(bMephala && game.getPlayer().hasSpell(pChampionOfMephala))
            doOnce = TRUE
        ELSEIF(bNocturnal && game.getPlayer().hasSpell(pPrayToNocturnal))
            doOnce = TRUE

        ELSE
            pPreviousWorshipRemovedMSG.show()
            removeWorship()
            addWorship()
            doOnce = TRUE
        ENDIF
    ENDIF
endEVENT
endState

FUNCTION addWorship()
IF(bAkatosh)
    game.getPlayer().addSpell(pChampionOfAkatosh)
ELSEIF(bAuriel)
    game.getPlayer().addSpell(pChampionOfAuriel)
ELSEIF(bArkay)
    game.getPlayer().addSpell(pPrayToArkay)
ELSEIF(bDibella)
    game.getPlayer().addSpell(pChampionOfDibella)
ELSEIF(bJulianos)
    game.getPlayer().addSpell(pChampionOfJulianos)
ELSEIF(bKynareth)
    game.getPlayer().addSpell(pChampionOfKynareth)
ELSEIF(bMara)
    game.getPlayer().addSpell(pChampionOfMara)
ELSEIF(bStendarr)
    game.getPlayer().addSpell(pPrayToStendarr)
ELSEIF(bTalos)
    game.getPlayer().addSpell(pChampionOfTalos)
ELSEIF(bZenithar)
    game.getPlayer().addSpell(pChampionOfZenithar)
ELSEIF(bAzura)
    game.getPlayer().addSpell(pPrayToAzura)
ELSEIF(bBoethiah)
    game.getPlayer().addSpell(pChampionOfBoethiah)
ELSEIF(bMephala)
    game.getPlayer().addSpell(pChampionOfMephala)
ELSEIF(bNocturnal)
    game.getPlayer().addSpell(pPrayToNocturnal)
ENDIF
endFUNCTION

FUNCTION removeWorship()
IF(game.getPlayer().hasSpell(pChampionOfAkatosh))
    game.getPlayer().removeSpell(pChampionOfAkatosh)
ELSEIF(game.getPlayer().hasSpell(pChampionOfAuriel))
    game.getPlayer().removeSpell(pChampionOfAuriel)
ELSEIF(game.getPlayer().hasSpell(pPrayToArkay))
    game.getPlayer().removeSpell(pPrayToArkay)
ELSEIF(game.getPlayer().hasSpell(pChampionOfDibella))
    game.getPlayer().removeSpell(pChampionOfDibella)
ELSEIF(game.getPlayer().hasSpell(pChampionOfJulianos))
    game.getPlayer().removeSpell(pChampionOfJulianos)
ELSEIF(game.getPlayer().hasSpell(pChampionOfKynareth))
    game.getPlayer().removeSpell(pChampionOfKynareth)
ELSEIF(game.getPlayer().hasSpell(pChampionOfMara))
    game.getPlayer().removeSpell(pChampionOfMara)
ELSEIF(game.getPlayer().hasSpell(pPrayToStendarr))
    game.getPlayer().removeSpell(pPrayToStendarr)
ELSEIF(game.getPlayer().hasSpell(pChampionOfTalos))
    game.getPlayer().removeSpell(pChampionOfTalos)
ELSEIF(game.getPlayer().hasSpell(pChampionOfZenithar))
    game.getPlayer().removeSpell(pChampionOfZenithar)
ELSEIF(game.getPlayer().hasSpell(pPrayToAzura))
    game.getPlayer().removeSpell(pPrayToAzura)
ELSEIF(game.getPlayer().hasSpell(pChampionOfBoethiah))
    game.getPlayer().removeSpell(pChampionOfBoethiah)
ELSEIF(game.getPlayer().hasSpell(pChampionOfMephala))
    game.getPlayer().removeSpell(pChampionOfMephala)
ELSEIF(game.getPlayer().hasSpell(pPrayToNocturnal))
    game.getPlayer().removeSpell(pPrayToNocturnal)
ENDIF
endFUNCTION