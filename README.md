# HA-FSA

This repo contains the verilog code of signed 8-bit multiplier and 8x8 Gemmini accelerator with 16,32 and 64 bit accmulator with TCL and Shell files of synopsys tools. This work is under review at TVLSI:

- Hybrid Accumulator Factored Systolic Array for Machine Learning Acceleration (https://ieeexplore.ieee.org/abstract/document/9773321/)

PEs of each design, its clearly visible that the gates are dominant in systolic array types of structures:

![image](https://user-images.githubusercontent.com/26200848/203887340-fa73e941-0fa9-4c10-ad91-7a2028dfc6ce.png)

![image](https://user-images.githubusercontent.com/26200848/203887351-d8443696-8457-4ac8-a43e-45bbf3f9b012.png)


![image](https://user-images.githubusercontent.com/26200848/203887362-32ab0d50-369a-417f-ab05-7786d4c64a93.png)



![image](https://user-images.githubusercontent.com/26200848/203887373-c6814efa-04b5-4efc-90fe-258540c7e5c2.png)

![image](https://user-images.githubusercontent.com/26200848/203887381-3833ca26-78f0-4780-b278-0d5e1da722f2.png)

![image](https://user-images.githubusercontent.com/26200848/203887392-bbf1ac9e-d2d1-4e43-ab1b-f0e9c290a492.png)


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
