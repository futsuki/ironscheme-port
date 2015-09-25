(library (jet-brains annotations contract-annotation-attribute)
  (export new
          is?
          contract-annotation-attribute?
          contract
          force-full-states?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.ContractAnnotationAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is JetBrains.Annotations.ContractAnnotationAttribute a))
  (define (contract-annotation-attribute? a)
    (clr-is JetBrains.Annotations.ContractAnnotationAttribute a))
  (define-field-port
    contract
    #f
    #f
    (property:)
    JetBrains.Annotations.ContractAnnotationAttribute
    Contract
    System.String)
  (define-field-port
    force-full-states?
    #f
    #f
    (property:)
    JetBrains.Annotations.ContractAnnotationAttribute
    ForceFullStates
    System.Boolean))
