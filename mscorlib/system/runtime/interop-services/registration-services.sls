(library (system runtime interop-services registration-services)
  (export new
          is?
          registration-services?
          type-requires-registration?
          get-prog-id-for-type
          get-managed-category-guid
          type-represents-com-type?
          unregister-type-for-com-clients
          register-type-for-com-clients
          unregister-assembly?
          register-assembly?
          get-registrable-types-in-assembly)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.RegistrationServices
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.RegistrationServices a))
  (define (registration-services? a)
    (clr-is System.Runtime.InteropServices.RegistrationServices a))
  (define-method-port
    type-requires-registration?
    System.Runtime.InteropServices.RegistrationServices
    TypeRequiresRegistration
    (System.Boolean System.Type))
  (define-method-port
    get-prog-id-for-type
    System.Runtime.InteropServices.RegistrationServices
    GetProgIdForType
    (System.String System.Type))
  (define-method-port
    get-managed-category-guid
    System.Runtime.InteropServices.RegistrationServices
    GetManagedCategoryGuid
    (System.Guid))
  (define-method-port
    type-represents-com-type?
    System.Runtime.InteropServices.RegistrationServices
    TypeRepresentsComType
    (System.Boolean System.Type))
  (define-method-port
    unregister-type-for-com-clients
    System.Runtime.InteropServices.RegistrationServices
    UnregisterTypeForComClients
    (System.Void System.Int32))
  (define-method-port
    register-type-for-com-clients
    System.Runtime.InteropServices.RegistrationServices
    RegisterTypeForComClients
    (System.Int32
      System.Type
      System.Runtime.InteropServices.RegistrationClassContext
      System.Runtime.InteropServices.RegistrationConnectionType)
    (System.Void System.Type System.Guid&))
  (define-method-port
    unregister-assembly?
    System.Runtime.InteropServices.RegistrationServices
    UnregisterAssembly
    (System.Boolean System.Reflection.Assembly))
  (define-method-port
    register-assembly?
    System.Runtime.InteropServices.RegistrationServices
    RegisterAssembly
    (System.Boolean
      System.Reflection.Assembly
      System.Runtime.InteropServices.AssemblyRegistrationFlags))
  (define-method-port
    get-registrable-types-in-assembly
    System.Runtime.InteropServices.RegistrationServices
    GetRegistrableTypesInAssembly
    (System.Type[] System.Reflection.Assembly)))
