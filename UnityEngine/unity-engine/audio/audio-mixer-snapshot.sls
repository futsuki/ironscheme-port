(library (unity-engine audio audio-mixer-snapshot)
  (export is? audio-mixer-snapshot? transition-to audio-mixer)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Audio.AudioMixerSnapshot a))
  (define (audio-mixer-snapshot? a)
    (clr-is UnityEngine.Audio.AudioMixerSnapshot a))
  (define-method-port
    transition-to
    UnityEngine.Audio.AudioMixerSnapshot
    TransitionTo
    (System.Void System.Single))
  (define-field-port
    audio-mixer
    #f
    #f
    (property:)
    UnityEngine.Audio.AudioMixerSnapshot
    audioMixer
    UnityEngine.Audio.AudioMixer))
