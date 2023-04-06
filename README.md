# gloriousPCLC

To create a websocket connection on a network (local or otherwise), use the following configuration for each `.py` file.
(obviously change the parameters according to your particular configuration)

- `ws_server.py`:
  - used by host OS on PC
```
python ws_server.py --host 192.168.50.175 --clients 3 --filename out.csv --pclc_id pclc --threshold 10
```

- `ws_client.py`:
  - used by Raspberry Pi and virtual machines
```
python ws_client.py --host 192.168.50.175 --id client1
```
