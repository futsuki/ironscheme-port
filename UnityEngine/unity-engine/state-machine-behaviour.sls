(library (unity-engine state-machine-behaviour)
  (export is?
          state-machine-behaviour?
          on-state-ik
          on-state-machine-exit
          on-state-move
          on-state-update
          on-state-machine-enter
          on-state-enter
          on-state-exit)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.StateMachineBehaviour a))
  (define (state-machine-behaviour? a)
    (clr-is UnityEngine.StateMachineBehaviour a))
  (define-method-port
    on-state-ik
    UnityEngine.StateMachineBehaviour
    OnStateIK
    (System.Void
      UnityEngine.Animator
      UnityEngine.AnimatorStateInfo
      System.Int32))
  (define-method-port
    on-state-machine-exit
    UnityEngine.StateMachineBehaviour
    OnStateMachineExit
    (System.Void UnityEngine.Animator System.Int32))
  (define-method-port
    on-state-move
    UnityEngine.StateMachineBehaviour
    OnStateMove
    (System.Void
      UnityEngine.Animator
      UnityEngine.AnimatorStateInfo
      System.Int32))
  (define-method-port
    on-state-update
    UnityEngine.StateMachineBehaviour
    OnStateUpdate
    (System.Void
      UnityEngine.Animator
      UnityEngine.AnimatorStateInfo
      System.Int32))
  (define-method-port
    on-state-machine-enter
    UnityEngine.StateMachineBehaviour
    OnStateMachineEnter
    (System.Void UnityEngine.Animator System.Int32))
  (define-method-port
    on-state-enter
    UnityEngine.StateMachineBehaviour
    OnStateEnter
    (System.Void
      UnityEngine.Animator
      UnityEngine.AnimatorStateInfo
      System.Int32))
  (define-method-port
    on-state-exit
    UnityEngine.StateMachineBehaviour
    OnStateExit
    (System.Void
      UnityEngine.Animator
      UnityEngine.AnimatorStateInfo
      System.Int32)))
