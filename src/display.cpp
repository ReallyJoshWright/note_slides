#include "display.h"

void init_display() {
  initscr();
  printw("Test");
  refresh();
  getch();
  endwin();
}

int display_loop() {
  return 0;
}
