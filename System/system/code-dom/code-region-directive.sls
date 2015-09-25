(library (system code-dom code-region-directive)
  (export new
          is?
          code-region-directive?
          region-mode-get
          region-mode-set!
          region-mode-update!
          region-text-get
          region-text-set!
          region-text-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeRegionDirective a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeRegionDirective a))
  (define (code-region-directive? a)
    (clr-is System.CodeDom.CodeRegionDirective a))
  (define-field-port
    region-mode-get
    region-mode-set!
    region-mode-update!
    (property:)
    System.CodeDom.CodeRegionDirective
    RegionMode
    System.CodeDom.CodeRegionMode)
  (define-field-port
    region-text-get
    region-text-set!
    region-text-update!
    (property:)
    System.CodeDom.CodeRegionDirective
    RegionText
    System.String))
