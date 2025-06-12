# ⏲️[dekoeky/counter](https://github.com/dekoeky/counter)
🧮 Just a container that counts. Forever. 🔁 Why? Because it can. 🤷‍♂️


## 📖 What is This?
This container runs a minimal shell script that counts upward in a loop. It prints a number, waits a bit, increments, and repeats — forever (or until stopped).

It’s great for:
- Simulating long-running processes
- 🧪 Debugging container behavior
- 📡 Testing logging systems
- 🧰 Demonstrating container basics (shell, signals, PID 1)
- 🧱 Demonstrating multi-arch builds
- 😴 Watching numbers change instead of working

## ⚙️ Environment Variables
| Variable    | Description                        | Default |
| ----------- | ---------------------------------- | ------- |
| `start`     | The number to start counting from  | `0`     |
| `increment` | The amount to increase each step   | `1`     |
| `delay`     | Seconds to wait between each count | `1`     |


## ▶️ Example
```bash
docker run --rm -e start=10 -e increment=2 -e delay=0.5 dekoeky/counter
# Sample Output:
# Counter: 10
# Counter: 12
# Counter: 14
# ...
```

## Building Locally
If you want to build the dockerfile locally, you could use the following scripts
```shell
# Shell
docker buildx build \
  --platform linux/amd64,linux/arm64,linux/arm/v7 \
  --tag vt6109/test:latest \
  --push \
  .
```

```powershell
# PowerShell
docker buildx build \
  --platform linux/amd64,linux/arm64,linux/arm/v7 \
  --tag vt6109/test:latest \
  --push \
  .
```
## References
[Docker - Multi-Platform](https://docs.docker.com/build/building/multi-platform/)



---
[![Docker Pulls](https://img.shields.io/docker/pulls/dekoeky/counter)](https://hub.docker.com/r/dekoeky/counter)
[![Image Size](https://img.shields.io/docker/image-size/dekoeky/counter/latest)](https://hub.docker.com/r/dekoeky/counter)
[![Build](https://github.com/dekoeky/counter/actions/workflows/docker-image.yml/badge.svg)](https://github.com/dekoeky/counter/actions/workflows/docker-image.yml)