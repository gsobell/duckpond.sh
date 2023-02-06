#!/usr/bin/python
"""
Let's get quackin!
Them: python supports duck typing.
Me:  *quack*??
"""
from curses import wrapper

def main(stdscr):
    stdscr.clear()
    stdscr.refresh()
    stdscr.getkey()

wrapper(main)


duck_example = """
  _
_(.)-
\__)
    """

duck = [ '  _', '_(.)', '\__)']

beak = ['<', '>', '=', '—']

yellow = '\033[93m'
orange = '\033[33m'
blue = '\033[34m'

def quack():
  for d in duck:
    if d == '_(.)':
      print(yellow + d + orange + beak[0])
    else:
      print(yellow + d)
  print(blue + '^' * 40)


if __name__ == "__main__":
    main()

