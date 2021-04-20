#! /bash/bin
echo 'cmd cpu' >> max_cpu.log
while true
do
  #ps -eo cmd,%cpu --sort=-%cpu | head -n 4 | sed 'd1'>> max_cpu.log
  ps -eo cmd,%cpu | grep polybar | sed '2d' >> max_cpu.log
  #top | head -n 10 | grep polybar >> max_cpu.log
  sleep 2
done
