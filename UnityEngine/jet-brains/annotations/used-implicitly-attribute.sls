(library (jet-brains annotations used-implicitly-attribute)
  (export new
          is?
          used-implicitly-attribute?
          use-kind-flags
          target-flags)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.UsedImplicitlyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is JetBrains.Annotations.UsedImplicitlyAttribute a))
  (define (used-implicitly-attribute? a)
    (clr-is JetBrains.Annotations.UsedImplicitlyAttribute a))
  (define-field-port
    use-kind-flags
    #f
    #f
    (property:)
    JetBrains.Annotations.UsedImplicitlyAttribute
    UseKindFlags
    JetBrains.Annotations.ImplicitUseKindFlags)
  (define-field-port
    target-flags
    #f
    #f
    (property:)
    JetBrains.Annotations.UsedImplicitlyAttribute
    TargetFlags
    JetBrains.Annotations.ImplicitUseTargetFlags))
