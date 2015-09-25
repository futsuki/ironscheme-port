(library (system
          component-model
          design
          designtime-license-context-serializer)
  (export is? designtime-license-context-serializer? serialize)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.ComponentModel.Design.DesigntimeLicenseContextSerializer
      a))
  (define (designtime-license-context-serializer? a)
    (clr-is
      System.ComponentModel.Design.DesigntimeLicenseContextSerializer
      a))
  (define-method-port
    serialize
    System.ComponentModel.Design.DesigntimeLicenseContextSerializer
    Serialize
    (static:
      System.Void
      System.IO.Stream
      System.String
      System.ComponentModel.Design.DesigntimeLicenseContext)))
