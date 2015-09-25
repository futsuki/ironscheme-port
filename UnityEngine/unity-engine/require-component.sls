(library (unity-engine require-component)
  (export new
          is?
          require-component?
          m-type0-get
          m-type0-set!
          m-type0-update!
          m-type1-get
          m-type1-set!
          m-type1-update!
          m-type2-get
          m-type2-set!
          m-type2-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.RequireComponent a ...)))))
  (define (is? a) (clr-is UnityEngine.RequireComponent a))
  (define (require-component? a)
    (clr-is UnityEngine.RequireComponent a))
  (define-field-port
    m-type0-get
    m-type0-set!
    m-type0-update!
    ()
    UnityEngine.RequireComponent
    m_Type0
    System.Type)
  (define-field-port
    m-type1-get
    m-type1-set!
    m-type1-update!
    ()
    UnityEngine.RequireComponent
    m_Type1
    System.Type)
  (define-field-port
    m-type2-get
    m-type2-set!
    m-type2-update!
    ()
    UnityEngine.RequireComponent
    m_Type2
    System.Type))
