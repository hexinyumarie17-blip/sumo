# 大型渠化十字信号交叉口

按参考图建立的城市平面信号交叉口基线模型。中心节点 `J0` 由 `netconvert`
生成静态信号控制；东西向为五车道主干路，南北向为四车道道路。每个进口道均
包含左转、直行与右转交通流。

| Movement | Demand per approach |
| --- | ---: |
| 东西向直行 | 1,200 veh/h |
| 东西向左／右转 | 220 / 280 veh/h |
| 南北向直行 | 900 veh/h |
| 南北向左／右转 | 180 / 220 veh/h |

## Run it

From this directory:

```sh
sh build.sh
sumo-gui -c four_way.sumocfg
```

For headless execution:

```sh
sumo -c four_way.sumocfg
```

`build.sh` creates the ignored `four_way.net.xml` from the editable node and
edge files. SUMO outputs `summary.xml` and `tripinfo.xml` after a run.

## Change the model

- Edit `four_way.rou.xml` to change turning volumes, vehicle behavior, or the
  one-hour demand period.
- Edit `four_way.nod.xml` / `four_way.edg.xml`, then rerun `sh build.sh`,
  to change geometry or lanes.
- 基线使用 netconvert 的静态信号方案。生成网络后，可替换为实测配时或
  TraCI 自适应控制。

No account, API key, password, or token is required to build or run this local
scenario. If you expose TraCI beyond a trusted local network, protect the port
at the network boundary; TraCI itself is not an authentication protocol.
