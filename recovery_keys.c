#include <stdio.h>
#include <string.h>

#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"

static int zatab_batch_number(void) {
    char name[100];

    FILE* fp = fopen("/sys/class/input/event3/device/name", "r");

    if (fp == NULL)
        return 0;

    if (fgets(name, 99, fp) == NULL) {
        fclose(fp);
        return 0;
    }

    fclose(fp);

    if (strncmp(name, "Goodix-TS-board-3", 17) == 0) /* first batch */
        return 1;

    /* this probably won't work until we get touch support */
    if (strncmp(name, "gt80x", 5) == 0) /* second batch */
        return 2;

    /* undetected */
    return 0;
}


int device_toggle_display(volatile char* key_pressed, int key_code) {
    return 0;
}

int device_handle_key(int key_code, int visible) {
    if (!visible)
        return NO_ACTION;

    switch (zatab_batch_number()) {
        /* ZaTab batch 1 */
        case 1: switch (key_code) {
            case KEY_HOME: // VOL-
                return HIGHLIGHT_DOWN;

            case KEY_VOLUMEUP: // VOL+
                return HIGHLIGHT_UP;

            case KEY_POWER: // POWER
                return SELECT_ITEM;

            case KEY_ESC: // BACK
                if (!ui_root_menu) {
                    return GO_BACK;
                }
            }
            break;

        /* ZaTab batch 2, default */
        case 0:
        case 2: switch (key_code) {
            case KEY_SEARCH: // VOL-
                return HIGHLIGHT_DOWN;

            case KEY_MENU: // VOL+
                return HIGHLIGHT_UP;

            case KEY_POWER: // POWER
                return SELECT_ITEM;

            case KEY_HOME: // BACK
                if (!ui_root_menu) {
                    return GO_BACK;
                }
            }
            break;
    }

    return NO_ACTION;
}
