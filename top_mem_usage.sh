#!/bin/bash

# メモリを消費しているプロセストップ5を表示
echo "メモリ使用量が多いプロセストップ5:"
echo "--------------------------------------"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
