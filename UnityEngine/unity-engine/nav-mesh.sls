(library (unity-engine nav-mesh)
  (export new
          is?
          nav-mesh?
          sample-position?
          add-off-mesh-links
          triangulate
          calculate-triangulation
          set-layer-cost
          restore-nav-mesh
          get-layer-cost
          calculate-path?
          set-area-cost
          get-nav-mesh-layer-from-name
          raycast?
          get-area-cost
          find-closest-edge?
          get-area-from-name
          all-areas
          avoidance-prediction-time-get
          avoidance-prediction-time-set!
          avoidance-prediction-time-update!
          pathfinding-iterations-per-frame-get
          pathfinding-iterations-per-frame-set!
          pathfinding-iterations-per-frame-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.NavMesh a ...)))))
  (define (is? a) (clr-is UnityEngine.NavMesh a))
  (define (nav-mesh? a) (clr-is UnityEngine.NavMesh a))
  (define-method-port
    sample-position?
    UnityEngine.NavMesh
    SamplePosition
    (static:
      System.Boolean
      UnityEngine.Vector3
      UnityEngine.NavMeshHit&
      System.Single
      System.Int32))
  (define-method-port
    add-off-mesh-links
    UnityEngine.NavMesh
    AddOffMeshLinks
    (static: System.Void))
  (define-method-port
    triangulate
    UnityEngine.NavMesh
    Triangulate
    (static: System.Void UnityEngine.Vector3[]& System.Int32[]&))
  (define-method-port
    calculate-triangulation
    UnityEngine.NavMesh
    CalculateTriangulation
    (static: UnityEngine.NavMeshTriangulation))
  (define-method-port
    set-layer-cost
    UnityEngine.NavMesh
    SetLayerCost
    (static: System.Void System.Int32 System.Single))
  (define-method-port
    restore-nav-mesh
    UnityEngine.NavMesh
    RestoreNavMesh
    (static: System.Void))
  (define-method-port
    get-layer-cost
    UnityEngine.NavMesh
    GetLayerCost
    (static: System.Single System.Int32))
  (define-method-port
    calculate-path?
    UnityEngine.NavMesh
    CalculatePath
    (static:
      System.Boolean
      UnityEngine.Vector3
      UnityEngine.Vector3
      System.Int32
      UnityEngine.NavMeshPath))
  (define-method-port
    set-area-cost
    UnityEngine.NavMesh
    SetAreaCost
    (static: System.Void System.Int32 System.Single))
  (define-method-port
    get-nav-mesh-layer-from-name
    UnityEngine.NavMesh
    GetNavMeshLayerFromName
    (static: System.Int32 System.String))
  (define-method-port
    raycast?
    UnityEngine.NavMesh
    Raycast
    (static:
      System.Boolean
      UnityEngine.Vector3
      UnityEngine.Vector3
      UnityEngine.NavMeshHit&
      System.Int32))
  (define-method-port
    get-area-cost
    UnityEngine.NavMesh
    GetAreaCost
    (static: System.Single System.Int32))
  (define-method-port
    find-closest-edge?
    UnityEngine.NavMesh
    FindClosestEdge
    (static:
      System.Boolean
      UnityEngine.Vector3
      UnityEngine.NavMeshHit&
      System.Int32))
  (define-method-port
    get-area-from-name
    UnityEngine.NavMesh
    GetAreaFromName
    (static: System.Int32 System.String))
  (define-field-port
    all-areas
    #f
    #f
    (static:)
    UnityEngine.NavMesh
    AllAreas
    System.Int32)
  (define-field-port
    avoidance-prediction-time-get
    avoidance-prediction-time-set!
    avoidance-prediction-time-update!
    (static: property:)
    UnityEngine.NavMesh
    avoidancePredictionTime
    System.Single)
  (define-field-port
    pathfinding-iterations-per-frame-get
    pathfinding-iterations-per-frame-set!
    pathfinding-iterations-per-frame-update!
    (static: property:)
    UnityEngine.NavMesh
    pathfindingIterationsPerFrame
    System.Int32))
