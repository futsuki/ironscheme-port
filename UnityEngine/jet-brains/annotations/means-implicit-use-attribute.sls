(library (jet-brains annotations means-implicit-use-attribute)
  (export new
          is?
          means-implicit-use-attribute?
          use-kind-flags
          target-flags)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.MeansImplicitUseAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is JetBrains.Annotations.MeansImplicitUseAttribute a))
  (define (means-implicit-use-attribute? a)
    (clr-is JetBrains.Annotations.MeansImplicitUseAttribute a))
  (define-field-port
    use-kind-flags
    #f
    #f
    (property:)
    JetBrains.Annotations.MeansImplicitUseAttribute
    UseKindFlags
    JetBrains.Annotations.ImplicitUseKindFlags)
  (define-field-port
    target-flags
    #f
    #f
    (property:)
    JetBrains.Annotations.MeansImplicitUseAttribute
    TargetFlags
    JetBrains.Annotations.ImplicitUseTargetFlags))
