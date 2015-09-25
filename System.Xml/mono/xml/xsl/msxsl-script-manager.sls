(library (mono xml xsl msxsl-script-manager)
  (export new is? msxsl-script-manager? add-script get-extension-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.MSXslScriptManager a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.MSXslScriptManager a))
  (define (msxsl-script-manager? a)
    (clr-is Mono.Xml.Xsl.MSXslScriptManager a))
  (define-method-port
    add-script
    Mono.Xml.Xsl.MSXslScriptManager
    AddScript
    (System.Void Mono.Xml.Xsl.Compiler))
  (define-method-port
    get-extension-object
    Mono.Xml.Xsl.MSXslScriptManager
    GetExtensionObject
    (System.Object System.String)))
