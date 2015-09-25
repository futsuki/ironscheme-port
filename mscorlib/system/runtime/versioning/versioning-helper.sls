(library (system runtime versioning versioning-helper)
  (export is? versioning-helper? make-version-safe-name)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Runtime.Versioning.VersioningHelper a))
  (define (versioning-helper? a)
    (clr-is System.Runtime.Versioning.VersioningHelper a))
  (define-method-port
    make-version-safe-name
    System.Runtime.Versioning.VersioningHelper
    MakeVersionSafeName
    (static:
      System.String
      System.String
      System.Runtime.Versioning.ResourceScope
      System.Runtime.Versioning.ResourceScope
      System.Type)
    (static:
      System.String
      System.String
      System.Runtime.Versioning.ResourceScope
      System.Runtime.Versioning.ResourceScope)))
