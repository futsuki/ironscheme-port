(library (unity-engine particle-system-renderer)
  (export new
          is?
          particle-system-renderer?
          render-mode-get
          render-mode-set!
          render-mode-update!
          length-scale-get
          length-scale-set!
          length-scale-update!
          velocity-scale-get
          velocity-scale-set!
          velocity-scale-update!
          camera-velocity-scale-get
          camera-velocity-scale-set!
          camera-velocity-scale-update!
          max-particle-size-get
          max-particle-size-set!
          max-particle-size-update!
          mesh-get
          mesh-set!
          mesh-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.ParticleSystemRenderer a ...)))))
  (define (is? a) (clr-is UnityEngine.ParticleSystemRenderer a))
  (define (particle-system-renderer? a)
    (clr-is UnityEngine.ParticleSystemRenderer a))
  (define-field-port
    render-mode-get
    render-mode-set!
    render-mode-update!
    (property:)
    UnityEngine.ParticleSystemRenderer
    renderMode
    UnityEngine.ParticleSystemRenderMode)
  (define-field-port
    length-scale-get
    length-scale-set!
    length-scale-update!
    (property:)
    UnityEngine.ParticleSystemRenderer
    lengthScale
    System.Single)
  (define-field-port
    velocity-scale-get
    velocity-scale-set!
    velocity-scale-update!
    (property:)
    UnityEngine.ParticleSystemRenderer
    velocityScale
    System.Single)
  (define-field-port
    camera-velocity-scale-get
    camera-velocity-scale-set!
    camera-velocity-scale-update!
    (property:)
    UnityEngine.ParticleSystemRenderer
    cameraVelocityScale
    System.Single)
  (define-field-port
    max-particle-size-get
    max-particle-size-set!
    max-particle-size-update!
    (property:)
    UnityEngine.ParticleSystemRenderer
    maxParticleSize
    System.Single)
  (define-field-port
    mesh-get
    mesh-set!
    mesh-update!
    (property:)
    UnityEngine.ParticleSystemRenderer
    mesh
    UnityEngine.Mesh))
