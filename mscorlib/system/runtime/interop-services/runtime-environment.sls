(library (system runtime interop-services runtime-environment)
  (export new
          is?
          runtime-environment?
          from-global-access-cache?
          get-system-version
          get-runtime-directory
          system-configuration-file)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.RuntimeEnvironment
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.RuntimeEnvironment a))
  (define (runtime-environment? a)
    (clr-is System.Runtime.InteropServices.RuntimeEnvironment a))
  (define-method-port
    from-global-access-cache?
    System.Runtime.InteropServices.RuntimeEnvironment
    FromGlobalAccessCache
    (static: System.Boolean System.Reflection.Assembly))
  (define-method-port
    get-system-version
    System.Runtime.InteropServices.RuntimeEnvironment
    GetSystemVersion
    (static: System.String))
  (define-method-port
    get-runtime-directory
    System.Runtime.InteropServices.RuntimeEnvironment
    GetRuntimeDirectory
    (static: System.String))
  (define-field-port
    system-configuration-file
    #f
    #f
    (static: property:)
    System.Runtime.InteropServices.RuntimeEnvironment
    SystemConfigurationFile
    System.String))
