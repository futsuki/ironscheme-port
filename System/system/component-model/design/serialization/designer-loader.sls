(library (system component-model design serialization designer-loader)
  (export is? designer-loader? dispose flush begin-load loading?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.ComponentModel.Design.Serialization.DesignerLoader
      a))
  (define (designer-loader? a)
    (clr-is
      System.ComponentModel.Design.Serialization.DesignerLoader
      a))
  (define-method-port
    dispose
    System.ComponentModel.Design.Serialization.DesignerLoader
    Dispose
    (System.Void))
  (define-method-port
    flush
    System.ComponentModel.Design.Serialization.DesignerLoader
    Flush
    (System.Void))
  (define-method-port
    begin-load
    System.ComponentModel.Design.Serialization.DesignerLoader
    BeginLoad
    (System.Void
      System.ComponentModel.Design.Serialization.IDesignerLoaderHost))
  (define-field-port
    loading?
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.DesignerLoader
    Loading
    System.Boolean))
