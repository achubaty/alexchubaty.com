#!/usr/bin/env bash

# Update the HugoBlox theme modules to their latest versions.
set -euo pipefail

hugo mod get -u
hugo mod tidy
