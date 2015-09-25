(library (system enterprise-services byot)
  (export is? byot? create-with-transaction create-with-tip-transaction)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.EnterpriseServices.BYOT a))
  (define (byot? a) (clr-is System.EnterpriseServices.BYOT a))
  (define-method-port
    create-with-transaction
    System.EnterpriseServices.BYOT
    CreateWithTransaction
    (static: System.Object System.Object System.Type))
  (define-method-port
    create-with-tip-transaction
    System.EnterpriseServices.BYOT
    CreateWithTipTransaction
    (static: System.Object System.String System.Type)))
