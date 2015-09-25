(library (config-xml-text-reader)
  (export new is? config-xml-text-reader? filename)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new ConfigXmlTextReader a ...)))))
  (define (is? a) (clr-is ConfigXmlTextReader a))
  (define (config-xml-text-reader? a) (clr-is ConfigXmlTextReader a))
  (define-field-port
    filename
    #f
    #f
    (property:)
    ConfigXmlTextReader
    Filename
    System.String))
