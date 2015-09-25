(library (system xml serialization key-helper)
  (export new is? key-helper? add-field)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.KeyHelper a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.KeyHelper a))
  (define (key-helper? a) (clr-is System.Xml.Serialization.KeyHelper a))
  (define-method-port
    add-field
    System.Xml.Serialization.KeyHelper
    AddField
    (static:
      System.Void
      System.Text.StringBuilder
      System.Int32
      System.Type)
    (static:
      System.Void
      System.Text.StringBuilder
      System.Int32
      System.Int32
      System.Int32)
    (static:
      System.Void
      System.Text.StringBuilder
      System.Int32
      System.Boolean
      System.Boolean)
    (static:
      System.Void
      System.Text.StringBuilder
      System.Int32
      System.Boolean)
    (static:
      System.Void
      System.Text.StringBuilder
      System.Int32
      System.String
      System.String)
    (static:
      System.Void
      System.Text.StringBuilder
      System.Int32
      System.String)))
