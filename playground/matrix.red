mequal?: function [
    m1 [matrix!]
    m2 [matrix!]
][
    ;; matrix equality
    ;; must have same layout
    equal? dim m1 dim m2


]


matrix.add: function [
    m1 [matrix!]
    m2 [matrix!]
][
    ;; matrix equality
    if not mequal? m1 m2 [return error!]   

    ;; ok so we're adding each element
    ;; probably where map-2 would work


]