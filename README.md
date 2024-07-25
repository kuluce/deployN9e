
# deployN9e

deployN9e 是一个用于自动化部署 N9e（夜莺，一个开源的企业级监控平台）工具集。该项目简化了 N9e 的部署过程，提供易于使用的脚本和配置文件，使 N9e 的安装和配置更加高效和便捷。

## 目录

- [项目简介](#项目简介)
- [功能特性](#功能特性)
- [快速开始](#快速开始)
  - [前提条件](#前提条件)
  - [安装步骤](#安装步骤)
  - [配置文件说明](#配置文件说明)
- [使用方法](#使用方法)
- [常见问题](#常见问题)
- [贡献](#贡献)
- [许可证](#许可证)

## 项目简介

deployN9e 提供了一整套自动化脚本，旨在简化 N9e 的部署过程。这些脚本支持多种环境配置，并提供灵活的定制选项，以满足不同的使用场景和需求。

## 功能特性

- 自动化安装和配置 N9e 组件（包括 N9e Server、N9e Agent 和 N9e Web UI）  
- 简化的配置文件管理
- 便于扩展和定制的脚本

## 快速开始

### 前提条件

在开始之前，请确保您的环境满足以下要求：

- 操作系统：支持 Linux 系统（如 Ubuntu 18.04+、CentOS 7+）
- Docker
- Git
- Python 3.6 或更高版本

### 安装步骤

1. **克隆项目**

   ```bash
   git clone https://github.com/kuluce/deployN9e.git
   cd deployN9e
   ```

2. **配置环境**
   根据环境需求，修改.env的内容

   ```toml
   
	# database
	MYSQL_ROOT_PASSWORD="root@123"
	MYSQL_EXTERNAL_PORT=50000
   
	# phpmyadmin
	PHPMYADMIN_PORT=50001
   
	# redis
	REDIS_PORT=50002
   
	# nightingale
	NIGHTINGALE_PORT=50003
	NIGHTINGALE_IBEX_PORT=50004
   
	# victoriametrics
	VICTORIAMETRICS_PORT=50005
   ```


3. **启动环境**

   ```bash
   make up
   ```

5. **验证安装**

   完成部署后，您可以通过访问 `http://<your-server-ip>:<NIGHTINGALE_PORT>` 来验证 N9e 是否成功安装。

### 配置文件说明

- `nightingale/etc/config.toml`：N9e 的主配置文件，包括数据库、消息队列、N9e 组件等相关设置。
- `nightingale/mysql/init`： mysql数据库的初始化文件。
- `redis/data`：Redis目录。

## 使用方法

- **启动 N9e 服务器**：使用以下命令启动 N9e 服务器。

  ```bash
  make up
  ```
  
- **访问 Web UI**：通过 Web 浏览器访问 N9e Web UI 以进行监控和管理。



 