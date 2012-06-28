#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"


int device_toggle_display(volatile char* key_pressed, int key_code) {
    return 0;
}

int device_handle_key(int key_code, int visible) {
    if (visible) {
        switch (key_code) {
            case KEY_SEARCH: // VOL-
                return HIGHLIGHT_DOWN;

            case KEY_MENU: // VOL+
                return HIGHLIGHT_UP;

            case KEY_POWER: // POWER
                return SELECT_ITEM;

            case KEY_HOME: // BACK
                if (ui_menu_level > 0) {
                    return GO_BACK;
                }
        }
    }

    return NO_ACTION;
}
