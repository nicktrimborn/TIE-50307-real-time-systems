
# imported and base recipes
IMAGE_INSTALL_append = "\
    dtc \
    evil-mod \
    evil-tests \
    irqgen-ex4-mod \
    irqgen-mod \
    "

inherit extrausers

EXTRA_USERS_PARAMS = "\
        useradd pynq; \
        usermod -p '' pynq; \
    "

