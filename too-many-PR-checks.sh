#!/bin/zsh
for i in `seq 1 10`
do
cat > .github/workflows/PR-check-$i.yml << EOF
name: PR Check $i

on:
  push:
    branches: [ too-many-PR-checks ]
  pull_request:
    branches: [ too-many-PR-checks ]

  workflow_dispatch:

jobs:
  check:
    runs-on: ubuntu-latest

    steps:
      - run: echo "LGTM"
EOF
done