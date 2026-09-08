#!/bin/bash

Target="$HOME"
Output="task2.tar.gz"

echo "---------------------"
find "$Target" -type f -mtime 1 | tar -zcf $Output -T -

echo "Task done"
