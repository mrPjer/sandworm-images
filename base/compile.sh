# Tries to compile with a compiler if it's present

type gcc >/dev/null && ls *.c >/dev/null 2>&1 && gcc *.c
type g++ >/dev/null && ls *.cpp >/dev/null 2>&1 && g++ *.cpp

exit 0
