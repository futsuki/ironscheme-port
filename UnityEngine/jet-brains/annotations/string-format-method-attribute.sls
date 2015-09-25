(library (jet-brains annotations string-format-method-attribute)
  (export new is? string-format-method-attribute? format-parameter-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.StringFormatMethodAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is JetBrains.Annotations.StringFormatMethodAttribute a))
  (define (string-format-method-attribute? a)
    (clr-is JetBrains.Annotations.StringFormatMethodAttribute a))
  (define-field-port
    format-parameter-name
    #f
    #f
    (property:)
    JetBrains.Annotations.StringFormatMethodAttribute
    FormatParameterName
    System.String))
