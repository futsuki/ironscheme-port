(library (system diagnostics symbol-store sym-language-type)
  (export new
          is?
          sym-language-type?
          basic
          c
          cobol
          cplus-plus
          csharp
          ilassembly
          java
          jscript
          mcplus-plus
          pascal
          smc)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.SymbolStore.SymLanguageType
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.SymbolStore.SymLanguageType a))
  (define (sym-language-type? a)
    (clr-is System.Diagnostics.SymbolStore.SymLanguageType a))
  (define-field-port
    basic
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageType
    Basic
    System.Guid)
  (define-field-port
    c
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageType
    C
    System.Guid)
  (define-field-port
    cobol
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageType
    Cobol
    System.Guid)
  (define-field-port
    cplus-plus
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageType
    CPlusPlus
    System.Guid)
  (define-field-port
    csharp
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageType
    CSharp
    System.Guid)
  (define-field-port
    ilassembly
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageType
    ILAssembly
    System.Guid)
  (define-field-port
    java
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageType
    Java
    System.Guid)
  (define-field-port
    jscript
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageType
    JScript
    System.Guid)
  (define-field-port
    mcplus-plus
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageType
    MCPlusPlus
    System.Guid)
  (define-field-port
    pascal
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageType
    Pascal
    System.Guid)
  (define-field-port
    smc
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageType
    SMC
    System.Guid))
