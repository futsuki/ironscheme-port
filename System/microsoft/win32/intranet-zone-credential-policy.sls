(library (microsoft win32 intranet-zone-credential-policy)
  (export new
          is?
          intranet-zone-credential-policy?
          should-send-credential?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.Win32.IntranetZoneCredentialPolicy
             a
             ...)))))
  (define (is? a)
    (clr-is Microsoft.Win32.IntranetZoneCredentialPolicy a))
  (define (intranet-zone-credential-policy? a)
    (clr-is Microsoft.Win32.IntranetZoneCredentialPolicy a))
  (define-method-port
    should-send-credential?
    Microsoft.Win32.IntranetZoneCredentialPolicy
    ShouldSendCredential
    (System.Boolean
      System.Uri
      System.Net.WebRequest
      System.Net.NetworkCredential
      System.Net.IAuthenticationModule)))
