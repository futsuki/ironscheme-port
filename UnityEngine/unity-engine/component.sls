(library (unity-engine component)
  (export new
          is?
          component?
          get-components-in-children
          get-component-in-children
          send-message
          get-components-in-parent
          get-component
          compare-tag?
          get-component-in-parent
          get-components
          send-message-upwards
          broadcast-message
          transform
          game-object
          tag-get
          tag-set!
          tag-update!
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
        ((_ a ...) #'(clr-new UnityEngine.Component a ...)))))
  (define (is? a) (clr-is UnityEngine.Component a))
  (define (component? a) (clr-is UnityEngine.Component a))
  (define-method-port
    get-components-in-children
    UnityEngine.Component
    GetComponentsInChildren
    (UnityEngine.Component[] System.Type System.Boolean)
    (UnityEngine.Component[] System.Type))
  (define-method-port
    get-component-in-children
    UnityEngine.Component
    GetComponentInChildren
    (UnityEngine.Component System.Type))
  (define-method-port
    send-message
    UnityEngine.Component
    SendMessage
    (System.Void System.String UnityEngine.SendMessageOptions)
    (System.Void System.String)
    (System.Void System.String System.Object)
    (System.Void
      System.String
      System.Object
      UnityEngine.SendMessageOptions))
  (define-method-port
    get-components-in-parent
    UnityEngine.Component
    GetComponentsInParent
    (UnityEngine.Component[] System.Type System.Boolean)
    (UnityEngine.Component[] System.Type))
  (define-method-port
    get-component
    UnityEngine.Component
    GetComponent
    (UnityEngine.Component System.String)
    (UnityEngine.Component System.Type))
  (define-method-port
    compare-tag?
    UnityEngine.Component
    CompareTag
    (System.Boolean System.String))
  (define-method-port
    get-component-in-parent
    UnityEngine.Component
    GetComponentInParent
    (UnityEngine.Component System.Type))
  (define-method-port
    get-components
    UnityEngine.Component
    GetComponents
    (UnityEngine.Component[] System.Type))
  (define-method-port
    send-message-upwards
    UnityEngine.Component
    SendMessageUpwards
    (System.Void System.String UnityEngine.SendMessageOptions)
    (System.Void System.String)
    (System.Void System.String System.Object)
    (System.Void
      System.String
      System.Object
      UnityEngine.SendMessageOptions))
  (define-method-port
    broadcast-message
    UnityEngine.Component
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
    UnityEngine.Component
    transform
    UnityEngine.Transform)
  (define-field-port
    game-object
    #f
    #f
    (property:)
    UnityEngine.Component
    gameObject
    UnityEngine.GameObject)
  (define-field-port
    tag-get
    tag-set!
    tag-update!
    (property:)
    UnityEngine.Component
    tag
    System.String)
  (define-field-port
    rigidbody
    #f
    #f
    (property:)
    UnityEngine.Component
    rigidbody
    UnityEngine.Component)
  (define-field-port
    rigidbody2-d
    #f
    #f
    (property:)
    UnityEngine.Component
    rigidbody2D
    UnityEngine.Component)
  (define-field-port
    camera
    #f
    #f
    (property:)
    UnityEngine.Component
    camera
    UnityEngine.Component)
  (define-field-port
    light
    #f
    #f
    (property:)
    UnityEngine.Component
    light
    UnityEngine.Component)
  (define-field-port
    animation
    #f
    #f
    (property:)
    UnityEngine.Component
    animation
    UnityEngine.Component)
  (define-field-port
    constant-force
    #f
    #f
    (property:)
    UnityEngine.Component
    constantForce
    UnityEngine.Component)
  (define-field-port
    renderer
    #f
    #f
    (property:)
    UnityEngine.Component
    renderer
    UnityEngine.Component)
  (define-field-port
    audio
    #f
    #f
    (property:)
    UnityEngine.Component
    audio
    UnityEngine.Component)
  (define-field-port
    gui-text
    #f
    #f
    (property:)
    UnityEngine.Component
    guiText
    UnityEngine.Component)
  (define-field-port
    network-view
    #f
    #f
    (property:)
    UnityEngine.Component
    networkView
    UnityEngine.Component)
  (define-field-port
    gui-element
    #f
    #f
    (property:)
    UnityEngine.Component
    guiElement
    UnityEngine.Component)
  (define-field-port
    gui-texture
    #f
    #f
    (property:)
    UnityEngine.Component
    guiTexture
    UnityEngine.Component)
  (define-field-port
    collider
    #f
    #f
    (property:)
    UnityEngine.Component
    collider
    UnityEngine.Component)
  (define-field-port
    collider2-d
    #f
    #f
    (property:)
    UnityEngine.Component
    collider2D
    UnityEngine.Component)
  (define-field-port
    hinge-joint
    #f
    #f
    (property:)
    UnityEngine.Component
    hingeJoint
    UnityEngine.Component)
  (define-field-port
    particle-emitter
    #f
    #f
    (property:)
    UnityEngine.Component
    particleEmitter
    UnityEngine.Component)
  (define-field-port
    particle-system
    #f
    #f
    (property:)
    UnityEngine.Component
    particleSystem
    UnityEngine.Component))
