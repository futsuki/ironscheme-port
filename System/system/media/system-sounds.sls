(library (system media system-sounds)
  (export is? system-sounds? asterisk beep exclamation hand question)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Media.SystemSounds a))
  (define (system-sounds? a) (clr-is System.Media.SystemSounds a))
  (define-field-port
    asterisk
    #f
    #f
    (static: property:)
    System.Media.SystemSounds
    Asterisk
    System.Media.SystemSound)
  (define-field-port
    beep
    #f
    #f
    (static: property:)
    System.Media.SystemSounds
    Beep
    System.Media.SystemSound)
  (define-field-port
    exclamation
    #f
    #f
    (static: property:)
    System.Media.SystemSounds
    Exclamation
    System.Media.SystemSound)
  (define-field-port
    hand
    #f
    #f
    (static: property:)
    System.Media.SystemSounds
    Hand
    System.Media.SystemSound)
  (define-field-port
    question
    #f
    #f
    (static: property:)
    System.Media.SystemSounds
    Question
    System.Media.SystemSound))
