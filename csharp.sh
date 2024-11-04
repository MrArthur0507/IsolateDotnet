#!/bin/bash

echo "Updating package list with Mono repository..."
apt update

echo "Installing Mono..."
apt install -y mono-complete
