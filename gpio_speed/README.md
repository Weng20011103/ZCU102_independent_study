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