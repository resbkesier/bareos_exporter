我是光年实验室高级招聘经理。
我在github上访问了你的开源项目，你的代码超赞。你最近有没有在看工作机会，我们在招软件开发工程师，拉钩和BOSS等招聘网站也发布了相关岗位，有公司和职位的详细信息。
我们公司在杭州，业务主要做流量增长，是很多大型互联网公司的流量顾问。公司弹性工作制，福利齐全，发展潜力大，良好的办公环境和学习氛围。
公司官网是http://www.gnlab.com,公司地址是杭州市西湖区古墩路紫金广场B座，若你感兴趣，欢迎与我联系，
电话是0571-88839161，手机号：18668131388，微信号：echo 'bGhsaGxoMTEyNAo='|base64 -D ,静待佳音。如有打扰，还请见谅，祝生活愉快工作顺利。

## bareos_exporter
[![Go Report Card](https://goreportcard.com/badge/github.com/dreyau/bareos_exporter)](https://goreportcard.com/report/github.com/dreyau/bareos_exporter)

[Prometheus](https://github.com/prometheus) exporter for [bareos](https://github.com/bareos) data recovery system

### [`Dockerfile`](https://github.com/dreyau/bareos_exporter/blob/master/Dockerfile)

### Usage with [docker](https://hub.docker.com/r/dreyau/bareos_exporter)
1. Create a file containing your mysql password and mount it inside `/bareos_exporter/pw/auth`
2. **(optional)** [Overwrite](https://docs.docker.com/engine/reference/run/#env-environment-variables) default args using ENV variables
3. Run docker image as follows
```bash
docker run --name bareos_exporter -p 9625:9625 -v /your/password/file:/bareos_exporter/pw/auth -d dreyau/bareos_exporter:latest
```
### Metrics

- Total amout of bytes and files saved
- Latest executed job metrics (level, errors, execution time, bytes and files saved)
- Latest full job (level = F) metrics
- Amount of scheduled jobs

### Flags

Name    | Description                                                                                 | Default
--------|---------------------------------------------------------------------------------------------|----------------------
port    | Bareos exporter port                                                                        | 9625
endpoint| Bareos exporter endpoint.                                                                   | "/metrics"
u       | Username used to access Bareos MySQL Database                                               | "root"
p       | Path to file containing your MySQL password. Written inside a file to prevent from leaking. | "./auth"
h       | MySQL instance hostname.                                                                    | "127.0.0.1"
P       | MySQL instance port.                                                                        | "3306"
db      | MySQL database name.                                                                        | "bareos"
