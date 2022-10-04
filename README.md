# fastapi-ga-aws

[![FastAPI + Github Actions + AWS](https://github.com/tonythanuvelil/fastapi-ga-aws/actions/workflows/devops.yml/badge.svg?branch=main)](https://github.com/tonythanuvelil/fastapi-ga-aws/actions/workflows/devops.yml)

FastAPI + Github Actions + AWS

- Makefile
- Linting using `pylint`
- Formatting using `black`
- Python cli using `fire`
- Testing using `pytest`
- CI using Github Actions
- FastAPI
- Docker for containerization
- systemd service for running app on server
- Create the following service in aws: `/etc/systemd/system/`

```
[Unit]
Description=uvicorn daemon
After=network.target

[Service]
User=ubuntu
Group=www-data
WorkingDirectory=/home/ubuntu/projects/fastapi-ga-aws/_work/fastapi-ga-aws/fastapi-ga-aws
ExecStart=/home/ubuntu/projects/fastapi-ga-aws/_work/_tool/Python/3.10.6/x64/bin/uvicorn main:app --port=8081

[Install]
WantedBy=multi-user.target
```
