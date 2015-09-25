(library (unity-engine networking network-transform-visualizer)
  (export new
          is?
          network-transform-visualizer?
          on-start-client
          on-start-local-player
          m-visualizer-prefab-get
          m-visualizer-prefab-set!
          m-visualizer-prefab-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkTransformVisualizer
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkTransformVisualizer a))
  (define (network-transform-visualizer? a)
    (clr-is UnityEngine.Networking.NetworkTransformVisualizer a))
  (define-method-port
    on-start-client
    UnityEngine.Networking.NetworkTransformVisualizer
    OnStartClient
    (System.Void))
  (define-method-port
    on-start-local-player
    UnityEngine.Networking.NetworkTransformVisualizer
    OnStartLocalPlayer
    (System.Void))
  (define-field-port
    m-visualizer-prefab-get
    m-visualizer-prefab-set!
    m-visualizer-prefab-update!
    ()
    UnityEngine.Networking.NetworkTransformVisualizer
    m_VisualizerPrefab
    UnityEngine.GameObject))
