(library (unity-engine billboard-asset)
  (export new
          is?
          billboard-asset?
          width-get
          width-set!
          width-update!
          height-get
          height-set!
          height-update!
          bottom-get
          bottom-set!
          bottom-update!
          image-count
          vertex-count
          index-count
          material-get
          material-set!
          material-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.BillboardAsset a ...)))))
  (define (is? a) (clr-is UnityEngine.BillboardAsset a))
  (define (billboard-asset? a) (clr-is UnityEngine.BillboardAsset a))
  (define-field-port
    width-get
    width-set!
    width-update!
    (property:)
    UnityEngine.BillboardAsset
    width
    System.Single)
  (define-field-port
    height-get
    height-set!
    height-update!
    (property:)
    UnityEngine.BillboardAsset
    height
    System.Single)
  (define-field-port
    bottom-get
    bottom-set!
    bottom-update!
    (property:)
    UnityEngine.BillboardAsset
    bottom
    System.Single)
  (define-field-port
    image-count
    #f
    #f
    (property:)
    UnityEngine.BillboardAsset
    imageCount
    System.Int32)
  (define-field-port
    vertex-count
    #f
    #f
    (property:)
    UnityEngine.BillboardAsset
    vertexCount
    System.Int32)
  (define-field-port
    index-count
    #f
    #f
    (property:)
    UnityEngine.BillboardAsset
    indexCount
    System.Int32)
  (define-field-port
    material-get
    material-set!
    material-update!
    (property:)
    UnityEngine.BillboardAsset
    material
    UnityEngine.Material))
