(library (system net authentication-manager)
  (export is?
          authentication-manager?
          unregister
          authenticate
          pre-authenticate
          register
          credential-policy-get
          credential-policy-set!
          credential-policy-update!
          custom-target-name-dictionary
          registered-modules)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.AuthenticationManager a))
  (define (authentication-manager? a)
    (clr-is System.Net.AuthenticationManager a))
  (define-method-port
    unregister
    System.Net.AuthenticationManager
    Unregister
    (static: System.Void System.String)
    (static: System.Void System.Net.IAuthenticationModule))
  (define-method-port
    authenticate
    System.Net.AuthenticationManager
    Authenticate
    (static:
      System.Net.Authorization
      System.String
      System.Net.WebRequest
      System.Net.ICredentials))
  (define-method-port
    pre-authenticate
    System.Net.AuthenticationManager
    PreAuthenticate
    (static:
      System.Net.Authorization
      System.Net.WebRequest
      System.Net.ICredentials))
  (define-method-port
    register
    System.Net.AuthenticationManager
    Register
    (static: System.Void System.Net.IAuthenticationModule))
  (define-field-port
    credential-policy-get
    credential-policy-set!
    credential-policy-update!
    (static: property:)
    System.Net.AuthenticationManager
    CredentialPolicy
    System.Net.ICredentialPolicy)
  (define-field-port
    custom-target-name-dictionary
    #f
    #f
    (static: property:)
    System.Net.AuthenticationManager
    CustomTargetNameDictionary
    System.Collections.Specialized.StringDictionary)
  (define-field-port
    registered-modules
    #f
    #f
    (static: property:)
    System.Net.AuthenticationManager
    RegisteredModules
    System.Collections.IEnumerator))
