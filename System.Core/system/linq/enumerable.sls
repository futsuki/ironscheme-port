(library (system linq enumerable)
  (export is?
          enumerable?
          reverse
          default-if-empty
          all?
          then-by
          any?
          select
          order-by
          single
          long-count
          select-many
          single-or-default
          union
          sequence-equal?
          repeat
          range
          as-enumerable
          first
          of-type
          count
          except
          first-or-default
          element-at-or-default
          last
          element-at
          join
          order-by-descending
          max
          average
          group-by
          contains?
          to-lookup
          to-list
          distinct
          group-join
          concat
          skip
          skip-while
          min
          aggregate
          cast
          sum
          take-while
          last-or-default
          empty
          then-by-descending
          take
          intersect
          to-array
          to-dictionary
          where)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Enumerable a))
  (define (enumerable? a) (clr-is System.Linq.Enumerable a))
  (define-method-port reverse System.Linq.Enumerable Reverse)
  (define-method-port
    default-if-empty
    System.Linq.Enumerable
    DefaultIfEmpty)
  (define-method-port all? System.Linq.Enumerable All)
  (define-method-port then-by System.Linq.Enumerable ThenBy)
  (define-method-port any? System.Linq.Enumerable Any)
  (define-method-port select System.Linq.Enumerable Select)
  (define-method-port order-by System.Linq.Enumerable OrderBy)
  (define-method-port single System.Linq.Enumerable Single)
  (define-method-port long-count System.Linq.Enumerable LongCount)
  (define-method-port select-many System.Linq.Enumerable SelectMany)
  (define-method-port
    single-or-default
    System.Linq.Enumerable
    SingleOrDefault)
  (define-method-port union System.Linq.Enumerable Union)
  (define-method-port
    sequence-equal?
    System.Linq.Enumerable
    SequenceEqual)
  (define-method-port repeat System.Linq.Enumerable Repeat)
  (define-method-port
    range
    System.Linq.Enumerable
    Range
    (static:
      "System.Collections.Generic.IEnumerable`1[[System.Int32, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
      System.Int32
      System.Int32))
  (define-method-port as-enumerable System.Linq.Enumerable AsEnumerable)
  (define-method-port first System.Linq.Enumerable First)
  (define-method-port of-type System.Linq.Enumerable OfType)
  (define-method-port count System.Linq.Enumerable Count)
  (define-method-port except System.Linq.Enumerable Except)
  (define-method-port
    first-or-default
    System.Linq.Enumerable
    FirstOrDefault)
  (define-method-port
    element-at-or-default
    System.Linq.Enumerable
    ElementAtOrDefault)
  (define-method-port last System.Linq.Enumerable Last)
  (define-method-port element-at System.Linq.Enumerable ElementAt)
  (define-method-port join System.Linq.Enumerable Join)
  (define-method-port
    order-by-descending
    System.Linq.Enumerable
    OrderByDescending)
  (define-method-port max System.Linq.Enumerable Max)
  (define-method-port average System.Linq.Enumerable Average)
  (define-method-port group-by System.Linq.Enumerable GroupBy)
  (define-method-port contains? System.Linq.Enumerable Contains)
  (define-method-port to-lookup System.Linq.Enumerable ToLookup)
  (define-method-port to-list System.Linq.Enumerable ToList)
  (define-method-port distinct System.Linq.Enumerable Distinct)
  (define-method-port group-join System.Linq.Enumerable GroupJoin)
  (define-method-port concat System.Linq.Enumerable Concat)
  (define-method-port skip System.Linq.Enumerable Skip)
  (define-method-port skip-while System.Linq.Enumerable SkipWhile)
  (define-method-port min System.Linq.Enumerable Min)
  (define-method-port aggregate System.Linq.Enumerable Aggregate)
  (define-method-port cast System.Linq.Enumerable Cast)
  (define-method-port sum System.Linq.Enumerable Sum)
  (define-method-port take-while System.Linq.Enumerable TakeWhile)
  (define-method-port
    last-or-default
    System.Linq.Enumerable
    LastOrDefault)
  (define-method-port empty System.Linq.Enumerable Empty)
  (define-method-port
    then-by-descending
    System.Linq.Enumerable
    ThenByDescending)
  (define-method-port take System.Linq.Enumerable Take)
  (define-method-port intersect System.Linq.Enumerable Intersect)
  (define-method-port to-array System.Linq.Enumerable ToArray)
  (define-method-port to-dictionary System.Linq.Enumerable ToDictionary)
  (define-method-port where System.Linq.Enumerable Where))
