(library (unity-engine networking network-transform)
  (export new
          is?
          network-transform?
          serialize-rotation3-d
          unserialize-rotation2-d
          handle-transform
          serialize-spin2-d
          serialize-velocity2-d
          unserialize-velocity3-d
          unserialize-spin3-d
          on-deserialize
          get-network-channel
          on-serialize?
          serialize-rotation2-d
          unserialize-rotation3-d
          serialize-spin3-d
          get-network-send-interval
          serialize-velocity3-d
          unserialize-velocity2-d
          unserialize-spin2-d
          transform-sync-mode-get
          transform-sync-mode-set!
          transform-sync-mode-update!
          send-interval-get
          send-interval-set!
          send-interval-update!
          sync-rotation-axis-get
          sync-rotation-axis-set!
          sync-rotation-axis-update!
          rotation-sync-compression-get
          rotation-sync-compression-set!
          rotation-sync-compression-update!
          sync-spin?-get
          sync-spin?-set!
          sync-spin?-update!
          movement-theshold-get
          movement-theshold-set!
          movement-theshold-update!
          snap-threshold-get
          snap-threshold-set!
          snap-threshold-update!
          interpolate-rotation-get
          interpolate-rotation-set!
          interpolate-rotation-update!
          interpolate-movement-get
          interpolate-movement-set!
          interpolate-movement-update!
          character-contoller
          rigidbody3-d
          rigidbody2-d
          last-sync-time
          target-sync-position
          target-sync-velocity
          target-sync-rotation3-d
          target-sync-rotation2-d
          grounded?-get
          grounded?-set!
          grounded?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkTransform a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkTransform a))
  (define (network-transform? a)
    (clr-is UnityEngine.Networking.NetworkTransform a))
  (define-method-port
    serialize-rotation3-d
    UnityEngine.Networking.NetworkTransform
    SerializeRotation3D
    (static:
      System.Void
      UnityEngine.Networking.NetworkWriter
      UnityEngine.Quaternion
      UnityEngine.Networking.NetworkTransform+AxisSyncMode
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-method-port
    unserialize-rotation2-d
    UnityEngine.Networking.NetworkTransform
    UnserializeRotation2D
    (static:
      System.Single
      UnityEngine.Networking.NetworkReader
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-method-port
    handle-transform
    UnityEngine.Networking.NetworkTransform
    HandleTransform
    (static: System.Void UnityEngine.Networking.NetworkMessage))
  (define-method-port
    serialize-spin2-d
    UnityEngine.Networking.NetworkTransform
    SerializeSpin2D
    (static:
      System.Void
      UnityEngine.Networking.NetworkWriter
      System.Single
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-method-port
    serialize-velocity2-d
    UnityEngine.Networking.NetworkTransform
    SerializeVelocity2D
    (static:
      System.Void
      UnityEngine.Networking.NetworkWriter
      UnityEngine.Vector2
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-method-port
    unserialize-velocity3-d
    UnityEngine.Networking.NetworkTransform
    UnserializeVelocity3D
    (static:
      UnityEngine.Vector3
      UnityEngine.Networking.NetworkReader
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-method-port
    unserialize-spin3-d
    UnityEngine.Networking.NetworkTransform
    UnserializeSpin3D
    (static:
      UnityEngine.Vector3
      UnityEngine.Networking.NetworkReader
      UnityEngine.Networking.NetworkTransform+AxisSyncMode
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-method-port
    on-deserialize
    UnityEngine.Networking.NetworkTransform
    OnDeserialize
    (System.Void UnityEngine.Networking.NetworkReader System.Boolean))
  (define-method-port
    get-network-channel
    UnityEngine.Networking.NetworkTransform
    GetNetworkChannel
    (System.Int32))
  (define-method-port
    on-serialize?
    UnityEngine.Networking.NetworkTransform
    OnSerialize
    (System.Boolean
      UnityEngine.Networking.NetworkWriter
      System.Boolean))
  (define-method-port
    serialize-rotation2-d
    UnityEngine.Networking.NetworkTransform
    SerializeRotation2D
    (static:
      System.Void
      UnityEngine.Networking.NetworkWriter
      System.Single
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-method-port
    unserialize-rotation3-d
    UnityEngine.Networking.NetworkTransform
    UnserializeRotation3D
    (static:
      UnityEngine.Quaternion
      UnityEngine.Networking.NetworkReader
      UnityEngine.Networking.NetworkTransform+AxisSyncMode
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-method-port
    serialize-spin3-d
    UnityEngine.Networking.NetworkTransform
    SerializeSpin3D
    (static:
      System.Void
      UnityEngine.Networking.NetworkWriter
      UnityEngine.Vector3
      UnityEngine.Networking.NetworkTransform+AxisSyncMode
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-method-port
    get-network-send-interval
    UnityEngine.Networking.NetworkTransform
    GetNetworkSendInterval
    (System.Single))
  (define-method-port
    serialize-velocity3-d
    UnityEngine.Networking.NetworkTransform
    SerializeVelocity3D
    (static:
      System.Void
      UnityEngine.Networking.NetworkWriter
      UnityEngine.Vector3
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-method-port
    unserialize-velocity2-d
    UnityEngine.Networking.NetworkTransform
    UnserializeVelocity2D
    (static:
      UnityEngine.Vector3
      UnityEngine.Networking.NetworkReader
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-method-port
    unserialize-spin2-d
    UnityEngine.Networking.NetworkTransform
    UnserializeSpin2D
    (static:
      System.Single
      UnityEngine.Networking.NetworkReader
      UnityEngine.Networking.NetworkTransform+CompressionSyncMode))
  (define-field-port
    transform-sync-mode-get
    transform-sync-mode-set!
    transform-sync-mode-update!
    (property:)
    UnityEngine.Networking.NetworkTransform
    transformSyncMode
    UnityEngine.Networking.NetworkTransform+TransformSyncMode)
  (define-field-port
    send-interval-get
    send-interval-set!
    send-interval-update!
    (property:)
    UnityEngine.Networking.NetworkTransform
    sendInterval
    System.Single)
  (define-field-port
    sync-rotation-axis-get
    sync-rotation-axis-set!
    sync-rotation-axis-update!
    (property:)
    UnityEngine.Networking.NetworkTransform
    syncRotationAxis
    UnityEngine.Networking.NetworkTransform+AxisSyncMode)
  (define-field-port
    rotation-sync-compression-get
    rotation-sync-compression-set!
    rotation-sync-compression-update!
    (property:)
    UnityEngine.Networking.NetworkTransform
    rotationSyncCompression
    UnityEngine.Networking.NetworkTransform+CompressionSyncMode)
  (define-field-port
    sync-spin?-get
    sync-spin?-set!
    sync-spin?-update!
    (property:)
    UnityEngine.Networking.NetworkTransform
    syncSpin
    System.Boolean)
  (define-field-port
    movement-theshold-get
    movement-theshold-set!
    movement-theshold-update!
    (property:)
    UnityEngine.Networking.NetworkTransform
    movementTheshold
    System.Single)
  (define-field-port
    snap-threshold-get
    snap-threshold-set!
    snap-threshold-update!
    (property:)
    UnityEngine.Networking.NetworkTransform
    snapThreshold
    System.Single)
  (define-field-port
    interpolate-rotation-get
    interpolate-rotation-set!
    interpolate-rotation-update!
    (property:)
    UnityEngine.Networking.NetworkTransform
    interpolateRotation
    System.Single)
  (define-field-port
    interpolate-movement-get
    interpolate-movement-set!
    interpolate-movement-update!
    (property:)
    UnityEngine.Networking.NetworkTransform
    interpolateMovement
    System.Single)
  (define-field-port
    character-contoller
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkTransform
    characterContoller
    UnityEngine.CharacterController)
  (define-field-port
    rigidbody3-d
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkTransform
    rigidbody3D
    UnityEngine.Rigidbody)
  (define-field-port
    rigidbody2-d
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkTransform
    rigidbody2D
    UnityEngine.Rigidbody2D)
  (define-field-port
    last-sync-time
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkTransform
    lastSyncTime
    System.Single)
  (define-field-port
    target-sync-position
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkTransform
    targetSyncPosition
    UnityEngine.Vector3)
  (define-field-port
    target-sync-velocity
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkTransform
    targetSyncVelocity
    UnityEngine.Vector3)
  (define-field-port
    target-sync-rotation3-d
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkTransform
    targetSyncRotation3D
    UnityEngine.Quaternion)
  (define-field-port
    target-sync-rotation2-d
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkTransform
    targetSyncRotation2D
    System.Single)
  (define-field-port
    grounded?-get
    grounded?-set!
    grounded?-update!
    (property:)
    UnityEngine.Networking.NetworkTransform
    grounded
    System.Boolean))