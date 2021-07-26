# let
#   james = { surname = dad.surname; age = 26; };
#   dad   = { surname = "fisher";    age = james.age + 28; };
# in
#   { james = james; dad = dad; }
# 
# gots the same result as below with `rec { ... }`
let
in
  rec {
    james = { surname = dad.surname; age = 26; };
    dad   = { surname = "fisher";    age = james.age + 28; };
  }
