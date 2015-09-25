(library (mono xml dictionary-base)
  (export new is? dictionary-base? values)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DictionaryBase a ...)))))
  (define (is? a) (clr-is Mono.Xml.DictionaryBase a))
  (define (dictionary-base? a) (clr-is Mono.Xml.DictionaryBase a))
  (define-field-port
    values
    #f
    #f
    (property:)
    Mono.Xml.DictionaryBase
    Values
    "System.Collections.Generic.IEnumerable`1[[Mono.Xml.DTDNode, System.Xml, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
