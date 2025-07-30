# Backup on Disk

## Overview

Backup on Disk is a lightweight, open-source backup solution designed to securely store backups on local or mounted disk storage. This project uses Docker Compose to manage the backup service, ensuring easy setup and configuration. Environment variables are managed via a `.env` file for secure and flexible configuration.

## Features

- Automated backups to local or network-attached disk storage
- Configurable backup schedules
- Secure storage with optional encryption
- Easy setup with Docker Compose
- Environment variable configuration for sensitive data

## Prerequisites

- [Docker](https://www.docker.com/get-started) (version 20.10 or higher)
- [Docker Compose](https://docs.docker.com/compose/install/) (version 2.0 or higher)
- A mounted disk or directory for storing backups

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/iashraful/backup-on-disk.git
cd backup-on-disk
```

### 2. Configure Environment Variables

Copy the example environment file to create your `.env` file:

```bash
cp .env.example .env
```

- Update the variables from `.env`

### Run the tool

```bash
docker compose up --build -d
```
