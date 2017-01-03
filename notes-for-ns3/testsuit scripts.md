## To run testsuit scripts

### `./test.py -l` (to list the available tests)
```
Test Type    Test Name
---------    ---------
performance  many-uniform-random-variables-one-get-value-call
performance  one-uniform-random-variable-many-get-value-calls
performance  type-id-perf
system       buildings-pathloss-test
system       buildings-shadowing-test
system       devices-mesh-dot11s-regression
system       devices-mesh-flame-regression
system       epc-gtpu
system       epc-s1u-downlink
system       epc-s1u-uplink
system       itu-r-1411-los
system       itu-r-1411-nlos-over-rooftop
system       kun-2600-mhz
system       lte-antenna
system       lte-cell-selection
system       lte-cqa-ff-mac-scheduler
system       lte-cqi-generation


```


### `-s` + test name (to run the test)

```
./test.py -s lte-cell-selection --text=results.txt
```
