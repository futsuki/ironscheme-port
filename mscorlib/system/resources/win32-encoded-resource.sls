(library (system resources win32-encoded-resource)
  (export is? win32-encoded-resource? write-to data)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Resources.Win32EncodedResource a))
  (define (win32-encoded-resource? a)
    (clr-is System.Resources.Win32EncodedResource a))
  (define-method-port
    write-to
    System.Resources.Win32EncodedResource
    WriteTo
    (System.Void System.IO.Stream))
  (define-field-port
    data
    #f
    #f
    (property:)
    System.Resources.Win32EncodedResource
    Data
    System.Byte[]))
