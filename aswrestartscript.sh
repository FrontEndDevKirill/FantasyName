#!/bin/bash
trap : SIGHUP
while [ -d /proc/11334 ]; do
sleep 1
done
rm "/host/20158/10021/aswrestartscript.sh"
"java" -XX:MaxPermSize=128M -Xmx1700M -Xms128M -Xmn380m -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=45 -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=50 -XX:+AggressiveOpts -jar spigot.jar
