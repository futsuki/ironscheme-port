(library (unity-engine mono-behaviour)
  (export new
          is?
          mono-behaviour?
          invoke
          invoke-repeating
          is-invoking?
          start-coroutine
          print
          start-coroutine-auto
          cancel-invoke
          stop-all-coroutines
          stop-coroutine
          use-guilayout?-get
          use-guilayout?-set!
          use-guilayout?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.MonoBehaviour a ...)))))
  (define (is? a) (clr-is UnityEngine.MonoBehaviour a))
  (define (mono-behaviour? a) (clr-is UnityEngine.MonoBehaviour a))
  (define-method-port
    invoke
    UnityEngine.MonoBehaviour
    Invoke
    (System.Void System.String System.Single))
  (define-method-port
    invoke-repeating
    UnityEngine.MonoBehaviour
    InvokeRepeating
    (System.Void System.String System.Single System.Single))
  (define-method-port
    is-invoking?
    UnityEngine.MonoBehaviour
    IsInvoking
    (System.Boolean)
    (System.Boolean System.String))
  (define-method-port
    start-coroutine
    UnityEngine.MonoBehaviour
    StartCoroutine
    (UnityEngine.Coroutine System.String)
    (UnityEngine.Coroutine System.String System.Object)
    (UnityEngine.Coroutine System.Collections.IEnumerator))
  (define-method-port
    print
    UnityEngine.MonoBehaviour
    print
    (static: System.Void System.Object))
  (define-method-port
    start-coroutine-auto
    UnityEngine.MonoBehaviour
    StartCoroutine_Auto
    (UnityEngine.Coroutine System.Collections.IEnumerator))
  (define-method-port
    cancel-invoke
    UnityEngine.MonoBehaviour
    CancelInvoke
    (System.Void System.String)
    (System.Void))
  (define-method-port
    stop-all-coroutines
    UnityEngine.MonoBehaviour
    StopAllCoroutines
    (System.Void))
  (define-method-port
    stop-coroutine
    UnityEngine.MonoBehaviour
    StopCoroutine
    (System.Void UnityEngine.Coroutine)
    (System.Void System.Collections.IEnumerator)
    (System.Void System.String))
  (define-field-port
    use-guilayout?-get
    use-guilayout?-set!
    use-guilayout?-update!
    (property:)
    UnityEngine.MonoBehaviour
    useGUILayout
    System.Boolean))
