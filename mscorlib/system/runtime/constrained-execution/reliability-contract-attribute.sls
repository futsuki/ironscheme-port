(library (system
          runtime
          constrained-execution
          reliability-contract-attribute)
  (export new
          is?
          reliability-contract-attribute?
          cer
          consistency-guarantee)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.ConstrainedExecution.ReliabilityContractAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.ConstrainedExecution.ReliabilityContractAttribute
      a))
  (define (reliability-contract-attribute? a)
    (clr-is
      System.Runtime.ConstrainedExecution.ReliabilityContractAttribute
      a))
  (define-field-port
    cer
    #f
    #f
    (property:)
    System.Runtime.ConstrainedExecution.ReliabilityContractAttribute
    Cer
    System.Runtime.ConstrainedExecution.Cer)
  (define-field-port
    consistency-guarantee
    #f
    #f
    (property:)
    System.Runtime.ConstrainedExecution.ReliabilityContractAttribute
    ConsistencyGuarantee
    System.Runtime.ConstrainedExecution.Consistency))
