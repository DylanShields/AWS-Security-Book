#!/bin/bash

aws cloudtrail lookup-events \
    --lookup-attributes AttributeKey=Username,AttributeValue=Dylan
