(library (unity-engine scroll-wait-definitions)
  (export is? scroll-wait-definitions? first-wait regular-wait)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.ScrollWaitDefinitions a))
  (define (scroll-wait-definitions? a)
    (clr-is UnityEngine.ScrollWaitDefinitions a))
  (define-field-port
    first-wait
    #f
    #f
    (static:)
    UnityEngine.ScrollWaitDefinitions
    firstWait
    System.Int32)
  (define-field-port
    regular-wait
    #f
    #f
    (static:)
    UnityEngine.ScrollWaitDefinitions
    regularWait
    System.Int32))
