(library (system runtime remoting messaging cadmethod-return-message)
  (export is? cadmethod-return-message?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.CADMethodReturnMessage a))
  (define (cadmethod-return-message? a)
    (clr-is
      System.Runtime.Remoting.Messaging.CADMethodReturnMessage
      a)))
