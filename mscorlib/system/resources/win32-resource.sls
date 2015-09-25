(library (system resources win32-resource)
  (export is?
          win32-resource?
          write-to
          to-string
          resource-type
          name
          type
          language)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Resources.Win32Resource a))
  (define (win32-resource? a) (clr-is System.Resources.Win32Resource a))
  (define-method-port
    write-to
    System.Resources.Win32Resource
    WriteTo
    (System.Void System.IO.Stream))
  (define-method-port
    to-string
    System.Resources.Win32Resource
    ToString
    (System.String))
  (define-field-port
    resource-type
    #f
    #f
    (property:)
    System.Resources.Win32Resource
    ResourceType
    System.Resources.Win32ResourceType)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Resources.Win32Resource
    Name
    System.Resources.NameOrId)
  (define-field-port
    type
    #f
    #f
    (property:)
    System.Resources.Win32Resource
    Type
    System.Resources.NameOrId)
  (define-field-port
    language
    #f
    #f
    (property:)
    System.Resources.Win32Resource
    Language
    System.Int32))
