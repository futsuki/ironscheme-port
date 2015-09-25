(library (jet-brains
          annotations
          notify-property-changed-invocator-attribute)
  (export new
          is?
          notify-property-changed-invocator-attribute?
          parameter-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute
      a))
  (define (notify-property-changed-invocator-attribute? a)
    (clr-is
      JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute
      a))
  (define-field-port
    parameter-name
    #f
    #f
    (property:)
    JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute
    ParameterName
    System.String))
