﻿package com.company.assembleegameclient.sound {
import com.company.assembleegameclient.parameters.Parameters;
import com.company.googleanalytics.GA;

import flash.media.SoundTransform;

public class SFX {

    private static var sfxTrans_:SoundTransform;


    public static function load():void {
        sfxTrans_ = new SoundTransform(((Parameters.data_.playSFX) ? 1 : 0));
    }

    public static function setPlaySFX(_arg1:Boolean):void {
        GA.global().trackEvent("sound", ((_arg1) ? "soundOn" : "soundOff"));
        Parameters.data_.playSFX = _arg1;
        Parameters.save();
        SoundEffectLibrary.updateTransform();
    }

    public static function setSFXVolume(_arg1:Number):void {
        Parameters.data_.SFXVolume = _arg1;
        Parameters.save();
        SoundEffectLibrary.updateVolume(_arg1);
    }


}
}
