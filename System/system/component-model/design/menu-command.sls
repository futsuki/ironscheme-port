(library (system component-model design menu-command)
  (export new
          is?
          menu-command?
          invoke
          to-string
          checked?-get
          checked?-set!
          checked?-update!
          command-id
          enabled?-get
          enabled?-set!
          enabled?-update!
          ole-status
          properties
          supported?-get
          supported?-set!
          supported?-update!
          visible?-get
          visible?-set!
          visible?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.Design.MenuCommand a ...)))))
  (define (is? a) (clr-is System.ComponentModel.Design.MenuCommand a))
  (define (menu-command? a)
    (clr-is System.ComponentModel.Design.MenuCommand a))
  (define-method-port
    invoke
    System.ComponentModel.Design.MenuCommand
    Invoke
    (System.Void System.Object)
    (System.Void))
  (define-method-port
    to-string
    System.ComponentModel.Design.MenuCommand
    ToString
    (System.String))
  (define-field-port
    checked?-get
    checked?-set!
    checked?-update!
    (property:)
    System.ComponentModel.Design.MenuCommand
    Checked
    System.Boolean)
  (define-field-port
    command-id
    #f
    #f
    (property:)
    System.ComponentModel.Design.MenuCommand
    CommandID
    System.ComponentModel.Design.CommandID)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.ComponentModel.Design.MenuCommand
    Enabled
    System.Boolean)
  (define-field-port
    ole-status
    #f
    #f
    (property:)
    System.ComponentModel.Design.MenuCommand
    OleStatus
    System.Int32)
  (define-field-port
    properties
    #f
    #f
    (property:)
    System.ComponentModel.Design.MenuCommand
    Properties
    System.Collections.IDictionary)
  (define-field-port
    supported?-get
    supported?-set!
    supported?-update!
    (property:)
    System.ComponentModel.Design.MenuCommand
    Supported
    System.Boolean)
  (define-field-port
    visible?-get
    visible?-set!
    visible?-update!
    (property:)
    System.ComponentModel.Design.MenuCommand
    Visible
    System.Boolean))
