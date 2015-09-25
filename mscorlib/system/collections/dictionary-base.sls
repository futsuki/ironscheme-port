(library (system collections dictionary-base)
  (export is? dictionary-base? copy-to get-enumerator clear count)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Collections.DictionaryBase a))
  (define (dictionary-base? a)
    (clr-is System.Collections.DictionaryBase a))
  (define-method-port
    copy-to
    System.Collections.DictionaryBase
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    get-enumerator
    System.Collections.DictionaryBase
    GetEnumerator
    (System.Collections.IDictionaryEnumerator))
  (define-method-port
    clear
    System.Collections.DictionaryBase
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.DictionaryBase
    Count
    System.Int32))
