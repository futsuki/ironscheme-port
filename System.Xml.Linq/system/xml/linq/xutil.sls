(library (system xml linq xutil)
  (export is?
          xutil?
          expand-array
          to-date-time
          get-detached-object
          convert-to-boolean?
          clone
          to-string
          to-nullable-boolean
          to-boolean?
          to-node
          xmlns-namespace)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Linq.XUtil a))
  (define (xutil? a) (clr-is System.Xml.Linq.XUtil a))
  (define-method-port
    expand-array
    System.Xml.Linq.XUtil
    ExpandArray
    (static: System.Collections.IEnumerable System.Object))
  (define-method-port
    to-date-time
    System.Xml.Linq.XUtil
    ToDateTime
    (static: System.DateTime System.String))
  (define-method-port
    get-detached-object
    System.Xml.Linq.XUtil
    GetDetachedObject
    (static: System.Object System.Xml.Linq.XObject))
  (define-method-port
    convert-to-boolean?
    System.Xml.Linq.XUtil
    ConvertToBoolean
    (static: System.Boolean System.String))
  (define-method-port
    clone
    System.Xml.Linq.XUtil
    Clone
    (static: System.Object System.Object))
  (define-method-port
    to-string
    System.Xml.Linq.XUtil
    ToString
    (static: System.String System.Object))
  (define-method-port
    to-nullable-boolean
    System.Xml.Linq.XUtil
    ToNullableBoolean
    (static:
      "System.Nullable`1[[System.Boolean, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
      System.Object))
  (define-method-port
    to-boolean?
    System.Xml.Linq.XUtil
    ToBoolean
    (static: System.Boolean System.Object))
  (define-method-port
    to-node
    System.Xml.Linq.XUtil
    ToNode
    (static: System.Xml.Linq.XNode System.Object))
  (define-field-port
    xmlns-namespace
    #f
    #f
    (static:)
    System.Xml.Linq.XUtil
    XmlnsNamespace
    System.String))
