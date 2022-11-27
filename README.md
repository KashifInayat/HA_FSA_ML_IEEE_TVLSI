# HA-FSA

This repo contains the verilog code of signed 8-bit multiplier and 8x8 Gemmini accelerator with 16,32 and 64 bit accmulator with TCL and Shell files of synopsys tools. This work is published at TVLSI:

- Hybrid Accumulator Factored Systolic Array for Machine Learning Acceleration (https://ieeexplore.ieee.org/abstract/document/9773321/)

## Prerequisites:
To use these files, you must have synopsys tools:  VCS, DC, PrimeTime PX, PrimePower

## PEs usage:
- Before proceeding to PEs design, you need to copy the right multiplier into  
```bash
./designs/mult.ddc
```
Next you need to synthesize the Processing Element

- For DC
```bash
./run_dc.sh
```

## Gemmini SA usage:
Use the following commands to get the corresponding tool:

- Before proceeding to SA, you need to copy the right netlist of PE into 

```bash
./designs/PE.ddc
```

- For DC
```bash
./run_dc.sh  
```
- For Baremetal Test
```bash
- ./make.sh
- ./simv ./matmul_os-baremetal 
```


## Citation:
If you find FSA useful in your research, please consider citing:
```
@article{inayat2022hybrid,
  title={Hybrid Accumulator Factored Systolic Array for Machine Learning Acceleration},
  author={Inayat, Kashif and Chung, Jaeyong},
  journal={IEEE Transactions on Very Large Scale Integration (VLSI) Systems},
  year={2022},
  publisher={IEEE}
}
```

## Contributing:
- Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

- Please make sure you have valid license to proceed with the synopsys tools.
