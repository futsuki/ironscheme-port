(library (unity-engine ui font-update-tracker)
  (export is? font-update-tracker? track-text untrack-text)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.FontUpdateTracker a))
  (define (font-update-tracker? a)
    (clr-is UnityEngine.UI.FontUpdateTracker a))
  (define-method-port
    track-text
    UnityEngine.UI.FontUpdateTracker
    TrackText
    (static: System.Void UnityEngine.UI.Text))
  (define-method-port
    untrack-text
    UnityEngine.UI.FontUpdateTracker
    UntrackText
    (static: System.Void UnityEngine.UI.Text)))
