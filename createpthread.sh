#!/bin/bash
NUM_THREADS=5
thread_function() {
  thread_id=$1
  echo "Thread $thread_id: Starting work..."
  sleep $((RANDOM % 3 + 1))
  echo "Thread $thread_id: Work complete."
}
echo "Creating $NUM_THREADS simulated threads..."
for i in $(seq 1 $NUM_THREADS); do
  thread_function $i &
done
wait
echo "All threads completed successfully."

