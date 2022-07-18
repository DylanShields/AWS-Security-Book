#!/bin/bash

sudo systemctl start amazon-cloudwatch-agent.service

sudo systemctl enable amazon-cloudwatch-agent.service
