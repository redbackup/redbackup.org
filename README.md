# Red Backup Documentation

This repository contains the red backup documentation website including the final thesis documents.

## Requirements

* node.js and npm
* docker

## Setup

```bash
cd wesite/
npm install
```

## Building

```bash
# in the `website/` directory

# Build the website once
node build.js
# Serve the website at localhost:4000
node build.js serve
```

### Building - the docker way

```bash
# in the `website/` directory

# Build the website once
./build.sh
# Serve the website at localhost:4000
node build.js serve
```
