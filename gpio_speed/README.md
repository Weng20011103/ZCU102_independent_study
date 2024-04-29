# GPIO 速度測試  
測試`GPIO`是否讀取正常。  
  
## Block Diagram  
![BD.png](BD.png "BD.png")  
  
## Design Timing Summary  
![DTS.png](DTS.png "DTS.png")  
  
## 1 kHz 測試結果  
直接讀取不加延遲。  
```python
for i in range (10):
    print(f"data_1kHz[{i}] is", data_1kHz.read(0))
```
結果:  
```text
data_1kHz[0] is 425
data_1kHz[1] is 425
data_1kHz[2] is 426
data_1kHz[3] is 426
data_1kHz[4] is 426
data_1kHz[5] is 426
data_1kHz[6] is 426
data_1kHz[7] is 427
data_1kHz[8] is 427
data_1kHz[9] is 427
```
因此`print`和`read`操作低於`1 ms`即可完成。  
  
讀取加延遲`1 ms`。  
```python
for i in range (10):
    print(f"data_1kHz[{i}] is", data_1kHz.read(0))
    time.sleep(0.001)
```
結果:  
```text
data_1kHz[0] is 294
data_1kHz[1] is 297
data_1kHz[2] is 298
data_1kHz[3] is 300
data_1kHz[4] is 302
data_1kHz[5] is 304
data_1kHz[6] is 305
data_1kHz[7] is 307
data_1kHz[8] is 308
data_1kHz[9] is 309
```
延遲有`1 ms`、`2 ms`和`3 ms`不固定。  
  
## 10 kHz 測試結果  
直接讀取不加延遲。  
```python
for i in range (10):
    print(f"data_10kHz[{i}] is", data_10kHz.read(0))
```
結果:  
```text
data_10kHz[0] is 4364
data_10kHz[1] is 4366
data_10kHz[2] is 4368
data_10kHz[3] is 4370
data_10kHz[4] is 4372
data_10kHz[5] is 4405
data_10kHz[6] is 4407
data_10kHz[7] is 4409
data_10kHz[8] is 4411
data_10kHz[9] is 4413
```
延遲有`0.2 ms`和`0.3 ms`不固定。  
  
讀取加延遲`0.1 ms`。  
```python
for i in range (10):
    print(f"data_10kHz[{i}] is", data_10kHz.read(0))
    time.sleep(0.0001)
```
結果:  
```text
data_10kHz[0] is 5003
data_10kHz[1] is 5026
data_10kHz[2] is 5038
data_10kHz[3] is 5048
data_10kHz[4] is 5058
data_10kHz[5] is 5068
data_10kHz[6] is 5078
data_10kHz[7] is 5088
data_10kHz[8] is 5098
data_10kHz[9] is 5108
```
延遲有`0.8 ms`、`2.3 ms`和`1.0 ms`。  
  
## 100 kHz 測試結果  
直接讀取不加延遲。  
```python
for i in range (10):
    print(f"data_100kHz[{i}] is", data_100kHz.read(0))
```
結果:  
```text
data_100kHz[0] is 44646
data_100kHz[1] is 44694
data_100kHz[2] is 44810
data_100kHz[3] is 44829
data_100kHz[4] is 44993
data_100kHz[5] is 45012
data_100kHz[6] is 45176
data_100kHz[7] is 45196
data_100kHz[8] is 45215
data_100kHz[9] is 45234
```
延遲有`0.48 ms`、`1.16 ms`和`0.19 ms`。  
  
讀取加延遲`0.01 ms`。  
```python
for i in range (10):
    print(f"data_100kHz[{i}] is", data_100kHz.read(0))
    time.sleep(0.00001)
```
結果:  
```text
data_100kHz[0] is 80612
data_100kHz[1] is 80871
data_100kHz[2] is 80982
data_100kHz[3] is 81096
data_100kHz[4] is 81198
data_100kHz[5] is 81296
data_100kHz[6] is 81399
data_100kHz[7] is 81496
data_100kHz[8] is 81598
data_100kHz[9] is 81704
```
延遲有`2.59 ms`、`1.11 ms`和`1.14 ms`。  
  
## 1 MHz 測試結果  
直接讀取不加延遲。  
```python
for i in range (10):
    print(f"data_1MHz[{i}] is", data_1MHz.read(0))
```
結果:  
```text
data_1MHz[0] is 456639
data_1MHz[1] is 456844
data_1MHz[2] is 457964
data_1MHz[3] is 458155
data_1MHz[4] is 460366
data_1MHz[5] is 460562
data_1MHz[6] is 460750
data_1MHz[7] is 462559
data_1MHz[8] is 463494
data_1MHz[9] is 463684
```
延遲有`0.205 ms`、`1.12 ms`和`0.191 ms`。  
  
讀取加延遲`0.001 ms`。  
```python
for i in range (10):
    print(f"data_1MHz[{i}] is", data_1MHz.read(0))
    time.sleep(0.000001)
```
結果:  
```text
data_1MHz[0] is 324356
data_1MHz[1] is 327083
data_1MHz[2] is 328357
data_1MHz[3] is 329399
data_1MHz[4] is 330417
data_1MHz[5] is 331439
data_1MHz[6] is 332443
data_1MHz[7] is 333440
data_1MHz[8] is 334432
data_1MHz[9] is 335448
```
延遲有`2.727 ms`、`1.018 ms`和`0.992 ms`。  