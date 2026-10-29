# 立交模型案例

- [分体式／定向匝道立交](split_directional/README.md)：对应参考图一；两条环形匝道与六条直接或半直接匝道。
- [四叶草立交](cloverleaf/README.md)：对应参考图二；四条环形匝道和四条直接匝道。

两个案例均为可运行的 SUMO 基线模型：先在各目录执行 `sh build.sh` 生成 `.net.xml`，再运行 `sumo-gui -c *.sumocfg`。主线和匝道道路在路网拓扑上分离；A 主线高程为 8 m，B 主线高程为 0 m。
