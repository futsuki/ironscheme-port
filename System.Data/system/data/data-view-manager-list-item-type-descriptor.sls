(library (system data data-view-manager-list-item-type-descriptor)
  (export is?
          data-view-manager-list-item-type-descriptor?
          get-properties)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Data.DataViewManagerListItemTypeDescriptor a))
  (define (data-view-manager-list-item-type-descriptor? a)
    (clr-is System.Data.DataViewManagerListItemTypeDescriptor a))
  (define-method-port
    get-properties
    System.Data.DataViewManagerListItemTypeDescriptor
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection)))
