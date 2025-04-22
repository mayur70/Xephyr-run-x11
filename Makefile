XEPHYR_LOC = $(shell whereis -b Xephyr)
XEPHYR = $(lastword $(XEPHYR_LOC))
# your x11 app/window manager
TARGET = xeyes

debug:
	@echo "XEPHYR_LOC : $(XEPHYR_LOC)"
	@echo "XEPHYR: $(XEPHYR)"
  @echo "TARGET: $(TARGET)"

run:
	echo "exec $(TARGET)" > xinitrc
	xinit ./xinitrc -- "$(XEPHYR)" :100 -ac -screen 800x600 -host-cursor
