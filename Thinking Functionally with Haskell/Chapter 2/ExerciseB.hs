-- Which of the following expressions is not syntactically correct?
--  [0, 1)
--  double -3
--  double (-3)
--  double double 0
--  if 1 == 0 then 2 == 1
--  "++" == "+" ++ "+"
--  [(+), (-)]
--  [[], [[]], [[[]]]]
--  concat ["tea", "for", '2']
--  concat ["tea", "for", "2"]
--
-- Answer:
--  [0, 1) = Not syntactially correct should be [0, 1] or (0, 1)
--  double -3 = Not syntactically correct, - is a function here.
--  double (-3) = Syntactically correct
--  double double 0 = The function double thinks it takes two arguments here.
--  if 1 == 0 then 2 == 1 = Missing else clause.
--  "++" == "+" ++ "+" = Syntactically correct.
--  [(+), (-)] = Here we have no way of showing the functions stored in the list.
--  [[], [[]], [[[]]]] = Syntactically correct.
--  concat ["tea", "for", '2'] = Not correct, combining Char with [Char]
--  concat ["tea", "for", "2"] = Syntactically correct.