(library (unity-engine terrain-collider)
  (export new
          is?
          terrain-collider?
          terrain-data-get
          terrain-data-set!
          terrain-data-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.TerrainCollider a ...)))))
  (define (is? a) (clr-is UnityEngine.TerrainCollider a))
  (define (terrain-collider? a) (clr-is UnityEngine.TerrainCollider a))
  (define-field-port
    terrain-data-get
    terrain-data-set!
    terrain-data-update!
    (property:)
    UnityEngine.TerrainCollider
    terrainData
    UnityEngine.TerrainData))
