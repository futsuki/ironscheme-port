(library (mono globalization unicode mscompat-unicode-table-util)
  (export new
          is?
          mscompat-unicode-table-util?
          resource-version
          ignorable
          category
          level1
          level2
          level3
          cjk-chs
          cjk)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Globalization.Unicode.MSCompatUnicodeTableUtil
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Globalization.Unicode.MSCompatUnicodeTableUtil a))
  (define (mscompat-unicode-table-util? a)
    (clr-is Mono.Globalization.Unicode.MSCompatUnicodeTableUtil a))
  (define-field-port
    resource-version
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.MSCompatUnicodeTableUtil
    ResourceVersion
    System.Byte)
  (define-field-port
    ignorable
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.MSCompatUnicodeTableUtil
    Ignorable
    Mono.Globalization.Unicode.CodePointIndexer)
  (define-field-port
    category
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.MSCompatUnicodeTableUtil
    Category
    Mono.Globalization.Unicode.CodePointIndexer)
  (define-field-port
    level1
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.MSCompatUnicodeTableUtil
    Level1
    Mono.Globalization.Unicode.CodePointIndexer)
  (define-field-port
    level2
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.MSCompatUnicodeTableUtil
    Level2
    Mono.Globalization.Unicode.CodePointIndexer)
  (define-field-port
    level3
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.MSCompatUnicodeTableUtil
    Level3
    Mono.Globalization.Unicode.CodePointIndexer)
  (define-field-port
    cjk-chs
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.MSCompatUnicodeTableUtil
    CjkCHS
    Mono.Globalization.Unicode.CodePointIndexer)
  (define-field-port
    cjk
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.MSCompatUnicodeTableUtil
    Cjk
    Mono.Globalization.Unicode.CodePointIndexer))
