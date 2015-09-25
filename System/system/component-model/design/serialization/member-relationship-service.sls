(library (system
          component-model
          design
          serialization
          member-relationship-service)
  (export is?
          member-relationship-service?
          supports-relationship?
          item-get
          item-set!
          item-update!
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.ComponentModel.Design.Serialization.MemberRelationshipService
      a))
  (define (member-relationship-service? a)
    (clr-is
      System.ComponentModel.Design.Serialization.MemberRelationshipService
      a))
  (define-method-port
    supports-relationship?
    System.ComponentModel.Design.Serialization.MemberRelationshipService
    SupportsRelationship
    (System.Boolean
      System.ComponentModel.Design.Serialization.MemberRelationship
      System.ComponentModel.Design.Serialization.MemberRelationship))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.ComponentModel.Design.Serialization.MemberRelationshipService
    Item
    System.ComponentModel.Design.Serialization.MemberRelationship)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.ComponentModel.Design.Serialization.MemberRelationshipService
    Item
    System.ComponentModel.Design.Serialization.MemberRelationship))
