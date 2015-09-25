(library (unity-engine create-asset-menu-attribute)
  (export new
          is?
          create-asset-menu-attribute?
          menu-name-get
          menu-name-set!
          menu-name-update!
          file-name-get
          file-name-set!
          file-name-update!
          order-get
          order-set!
          order-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.CreateAssetMenuAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.CreateAssetMenuAttribute a))
  (define (create-asset-menu-attribute? a)
    (clr-is UnityEngine.CreateAssetMenuAttribute a))
  (define-field-port
    menu-name-get
    menu-name-set!
    menu-name-update!
    (property:)
    UnityEngine.CreateAssetMenuAttribute
    menuName
    System.String)
  (define-field-port
    file-name-get
    file-name-set!
    file-name-update!
    (property:)
    UnityEngine.CreateAssetMenuAttribute
    fileName
    System.String)
  (define-field-port
    order-get
    order-set!
    order-update!
    (property:)
    UnityEngine.CreateAssetMenuAttribute
    order
    System.Int32))
