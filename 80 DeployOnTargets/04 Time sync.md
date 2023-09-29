## Time synchronization

Until the time synchronization is done in a more automatic way, the tools to have it running are installed as follows.

### Leap second

The tool was provided by Dave and is used to set the leap seconds into the Linux kernel.

Steps:

- Build the settai.c executable, the content of the file is the one below:

```c
/**
 \file set-tai.c
 \brief Set tai offset in Linux kernel
 *
 *              by: John Stultz <john.stultz@linaro.org>
 *              (C) Copyright Linaro 2013
 *              Licensed under the GPLv2
 *
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 2 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>
#include <sys/timex.h>
#include <string.h>
#include <signal.h>
#include <unistd.h>
#ifdef KTEST
#include "../kselftest.h"
#else
static inline int ksft_exit_pass(void)
{
        exit(0);
}
static inline int ksft_exit_fail(void)
{
        exit(1);
}
#endif

int set_tai(int offset)
{
        struct timex tx;

        memset(&tx, 0, sizeof(tx));

        tx.modes = ADJ_TAI;
        tx.constant = offset;

        return adjtimex(&tx);
}

int get_tai(void)
{
        struct timex tx;

        memset(&tx, 0, sizeof(tx));

        adjtimex(&tx);
        return tx.tai;
}

int main(int argc, char **argv)
{
    int i, ret;

    ret = get_tai();
    printf("tai offset started at %i\n", ret);

    if (argc < 2)
    {
        printf("New offset not given, not setting\n");
    }
    else
    {
        i = strtol(argv[1],NULL,10);
        printf("Attempting to set TAI offset to %d\n",i);
        printf("Checking tai offsets can be properly set: ");
        ret = set_tai(i);
        ret = get_tai();
        if (ret != i) {
            printf("[FAILED] expected: %i got %i\n", i, ret);
            return EXIT_FAILURE;
        }
    }
    printf("[OK]\n");
    return EXIT_SUCCESS;
}

```

- Copy the executable to `/usr/local/bin/settai` and make sure it is executable

- cd to the init.d folder

```bash
cd /etc/init.d
```

- Create a script named `settai`.

```bash
vi settai
```

- Write the following into the script and save it

```bash
!#/bin/sh

# execute Dave tool to set the leap second to the desired value

/usr/local/bin/settai 37

```

- Make the script executable

```bash
chmod a+x settai
```

- Go to the rc5.d folder

```bash
cd /etc/rc5.d
```

- Create a link to the script to be executed in the rc5 step

> Links must be in rc5 for machines that have /etc/inittab with id:5:initdefault

```bash
ln -s ../init.d/settai S30settai
```

- Check that the link works

```bash
# cat S30settai

!#/bin/sh

# execute Dave tool to set the leap second to the desiered value

/usr/local/bin/settai 37
admin@TMA-PXI:/etc/rc5.d
```

### Chrony installation

Steps are:

- Copy the `/home/lsst/Desktop/DaveMills/chronyd-built.tgz` to the PXI and unpack it.
- cd to `chrony-4.3`
- Copy chrony configuration to `/etc/.`.

```bash

cp chrony.conf /etc/.

```

- Add library path

```bash
export LD_LIBRARY_PATH=.
```

- Run chrony `./chronyd`

To run it as at startup:

- cd to the init.d folder

```bash
cd /etc/init.d
```

- Create a script named `start_chrony`.

```bash
vi start_chrony
```

- Write the following into the script and save it

```bash
#!/bin/sh

cd /home/admin/chrony-4.3

export LD_LIBRARY_PATH=.

./chronyd
```

- Make the script executable

```bash
chmod a+x start_chrony
```

- Go to the rc5.d folder

```bash
cd /etc/rc5.d
```

- Create a link to the script to be executed in the rc5 step

> Links must be in rc5 for machines that have /etc/inittab with id:5:initdefault

```bash
ln -s ../init.d/start_chrony S31start_chrony
```

- Check that the link works

```bash
admin@TMA-PXI:/etc/rc5.d# cat S31start_chrony
#!/bin/sh

cd /home/admin/chrony-4.3

export LD_LIBRARY_PATH=.

./chronyd
admin@TMA-PXI:/etc/rc5.d#
```
