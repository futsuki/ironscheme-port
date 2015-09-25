(library (mono xml xsl variable-scope)
  (export new
          is?
          variable-scope?
          resolve
          resolve-static
          add-variable
          variable-high-tide
          parent)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.VariableScope a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.VariableScope a))
  (define (variable-scope? a) (clr-is Mono.Xml.Xsl.VariableScope a))
  (define-method-port
    resolve
    Mono.Xml.Xsl.VariableScope
    Resolve
    (Mono.Xml.Xsl.Operations.XslLocalVariable
      Mono.Xml.Xsl.XslTransformProcessor
      System.Xml.XmlQualifiedName))
  (define-method-port
    resolve-static
    Mono.Xml.Xsl.VariableScope
    ResolveStatic
    (Mono.Xml.Xsl.Operations.XslLocalVariable
      System.Xml.XmlQualifiedName))
  (define-method-port
    add-variable
    Mono.Xml.Xsl.VariableScope
    AddVariable
    (System.Int32 Mono.Xml.Xsl.Operations.XslLocalVariable))
  (define-field-port
    variable-high-tide
    #f
    #f
    (property:)
    Mono.Xml.Xsl.VariableScope
    VariableHighTide
    System.Int32)
  (define-field-port
    parent
    #f
    #f
    (property:)
    Mono.Xml.Xsl.VariableScope
    Parent
    Mono.Xml.Xsl.VariableScope))
