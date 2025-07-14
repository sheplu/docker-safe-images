# docker-safe-images

> 🛡️ Automatically rebuilds Docker images from base images with the latest security patches.

## Overview

This project automates the generation of secure Docker images by rebuilding them from upstream base images. It ensures your containerized environments are consistently updated with the latest security patches, reducing the risk of vulnerabilities introduced by outdated base layers.

Whether you're running workloads in production or building internal developer platforms, keeping base images secure is critical. This tool makes that process seamless and reliable.

## Key Features

- ✅ Rebuilds images on base image updates
- 🔐 Ensures updated OS packages and patched libraries
- ⚙️ Customizable build process for downstream images
- 📦 Supports multi-stage builds
- 📢 Optional notifications or logging on image updates (e.g., via Slack, webhook, or email)

## How It Works

This project is designed to run **daily** (or on a customizable schedule) to ensure your Docker images are always rebuilt with the latest base layer updates and security patches.

1. **🕒 Daily Trigger**  
   A scheduled job (e.g., via cron, GitHub Actions, or other CI/CD) runs the rebuild process once per day.

2. **📥 Pull Latest Base Images**  
   Each day, the script pulls the latest version of the specified base images (e.g., `node:18-alpine`, `ubuntu:22.04`), ensuring it uses the most up-to-date layers.

3. **🔄 Always Rebuild**  
   Regardless of whether the base image digest has changed, the Dockerfiles are rebuilt daily. This guarantees that:
   - Security patches in the base image are always applied
   - Downstream dependencies (e.g., `apt`, `apk`, `npm`) are updated as needed

4. **🧰 Optional Hardening**  
   You can customize the Dockerfiles to apply security best practices such as removing unnecessary packages, creating non-root users, or minimizing final image size.

5. **📦 Push to Registry**  
   Rebuilt images are tagged (e.g., with `latest`, date-based tags, or git commit SHAs) and pushed to a container registry (Docker Hub, GHCR, ECR, etc.).

6. **📬 Log or Notify**  
   Each run logs its activity and can optionally send notifications (e.g., Slack, webhook, email) about the outcome of the rebuild.

> This approach guarantees that your images are always using the most secure and current components—without relying on digest comparisons or manual rebuild triggers.


## Example Use Case

```bash
# Example Dockerfile
FROM sheplu/safe-image:node-22
RUN apt-get install curl
