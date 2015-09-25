(library (unity-engine nav-mesh-agent)
  (export new
          is?
          nav-mesh-agent?
          set-layer-cost
          move
          sample-path-position?
          warp?
          get-layer-cost
          resume
          calculate-path?
          set-path?
          set-destination?
          set-area-cost
          complete-off-mesh-link
          raycast?
          reset-path
          get-area-cost
          stop
          find-closest-edge?
          activate-current-off-mesh-link
          destination-get
          destination-set!
          destination-update!
          stopping-distance-get
          stopping-distance-set!
          stopping-distance-update!
          velocity-get
          velocity-set!
          velocity-update!
          next-position-get
          next-position-set!
          next-position-update!
          steering-target
          desired-velocity
          remaining-distance
          base-offset-get
          base-offset-set!
          base-offset-update!
          is-on-off-mesh-link?
          current-off-mesh-link-data
          next-off-mesh-link-data
          auto-traverse-off-mesh-link?-get
          auto-traverse-off-mesh-link?-set!
          auto-traverse-off-mesh-link?-update!
          auto-braking?-get
          auto-braking?-set!
          auto-braking?-update!
          auto-repath?-get
          auto-repath?-set!
          auto-repath?-update!
          has-path?
          path-pending?
          is-path-stale?
          path-status
          path-end-position
          path-get
          path-set!
          path-update!
          walkable-mask-get
          walkable-mask-set!
          walkable-mask-update!
          area-mask-get
          area-mask-set!
          area-mask-update!
          speed-get
          speed-set!
          speed-update!
          angular-speed-get
          angular-speed-set!
          angular-speed-update!
          acceleration-get
          acceleration-set!
          acceleration-update!
          update-position?-get
          update-position?-set!
          update-position?-update!
          update-rotation?-get
          update-rotation?-set!
          update-rotation?-update!
          radius-get
          radius-set!
          radius-update!
          height-get
          height-set!
          height-update!
          obstacle-avoidance-type-get
          obstacle-avoidance-type-set!
          obstacle-avoidance-type-update!
          avoidance-priority-get
          avoidance-priority-set!
          avoidance-priority-update!
          is-on-nav-mesh?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.NavMeshAgent a ...)))))
  (define (is? a) (clr-is UnityEngine.NavMeshAgent a))
  (define (nav-mesh-agent? a) (clr-is UnityEngine.NavMeshAgent a))
  (define-method-port
    set-layer-cost
    UnityEngine.NavMeshAgent
    SetLayerCost
    (System.Void System.Int32 System.Single))
  (define-method-port
    move
    UnityEngine.NavMeshAgent
    Move
    (System.Void UnityEngine.Vector3))
  (define-method-port
    sample-path-position?
    UnityEngine.NavMeshAgent
    SamplePathPosition
    (System.Boolean System.Int32 System.Single UnityEngine.NavMeshHit&))
  (define-method-port
    warp?
    UnityEngine.NavMeshAgent
    Warp
    (System.Boolean UnityEngine.Vector3))
  (define-method-port
    get-layer-cost
    UnityEngine.NavMeshAgent
    GetLayerCost
    (System.Single System.Int32))
  (define-method-port
    resume
    UnityEngine.NavMeshAgent
    Resume
    (System.Void))
  (define-method-port
    calculate-path?
    UnityEngine.NavMeshAgent
    CalculatePath
    (System.Boolean UnityEngine.Vector3 UnityEngine.NavMeshPath))
  (define-method-port
    set-path?
    UnityEngine.NavMeshAgent
    SetPath
    (System.Boolean UnityEngine.NavMeshPath))
  (define-method-port
    set-destination?
    UnityEngine.NavMeshAgent
    SetDestination
    (System.Boolean UnityEngine.Vector3))
  (define-method-port
    set-area-cost
    UnityEngine.NavMeshAgent
    SetAreaCost
    (System.Void System.Int32 System.Single))
  (define-method-port
    complete-off-mesh-link
    UnityEngine.NavMeshAgent
    CompleteOffMeshLink
    (System.Void))
  (define-method-port
    raycast?
    UnityEngine.NavMeshAgent
    Raycast
    (System.Boolean UnityEngine.Vector3 UnityEngine.NavMeshHit&))
  (define-method-port
    reset-path
    UnityEngine.NavMeshAgent
    ResetPath
    (System.Void))
  (define-method-port
    get-area-cost
    UnityEngine.NavMeshAgent
    GetAreaCost
    (System.Single System.Int32))
  (define-method-port
    stop
    UnityEngine.NavMeshAgent
    Stop
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    find-closest-edge?
    UnityEngine.NavMeshAgent
    FindClosestEdge
    (System.Boolean UnityEngine.NavMeshHit&))
  (define-method-port
    activate-current-off-mesh-link
    UnityEngine.NavMeshAgent
    ActivateCurrentOffMeshLink
    (System.Void System.Boolean))
  (define-field-port
    destination-get
    destination-set!
    destination-update!
    (property:)
    UnityEngine.NavMeshAgent
    destination
    UnityEngine.Vector3)
  (define-field-port
    stopping-distance-get
    stopping-distance-set!
    stopping-distance-update!
    (property:)
    UnityEngine.NavMeshAgent
    stoppingDistance
    System.Single)
  (define-field-port
    velocity-get
    velocity-set!
    velocity-update!
    (property:)
    UnityEngine.NavMeshAgent
    velocity
    UnityEngine.Vector3)
  (define-field-port
    next-position-get
    next-position-set!
    next-position-update!
    (property:)
    UnityEngine.NavMeshAgent
    nextPosition
    UnityEngine.Vector3)
  (define-field-port
    steering-target
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    steeringTarget
    UnityEngine.Vector3)
  (define-field-port
    desired-velocity
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    desiredVelocity
    UnityEngine.Vector3)
  (define-field-port
    remaining-distance
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    remainingDistance
    System.Single)
  (define-field-port
    base-offset-get
    base-offset-set!
    base-offset-update!
    (property:)
    UnityEngine.NavMeshAgent
    baseOffset
    System.Single)
  (define-field-port
    is-on-off-mesh-link?
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    isOnOffMeshLink
    System.Boolean)
  (define-field-port
    current-off-mesh-link-data
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    currentOffMeshLinkData
    UnityEngine.OffMeshLinkData)
  (define-field-port
    next-off-mesh-link-data
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    nextOffMeshLinkData
    UnityEngine.OffMeshLinkData)
  (define-field-port
    auto-traverse-off-mesh-link?-get
    auto-traverse-off-mesh-link?-set!
    auto-traverse-off-mesh-link?-update!
    (property:)
    UnityEngine.NavMeshAgent
    autoTraverseOffMeshLink
    System.Boolean)
  (define-field-port
    auto-braking?-get
    auto-braking?-set!
    auto-braking?-update!
    (property:)
    UnityEngine.NavMeshAgent
    autoBraking
    System.Boolean)
  (define-field-port
    auto-repath?-get
    auto-repath?-set!
    auto-repath?-update!
    (property:)
    UnityEngine.NavMeshAgent
    autoRepath
    System.Boolean)
  (define-field-port
    has-path?
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    hasPath
    System.Boolean)
  (define-field-port
    path-pending?
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    pathPending
    System.Boolean)
  (define-field-port
    is-path-stale?
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    isPathStale
    System.Boolean)
  (define-field-port
    path-status
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    pathStatus
    UnityEngine.NavMeshPathStatus)
  (define-field-port
    path-end-position
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    pathEndPosition
    UnityEngine.Vector3)
  (define-field-port
    path-get
    path-set!
    path-update!
    (property:)
    UnityEngine.NavMeshAgent
    path
    UnityEngine.NavMeshPath)
  (define-field-port
    walkable-mask-get
    walkable-mask-set!
    walkable-mask-update!
    (property:)
    UnityEngine.NavMeshAgent
    walkableMask
    System.Int32)
  (define-field-port
    area-mask-get
    area-mask-set!
    area-mask-update!
    (property:)
    UnityEngine.NavMeshAgent
    areaMask
    System.Int32)
  (define-field-port
    speed-get
    speed-set!
    speed-update!
    (property:)
    UnityEngine.NavMeshAgent
    speed
    System.Single)
  (define-field-port
    angular-speed-get
    angular-speed-set!
    angular-speed-update!
    (property:)
    UnityEngine.NavMeshAgent
    angularSpeed
    System.Single)
  (define-field-port
    acceleration-get
    acceleration-set!
    acceleration-update!
    (property:)
    UnityEngine.NavMeshAgent
    acceleration
    System.Single)
  (define-field-port
    update-position?-get
    update-position?-set!
    update-position?-update!
    (property:)
    UnityEngine.NavMeshAgent
    updatePosition
    System.Boolean)
  (define-field-port
    update-rotation?-get
    update-rotation?-set!
    update-rotation?-update!
    (property:)
    UnityEngine.NavMeshAgent
    updateRotation
    System.Boolean)
  (define-field-port
    radius-get
    radius-set!
    radius-update!
    (property:)
    UnityEngine.NavMeshAgent
    radius
    System.Single)
  (define-field-port
    height-get
    height-set!
    height-update!
    (property:)
    UnityEngine.NavMeshAgent
    height
    System.Single)
  (define-field-port
    obstacle-avoidance-type-get
    obstacle-avoidance-type-set!
    obstacle-avoidance-type-update!
    (property:)
    UnityEngine.NavMeshAgent
    obstacleAvoidanceType
    UnityEngine.ObstacleAvoidanceType)
  (define-field-port
    avoidance-priority-get
    avoidance-priority-set!
    avoidance-priority-update!
    (property:)
    UnityEngine.NavMeshAgent
    avoidancePriority
    System.Int32)
  (define-field-port
    is-on-nav-mesh?
    #f
    #f
    (property:)
    UnityEngine.NavMeshAgent
    isOnNavMesh
    System.Boolean))