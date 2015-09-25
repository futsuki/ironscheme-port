(library (unity-engine audio audio-mixer-group)
  (export is? audio-mixer-group? audio-mixer)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Audio.AudioMixerGroup a))
  (define (audio-mixer-group? a)
    (clr-is UnityEngine.Audio.AudioMixerGroup a))
  (define-field-port
    audio-mixer
    #f
    #f
    (property:)
    UnityEngine.Audio.AudioMixerGroup
    audioMixer
    UnityEngine.Audio.AudioMixer))
