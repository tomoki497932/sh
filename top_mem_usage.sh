#!/bin/bash

# メモリを消費しているプロセスのトップ5を表示
echo "メモリ使用量が多いトップ5のプロセス:"
echo "--------------------------------------"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
