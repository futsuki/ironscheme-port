(library (system io pipes win32-marshal)
  (export is? win32-marshal?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.Pipes.Win32Marshal a))
  (define (win32-marshal? a) (clr-is System.IO.Pipes.Win32Marshal a)))
