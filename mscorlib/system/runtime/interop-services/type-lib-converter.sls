(library (system runtime interop-services type-lib-converter)
  (export new
          is?
          type-lib-converter?
          get-primary-interop-assembly?
          convert-type-lib-to-assembly
          convert-assembly-to-type-lib)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.TypeLibConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.TypeLibConverter a))
  (define (type-lib-converter? a)
    (clr-is System.Runtime.InteropServices.TypeLibConverter a))
  (define-method-port
    get-primary-interop-assembly?
    System.Runtime.InteropServices.TypeLibConverter
    GetPrimaryInteropAssembly
    (System.Boolean
      System.Guid
      System.Int32
      System.Int32
      System.Int32
      System.String&
      System.String&))
  (define-method-port
    convert-type-lib-to-assembly
    System.Runtime.InteropServices.TypeLibConverter
    ConvertTypeLibToAssembly
    (System.Reflection.Emit.AssemblyBuilder
      System.Object
      System.String
      System.Runtime.InteropServices.TypeLibImporterFlags
      System.Runtime.InteropServices.ITypeLibImporterNotifySink
      System.Byte[]
      System.Reflection.StrongNameKeyPair
      System.String
      System.Version)
    (System.Reflection.Emit.AssemblyBuilder
      System.Object
      System.String
      System.Int32
      System.Runtime.InteropServices.ITypeLibImporterNotifySink
      System.Byte[]
      System.Reflection.StrongNameKeyPair
      System.Boolean))
  (define-method-port
    convert-assembly-to-type-lib
    System.Runtime.InteropServices.TypeLibConverter
    ConvertAssemblyToTypeLib
    (System.Object
      System.Reflection.Assembly
      System.String
      System.Runtime.InteropServices.TypeLibExporterFlags
      System.Runtime.InteropServices.ITypeLibExporterNotifySink)))
