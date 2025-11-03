# get the index from the argument
idx="$1"
sleep_time=$((1 + RANDOM % 10))
echo "Running prep $idx, sleeping $sleep_time s"
sleep $sleep_time
echo "Output from prep $idx"
