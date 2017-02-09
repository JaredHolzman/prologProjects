color(red).
color(green).
color(blue).
%color(yellow).

neighbor(StateAColor, StateBColor) :- color(StateAColor), color(StateBColor), StateAColor \= StateBColor.

massachesetts(Berkshire, Franklin, Hampshire, Hampden, Worcester, Middlesex, Essex, Norfolk, Suffolk, Bristol, Plymouth, Barnstable, Dukes, Nantucket) :-

neighbor(Berkshire, Franklin), neighbor(Berkshire, Hampshire), neighbor(Berkshire, Hampden),
neighbor(Franklin, Hampshire), neighbor(Franklin, Worcester),
neighbor(Hampshire, Hampden), neighbor(Hampshire, Worcester),
neighbor(Hampden, Worcester),
neighbor(Worcester, Middlesex), neighbor(Worcester, Norfolk),
neighbor(Middlesex, Essex), neighbor(Middlesex, Norfolk), neighbor(Middlesex, Suffolk),
neighbor(Essex, Suffolk),
neighbor(Suffolk, Norfolk),
neighbor(Norfolk, Bristol), neighbor(Norfolk, Plymouth),
neighbor(Bristol, Plymouth), neighbor(Bristol, Dukes),
neighbor(Plymouth, Barnstable), neighbor(Plymouth, Dukes),
neighbor(Barnstable, Nantucket).

/*Query: massachesetts(Berkshire, Franklin, Hampshire, Hampden, Worcester, Middlesex, Essex, Norfolk, Suffolk, Bristol, Plymouth, Barnstable, Dukes, Nantucket).*/
