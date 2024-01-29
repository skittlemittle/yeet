function temp
  cat /sys/class/thermal/thermal_zone*/temp | sed 's/\(.\)..$/.\1C/'
end
