(library (system threading interlocked)
  (export is?
          interlocked?
          read
          exchange
          decrement
          increment
          add
          compare-exchange)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Threading.Interlocked a))
  (define (interlocked? a) (clr-is System.Threading.Interlocked a))
  (define-method-port
    read
    System.Threading.Interlocked
    Read
    (static: System.Int64 System.Int64&))
  (define-method-port
    exchange
    System.Threading.Interlocked
    Exchange
    (static: System.Double System.Double& System.Double)
    (static: System.IntPtr System.IntPtr& System.IntPtr)
    (static: System.Int64 System.Int64& System.Int64)
    (static: System.Single System.Single& System.Single)
    (static: System.Object System.Object& System.Object)
    (static: System.Int32 System.Int32& System.Int32))
  (define-method-port
    decrement
    System.Threading.Interlocked
    Decrement
    (static: System.Int64 System.Int64&)
    (static: System.Int32 System.Int32&))
  (define-method-port
    increment
    System.Threading.Interlocked
    Increment
    (static: System.Int64 System.Int64&)
    (static: System.Int32 System.Int32&))
  (define-method-port
    add
    System.Threading.Interlocked
    Add
    (static: System.Int64 System.Int64& System.Int64)
    (static: System.Int32 System.Int32& System.Int32))
  (define-method-port
    compare-exchange
    System.Threading.Interlocked
    CompareExchange
    (static: System.Double System.Double& System.Double System.Double)
    (static: System.IntPtr System.IntPtr& System.IntPtr System.IntPtr)
    (static: System.Int64 System.Int64& System.Int64 System.Int64)
    (static: System.Single System.Single& System.Single System.Single)
    (static: System.Object System.Object& System.Object System.Object)
    (static: System.Int32 System.Int32& System.Int32 System.Int32)))
