(library (unity-engine particle-physics-extensions)
  (export is?
          particle-physics-extensions?
          get-collision-events
          get-safe-collision-event-size)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.ParticlePhysicsExtensions a))
  (define (particle-physics-extensions? a)
    (clr-is UnityEngine.ParticlePhysicsExtensions a))
  (define-method-port
    get-collision-events
    UnityEngine.ParticlePhysicsExtensions
    GetCollisionEvents
    (static:
      System.Int32
      UnityEngine.ParticleSystem
      UnityEngine.GameObject
      UnityEngine.ParticleCollisionEvent[]))
  (define-method-port
    get-safe-collision-event-size
    UnityEngine.ParticlePhysicsExtensions
    GetSafeCollisionEventSize
    (static: System.Int32 UnityEngine.ParticleSystem)))
