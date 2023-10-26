#!/bin/bash

CMD_B="cylc graph "
CMD_M="cylc graph "
for MEM in 001 002 003; do
   CMD_M="${CMD_M} -g RUN_TASKS_${MEM}"
   for BLK in 000 012 024 036 048 060; do
      CMD_B="${CMD_B} -g HHH_${BLK}_${MEM}"
   done
done

$CMD_B . &
$CMD_M . &
cylc graph . &
