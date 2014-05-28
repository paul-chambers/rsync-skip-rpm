CFLAGS += -I/usr/include/rpm
LDFLAGS += -lrpm -lrpmio -lpopt

rsync-skip-rpm:	rsync-skip-rpm.c
