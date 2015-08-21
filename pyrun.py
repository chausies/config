from sys import argv
for f in argv[1:]:
  execfile(f)
import readline
import rlcompleter
readline.parse_and_bind("tab: complete")
import code
vars = globals().copy()
vars.update(locals())
shell = code.InteractiveConsole(vars)
shell.interact()
