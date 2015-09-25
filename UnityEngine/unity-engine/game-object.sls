(library (unity-engine game-object)
  (export new
          is?
          game-object?
          create-primitive
          find
          get-components-in-children
          get-component-in-children
          set-active-recursively
          send-message
          find-game-objects-with-tag
          stop-animation
          get-components-in-parent
          get-component
          compare-tag?
          find-game-object-with-tag
          add-component
          sample-animation
          get-component-in-parent
          play-animation
          get-components
          send-message-upwards
          set-active
          find-with-tag
          broadcast-message
          transform
          layer-get
          layer-set!
          layer-update!
          active?-get
          active?-set!
          active?-update!
          active-self?
          active-in-hierarchy?
          is-static?-get
          is-static?-set!
          is-static?-update!
          tag-get
          tag-set!
          tag-update!
          game-object
          rigidbody
          rigidbody2-d
          camera
          light
          animation
          constant-force
          renderer
          audio
          gui-text
          network-view
          gui-element
          gui-texture
          collider
          collider2-d
          hinge-joint
          particle-emitter
          particle-system)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GameObject a ...)))))
  (define (is? a) (clr-is UnityEngine.GameObject a))
  (define (game-object? a) (clr-is UnityEngine.GameObject a))
  (define-method-port
    create-primitive
    UnityEngine.GameObject
    CreatePrimitive
    (static: UnityEngine.GameObject UnityEngine.PrimitiveType))
  (define-method-port
    find
    UnityEngine.GameObject
    Find
    (static: UnityEngine.GameObject System.String))
  (define-method-port
    get-components-in-children
    UnityEngine.GameObject
    GetComponentsInChildren
    (UnityEngine.Component[] System.Type System.Boolean)
    (UnityEngine.Component[] System.Type))
  (define-method-port
    get-component-in-children
    UnityEngine.GameObject
    GetComponentInChildren
    (UnityEngine.Component System.Type))
  (define-method-port
    set-active-recursively
    UnityEngine.GameObject
    SetActiveRecursively
    (System.Void System.Boolean))
  (define-method-port
    send-message
    UnityEngine.GameObject
    SendMessage
    (System.Void System.String UnityEngine.SendMessageOptions)
    (System.Void System.String)
    (System.Void System.String System.Object)
    (System.Void
      System.String
      System.Object
      UnityEngine.SendMessageOptions))
  (define-method-port
    find-game-objects-with-tag
    UnityEngine.GameObject
    FindGameObjectsWithTag
    (static: UnityEngine.GameObject[] System.String))
  (define-method-port
    stop-animation
    UnityEngine.GameObject
    StopAnimation
    (System.Void))
  (define-method-port
    get-components-in-parent
    UnityEngine.GameObject
    GetComponentsInParent
    (UnityEngine.Component[] System.Type System.Boolean)
    (UnityEngine.Component[] System.Type))
  (define-method-port
    get-component
    UnityEngine.GameObject
    GetComponent
    (UnityEngine.Component System.String)
    (UnityEngine.Component System.Type))
  (define-method-port
    compare-tag?
    UnityEngine.GameObject
    CompareTag
    (System.Boolean System.String))
  (define-method-port
    find-game-object-with-tag
    UnityEngine.GameObject
    FindGameObjectWithTag
    (static: UnityEngine.GameObject System.String))
  (define-method-port
    add-component
    UnityEngine.GameObject
    AddComponent
    (UnityEngine.Component System.String)
    (UnityEngine.Component System.Type))
  (define-method-port
    sample-animation
    UnityEngine.GameObject
    SampleAnimation
    (System.Void UnityEngine.Object System.Single))
  (define-method-port
    get-component-in-parent
    UnityEngine.GameObject
    GetComponentInParent
    (UnityEngine.Component System.Type))
  (define-method-port
    play-animation
    UnityEngine.GameObject
    PlayAnimation
    (System.Void UnityEngine.Object))
  (define-method-port
    get-components
    UnityEngine.GameObject
    GetComponents
    (UnityEngine.Component[] System.Type))
  (define-method-port
    send-message-upwards
    UnityEngine.GameObject
    SendMessageUpwards
    (System.Void System.String UnityEngine.SendMessageOptions)
    (System.Void System.String)
    (System.Void System.String System.Object)
    (System.Void
      System.String
      System.Object
      UnityEngine.SendMessageOptions))
  (define-method-port
    set-active
    UnityEngine.GameObject
    SetActive
    (System.Void System.Boolean))
  (define-method-port
    find-with-tag
    UnityEngine.GameObject
    FindWithTag
    (static: UnityEngine.GameObject System.String))
  (define-method-port
    broadcast-message
    UnityEngine.GameObject
    BroadcastMessage
    (System.Void System.String UnityEngine.SendMessageOptions)
    (System.Void System.String)
    (System.Void System.String System.Object)
    (System.Void
      System.String
      System.Object
      UnityEngine.SendMessageOptions))
  (define-field-port
    transform
    #f
    #f
    (property:)
    UnityEngine.GameObject
    transform
    UnityEngine.Transform)
  (define-field-port
    layer-get
    layer-set!
    layer-update!
    (property:)
    UnityEngine.GameObject
    layer
    System.Int32)
  (define-field-port
    active?-get
    active?-set!
    active?-update!
    (property:)
    UnityEngine.GameObject
    active
    System.Boolean)
  (define-field-port
    active-self?
    #f
    #f
    (property:)
    UnityEngine.GameObject
    activeSelf
    System.Boolean)
  (define-field-port
    active-in-hierarchy?
    #f
    #f
    (property:)
    UnityEngine.GameObject
    activeInHierarchy
    System.Boolean)
  (define-field-port
    is-static?-get
    is-static?-set!
    is-static?-update!
    (property:)
    UnityEngine.GameObject
    isStatic
    System.Boolean)
  (define-field-port
    tag-get
    tag-set!
    tag-update!
    (property:)
    UnityEngine.GameObject
    tag
    System.String)
  (define-field-port
    game-object
    #f
    #f
    (property:)
    UnityEngine.GameObject
    gameObject
    UnityEngine.GameObject)
  (define-field-port
    rigidbody
    #f
    #f
    (property:)
    UnityEngine.GameObject
    rigidbody
    UnityEngine.Component)
  (define-field-port
    rigidbody2-d
    #f
    #f
    (property:)
    UnityEngine.GameObject
    rigidbody2D
    UnityEngine.Component)
  (define-field-port
    camera
    #f
    #f
    (property:)
    UnityEngine.GameObject
    camera
    UnityEngine.Component)
  (define-field-port
    light
    #f
    #f
    (property:)
    UnityEngine.GameObject
    light
    UnityEngine.Component)
  (define-field-port
    animation
    #f
    #f
    (property:)
    UnityEngine.GameObject
    animation
    UnityEngine.Component)
  (define-field-port
    constant-force
    #f
    #f
    (property:)
    UnityEngine.GameObject
    constantForce
    UnityEngine.Component)
  (define-field-port
    renderer
    #f
    #f
    (property:)
    UnityEngine.GameObject
    renderer
    UnityEngine.Component)
  (define-field-port
    audio
    #f
    #f
    (property:)
    UnityEngine.GameObject
    audio
    UnityEngine.Component)
  (define-field-port
    gui-text
    #f
    #f
    (property:)
    UnityEngine.GameObject
    guiText
    UnityEngine.Component)
  (define-field-port
    network-view
    #f
    #f
    (property:)
    UnityEngine.GameObject
    networkView
    UnityEngine.Component)
  (define-field-port
    gui-element
    #f
    #f
    (property:)
    UnityEngine.GameObject
    guiElement
    UnityEngine.Component)
  (define-field-port
    gui-texture
    #f
    #f
    (property:)
    UnityEngine.GameObject
    guiTexture
    UnityEngine.Component)
  (define-field-port
    collider
    #f
    #f
    (property:)
    UnityEngine.GameObject
    collider
    UnityEngine.Component)
  (define-field-port
    collider2-d
    #f
    #f
    (property:)
    UnityEngine.GameObject
    collider2D
    UnityEngine.Component)
  (define-field-port
    hinge-joint
    #f
    #f
    (property:)
    UnityEngine.GameObject
    hingeJoint
    UnityEngine.Component)
  (define-field-port
    particle-emitter
    #f
    #f
    (property:)
    UnityEngine.GameObject
    particleEmitter
    UnityEngine.Component)
  (define-field-port
    particle-system
    #f
    #f
    (property:)
    UnityEngine.GameObject
    particleSystem
    UnityEngine.Component))
