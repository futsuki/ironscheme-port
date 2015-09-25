(library (system net http-listener-prefix-collection)
  (export is?
          http-listener-prefix-collection?
          copy-to
          get-enumerator
          add
          contains?
          remove?
          clear
          count
          is-read-only?
          is-synchronized?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.HttpListenerPrefixCollection a))
  (define (http-listener-prefix-collection? a)
    (clr-is System.Net.HttpListenerPrefixCollection a))
  (define-method-port
    copy-to
    System.Net.HttpListenerPrefixCollection
    CopyTo
    (System.Void System.Array System.Int32)
    (System.Void System.String[] System.Int32))
  (define-method-port
    get-enumerator
    System.Net.HttpListenerPrefixCollection
    GetEnumerator
    ("System.Collections.Generic.IEnumerator`1[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    add
    System.Net.HttpListenerPrefixCollection
    Add
    (System.Void System.String))
  (define-method-port
    contains?
    System.Net.HttpListenerPrefixCollection
    Contains
    (System.Boolean System.String))
  (define-method-port
    remove?
    System.Net.HttpListenerPrefixCollection
    Remove
    (System.Boolean System.String))
  (define-method-port
    clear
    System.Net.HttpListenerPrefixCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Net.HttpListenerPrefixCollection
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Net.HttpListenerPrefixCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Net.HttpListenerPrefixCollection
    IsSynchronized
    System.Boolean))
