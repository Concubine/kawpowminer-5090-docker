# Kawpowminer 5090 Docker Edition

![Kawpowminer Logo](https://user-images.githubusercontent.com/placeholder/kawpowminer-logo.png)

## Overview

This project provides a precompiled, Dockerized version of **Kawpowminer** optimized for NVIDIA 5090 GPUs (tested to ~100MH/s). It is designed for easy deployment and management using Docker Compose, and supports mining Ravencoin (RVN) and other Kawpow-based coins.

- **GPU Support:** Optimized for NVIDIA 5090 (CUDA 12.9)
- **Algorithm:** Kawpow (used by RVN and others)
- **Performance:** ~100MH/s on 5090
- **Dockerized:** Simple deployment with Docker Compose
- **Extensible:** Can be adapted for other Kawpow miners

---

## Quick Start

### 1. Clone the Repository
```sh
git clone https://github.com/yourusername/kawpowminer-5090-docker.git
cd kawpowminer-5090-docker
```

### 2. Update Your Wallet Address

**IMPORTANT:**
Edit the `docker-compose.yml` file and replace `<yourwalletaddress>` in the command section with your actual wallet address. This is required to receive mining payouts.

```
command: >
  -P stratum+tcp://<yourwalletaddress>.worker1@rvn.2miners.com:6060
```

- Replace `<yourwalletaddress>` with your RVN (or compatible) wallet address.
- You may also change the pool URL and worker name as needed.

### 3. Build and Run with Docker Compose

Ensure you have [Docker](https://docs.docker.com/get-docker/) and [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html) installed.

```sh
docker compose up --build
```

The miner will start and connect to the specified pool.

---

## Configuration

- **Dockerfile:** Uses `nvidia/cuda:12.9.0-runtime-ubuntu22.04` and installs required Boost libraries.
- **Binary:** Precompiled `kawpowminer` is included in the image.
- **Logging:** For advanced setups, consider integrating a universal logger such as `observer.logger` for centralized log management.

---

## Compatibility

- **Kawpowminer** is compatible with other Kawpow-based coins (e.g., RVN, others).
- You can adapt the pool URL and wallet address for different coins or mining pools.

---

## Troubleshooting

- Ensure your system has a compatible NVIDIA GPU and drivers.
- The NVIDIA Container Toolkit must be installed for GPU passthrough.
- Check Docker logs for errors:
  ```sh
  docker compose logs kawpowminer
  ```
- For pool connection issues, verify your wallet address and pool URL.

---

## Contributing

Contributions are welcome! Please open issues or pull requests for improvements, bug fixes, or new features.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Disclaimer

This repository provides a precompiled binary. Use at your own risk. Always verify binaries and use trusted sources for mining software. 