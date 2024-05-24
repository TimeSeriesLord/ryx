Red [

]

valid: function [
    {Returns true if data is in a valid format. Checks these: 
    telephone numbers, dates, temperatures, ordinals}
    data [string!]
][
    parse data [!telephone | !ordinal | !date | !temperature]
]