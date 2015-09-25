(library (mono xml dtdcollection-base)
  (export is? dtdcollection-base? contains? inner-hashtable)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.DTDCollectionBase a))
  (define (dtdcollection-base? a) (clr-is Mono.Xml.DTDCollectionBase a))
  (define-method-port
    contains?
    Mono.Xml.DTDCollectionBase
    Contains
    (System.Boolean System.String))
  (define-field-port
    inner-hashtable
    #f
    #f
    (property:)
    Mono.Xml.DTDCollectionBase
    InnerHashtable
    Mono.Xml.DictionaryBase))
