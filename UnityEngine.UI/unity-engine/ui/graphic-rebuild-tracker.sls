(library (unity-engine ui graphic-rebuild-tracker)
  (export is? graphic-rebuild-tracker? un-track-graphic track-graphic)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.GraphicRebuildTracker a))
  (define (graphic-rebuild-tracker? a)
    (clr-is UnityEngine.UI.GraphicRebuildTracker a))
  (define-method-port
    un-track-graphic
    UnityEngine.UI.GraphicRebuildTracker
    UnTrackGraphic
    (static: System.Void UnityEngine.UI.Graphic))
  (define-method-port
    track-graphic
    UnityEngine.UI.GraphicRebuildTracker
    TrackGraphic
    (static: System.Void UnityEngine.UI.Graphic)))
