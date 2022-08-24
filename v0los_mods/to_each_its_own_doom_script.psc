scriptName toEachItsOwnScript extends ObjectReference

import game

BOOL PROPERTY bScholar AUTO
BOOL PROPERTY bRebel AUTO
BOOL PROPERTY bAgent AUTO
BOOL PROPERTY bVeteran AUTO
BOOL PROPERTY bBloodMage AUTO
BOOL PROPERTY bGeneralist AUTO
BOOL PROPERTY bSummoner AUTO
BOOL PROPERTY bStormChaser AUTO
BOOL PROPERTY bFromTheShadows AUTO
BOOL PROPERTY bTreasureHunter AUTO
BOOL PROPERTY bRogue AUTO
BOOL PROPERTY bWitchHunter AUTO
BOOL PROPERTY bSavageFromAtmora AUTO

SPELL PROPERTY pScholarDedication AUTO
SPELL PROPERTY pScholarOvercharge AUTO
SPELL PROPERTY pRebelFindWeakSpot AUTO
SPELL PROPERTY pRebelTeracteGrande AUTO
SPELL PROPERTY pAgentMartialArt AUTO
SPELL PROPERTY pAgentSelfDefence AUTO
SPELL PROPERTY pVeteranSmartStrikes AUTO
SPELL PROPERTY pBloodMageBloodMagic AUTO
SPELL PROPERTY pBloodMageOfferBlood AUTO
SPELL PROPERTY pGeneralistMagician AUTO
SPELL PROPERTY pSummonerPact AUTO
SPELL PROPERTY pSummonerAskForAid AUTO
SPELL PROPERTY pStormChaserThunderStrikes AUTO
SPELL PROPERTY pStormChaserThunderFist AUTO
SPELL PROPERTY pFromTheShadowsEliteTraining AUTO
SPELL PROPERTY pTreasureHunterHoardTreasure AUTO
SPELL PROPERTY pTreasureHunterHitAndRun AUTO
SPELL PROPERTY pRogueDangerSense AUTO
SPELL PROPERTY pWitchHunterWitchhunt AUTO
SPELL PROPERTY pSavageFromAtmoraHealth AUTO
SPELL PROPERTY pSavageFromAtmoraBlood AUTO

BOOL DOONCE=TRUE
Auto State base

EVENT onACTIVATE(OBJECTREFERENCE obj)
    IF(doOnce && obj AS ACTOR == game.getPlayer())
        doOnce = FALSE

        IF(bScholar && game.getPlayer().hasSpell(pScholarDedication))
            doOnce = TRUE
        ELSEIF(bRebel && game.getPlayer().hasSpell(pRebelFindWeakSpot))
            doOnce = TRUE
        ELSEIF(bAgent && game.getPlayer().hasSpell(pAgentMartialArt))
            doOnce = TRUE
        ELSEIF(bVeteran && game.getPlayer().hasSpell(pVeteranSmartStrikes))
            doOnce = TRUE
        ELSEIF(bBloodMage && game.getPlayer().hasSpell(pBloodMageBloodMagic))
            doOnce = TRUE
        ELSEIF(bGeneralist && game.getPlayer().hasSpell(pGeneralistMagician))
            doOnce = TRUE
        ELSEIF(bSummoner && game.getPlayer().hasSpell(pSummonerPact))
            doOnce = TRUE
        ELSEIF(bStormChaser && game.getPlayer().hasSpell(pStormChaserThunderStrikes))
            doOnce = TRUE
        ELSEIF(bFromTheShadows && game.getPlayer().hasSpell(pFromTheShadowsEliteTraining))
            doOnce = TRUE
        ELSEIF(bTreasureHunter && game.getPlayer().hasSpell(pTreasureHunterHoardTreasure))
            doOnce = TRUE
        ELSEIF(bRogue && game.getPlayer().hasSpell(pRogueDangerSense))
            doOnce = TRUE
        ELSEIF(bWitchHunter && game.getPlayer().hasSpell(pWitchHunterWitchhunt))
            doOnce = TRUE
        ELSEIF(bSavageFromAtmora && game.getPlayer().hasSpell(pSavageFromAtmoraHealth))
            doOnce = TRUE

        ELSE
            removeClass()
            addClass()
            doOnce = TRUE
        ENDIF
    ENDIF
endEVENT
endState

FUNCTION addClass()
IF(bScholar)
    game.getPlayer().addSpell(pScholarDedication)
    game.getPlayer().addSpell(pScholarOvercharge)
ELSEIF(bRebel)
    game.getPlayer().addSpell(pRebelFindWeakSpot)
    game.getPlayer().addSpell(pRebelTeracteGrande)
ELSEIF(bAgent)
    game.getPlayer().addSpell(pAgentMartialArt)
    game.getPlayer().addSpell(pAgentSelfDefence)
ELSEIF(bVeteran)
    game.getPlayer().addSpell(pVeteranSmartStrikes)
ELSEIF(bBloodMage)
    game.getPlayer().addSpell(pBloodMageBloodMagic)
    game.getPlayer().addSpell(pBloodMageOfferBlood)
ELSEIF(bGeneralist)
    game.getPlayer().addSpell(pGeneralistMagician)
ELSEIF(bSummoner)
    game.getPlayer().addSpell(pSummonerPact)
    game.getPlayer().addSpell(pSummonerAskForAid)
ELSEIF(bStormChaser)
    game.getPlayer().addSpell(pStormChaserThunderStrikes)
    game.getPlayer().addSpell(pStormChaserThunderFist)
ELSEIF(bFromTheShadows)
    game.getPlayer().addSpell(pFromTheShadowsEliteTraining)
ELSEIF(bTreasureHunter)
    game.getPlayer().addSpell(pTreasureHunterHoardTreasure)
    game.getPlayer().addSpell(pTreasureHunterHitAndRun)
ELSEIF(bRogue)
    game.getPlayer().addSpell(pRogueDangerSense)
ELSEIF(bWitchHunter)
    game.getPlayer().addSpell(pWitchHunterWitchhunt)
ELSEIF(bSavageFromAtmora)
    game.getPlayer().addSpell(pSavageFromAtmoraHealth)
    game.getPlayer().addSpell(pSavageFromAtmoraBlood)
ENDIF
endFUNCTION

FUNCTION removeClass()
IF(game.getPlayer().hasSpell(pScholarDedication))
    game.getPlayer().removeSpell(pScholarDedication)
    game.getPlayer().removeSpell(pScholarOvercharge)
ELSEIF(game.getPlayer().hasSpell(pRebelFindWeakSpot))
    game.getPlayer().removeSpell(pRebelFindWeakSpot)
    game.getPlayer().removeSpell(pRebelTeracteGrande)
ELSEIF(game.getPlayer().hasSpell(pAgentMartialArt))
    game.getPlayer().removeSpell(pAgentMartialArt)
    game.getPlayer().removeSpell(pAgentSelfDefence)
ELSEIF(game.getPlayer().hasSpell(pVeteranSmartStrikes))
    game.getPlayer().removeSpell(pVeteranSmartStrikes)
ELSEIF(game.getPlayer().hasSpell(pBloodMageBloodMagic))
    game.getPlayer().removeSpell(pBloodMageBloodMagic)
    game.getPlayer().removeSpell(pBloodMageOfferBlood)
ELSEIF(game.getPlayer().hasSpell(pGeneralistMagician))
    game.getPlayer().removeSpell(pGeneralistMagician)
ELSEIF(game.getPlayer().hasSpell(pSummonerPact))
    game.getPlayer().removeSpell(pSummonerPact)
    game.getPlayer().removeSpell(pSummonerAskForAid)
ELSEIF(game.getPlayer().hasSpell(pStormChaserThunderStrikes))
    game.getPlayer().removeSpell(pStormChaserThunderStrikes)
    game.getPlayer().removeSpell(pStormChaserThunderFist)
ELSEIF(game.getPlayer().hasSpell(pFromTheShadowsEliteTraining))
    game.getPlayer().removeSpell(pFromTheShadowsEliteTraining)
ELSEIF(game.getPlayer().hasSpell(pTreasureHunterHoardTreasure))
    game.getPlayer().removeSpell(pTreasureHunterHoardTreasure)
    game.getPlayer().removeSpell(pTreasureHunterHitAndRun)
ELSEIF(game.getPlayer().hasSpell(pRogueDangerSense))
    game.getPlayer().removeSpell(pRogueDangerSense)
ELSEIF(game.getPlayer().hasSpell(pWitchHunterWitchhunt))
    game.getPlayer().removeSpell(pWitchHunterWitchhunt)
ELSEIF(game.getPlayer().hasSpell(pSavageFromAtmoraHealth))
    game.getPlayer().removeSpell(pSavageFromAtmoraHealth)
    game.getPlayer().removeSpell(pSavageFromAtmoraBlood)
ENDIF
endFUNCTION