(library (unity-engine-internal type-inference-rule-attribute)
  (export new is? type-inference-rule-attribute? to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngineInternal.TypeInferenceRuleAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngineInternal.TypeInferenceRuleAttribute a))
  (define (type-inference-rule-attribute? a)
    (clr-is UnityEngineInternal.TypeInferenceRuleAttribute a))
  (define-method-port
    to-string
    UnityEngineInternal.TypeInferenceRuleAttribute
    ToString
    (System.String)))
