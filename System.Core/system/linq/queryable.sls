(library (system linq queryable)
  (export is?
          queryable?
          reverse
          default-if-empty
          all?
          join
          any?
          select
          order-by
          single
          long-count
          select-many
          single-or-default
          union
          then-by
          first
          of-type
          count
          except
          first-or-default
          element-at-or-default
          last
          element-at
          as-queryable
          order-by-descending
          max
          average
          group-by
          contains?
          sequence-equal?
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
          then-by-descending
          take
          intersect
          where)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Queryable a))
  (define (queryable? a) (clr-is System.Linq.Queryable a))
  (define-method-port reverse System.Linq.Queryable Reverse)
  (define-method-port
    default-if-empty
    System.Linq.Queryable
    DefaultIfEmpty)
  (define-method-port all? System.Linq.Queryable All)
  (define-method-port join System.Linq.Queryable Join)
  (define-method-port any? System.Linq.Queryable Any)
  (define-method-port select System.Linq.Queryable Select)
  (define-method-port order-by System.Linq.Queryable OrderBy)
  (define-method-port single System.Linq.Queryable Single)
  (define-method-port long-count System.Linq.Queryable LongCount)
  (define-method-port select-many System.Linq.Queryable SelectMany)
  (define-method-port
    single-or-default
    System.Linq.Queryable
    SingleOrDefault)
  (define-method-port union System.Linq.Queryable Union)
  (define-method-port then-by System.Linq.Queryable ThenBy)
  (define-method-port first System.Linq.Queryable First)
  (define-method-port of-type System.Linq.Queryable OfType)
  (define-method-port count System.Linq.Queryable Count)
  (define-method-port except System.Linq.Queryable Except)
  (define-method-port
    first-or-default
    System.Linq.Queryable
    FirstOrDefault)
  (define-method-port
    element-at-or-default
    System.Linq.Queryable
    ElementAtOrDefault)
  (define-method-port last System.Linq.Queryable Last)
  (define-method-port element-at System.Linq.Queryable ElementAt)
  (define-method-port
    as-queryable
    System.Linq.Queryable
    AsQueryable
    (static: System.Linq.IQueryable System.Collections.IEnumerable))
  (define-method-port
    order-by-descending
    System.Linq.Queryable
    OrderByDescending)
  (define-method-port max System.Linq.Queryable Max)
  (define-method-port average System.Linq.Queryable Average)
  (define-method-port group-by System.Linq.Queryable GroupBy)
  (define-method-port contains? System.Linq.Queryable Contains)
  (define-method-port
    sequence-equal?
    System.Linq.Queryable
    SequenceEqual)
  (define-method-port distinct System.Linq.Queryable Distinct)
  (define-method-port group-join System.Linq.Queryable GroupJoin)
  (define-method-port concat System.Linq.Queryable Concat)
  (define-method-port skip System.Linq.Queryable Skip)
  (define-method-port skip-while System.Linq.Queryable SkipWhile)
  (define-method-port min System.Linq.Queryable Min)
  (define-method-port aggregate System.Linq.Queryable Aggregate)
  (define-method-port cast System.Linq.Queryable Cast)
  (define-method-port sum System.Linq.Queryable Sum)
  (define-method-port take-while System.Linq.Queryable TakeWhile)
  (define-method-port
    last-or-default
    System.Linq.Queryable
    LastOrDefault)
  (define-method-port
    then-by-descending
    System.Linq.Queryable
    ThenByDescending)
  (define-method-port take System.Linq.Queryable Take)
  (define-method-port intersect System.Linq.Queryable Intersect)
  (define-method-port where System.Linq.Queryable Where))
