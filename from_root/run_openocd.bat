bin\openocd\bin\openocd.exe -f interface/cmsis-dap.cfg -c "adapter speed 5000" -f target/rp2040.cfg -s bin\openocd\scripts
pause
