#!/bin/bash

# Prints number of todos
# Requires t todo manager (https://github.com/sjl/t)

TASKS_DIR="/home/$USER/Downloads/t"
TASKS_NAME="todo.txt"
PREFIX_TODO=': '

get_todo()
{
	echo "$PREFIX_TODO$(python $TASKS_DIR/t.py --task-dir $TASKS_DIR --list $TASKS_NAME | wc -l)"
}

get_todo
