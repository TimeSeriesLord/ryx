Red [] 

require: function [
    {Throws an error if any 'precondition' is violated,
    otherwise returns 'true'. Used for preconditions validation.
        ([[logic]] -+ logic)
    }
    ;; [throw]
    preconditions [block!]
][
    foreach p preconditions [
        if not (do p) [
            ;; throw make error! (join "Violated precondition " (mold p))
            make error! (join "Violated precondition " (mold p))
        ]
    ]
    result: true
    result
]