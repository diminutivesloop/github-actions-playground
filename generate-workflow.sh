#!/bin/zsh
cat > .github/workflows/generated-workflow.yml << EOF
name: Generated Workflow

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

  workflow_dispatch:

jobs:
  greet:
    runs-on: ubuntu-latest

    steps:
      - run: echo "Hello, my mom is a shell script!"
EOF