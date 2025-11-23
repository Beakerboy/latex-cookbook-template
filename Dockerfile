# Dockerfile for LaTeX Cookbook Template

FROM ubuntu:latest

# Set working directory
WORKDIR /workspace

# Install LaTeX and LuaLaTeX dependencies
RUN apt-get update && \
    apt-get install -y \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-luatex \
    texlive-lang-french \
    latexmk \
    fonts-noto-color-emoji \
    && rm -rf /var/lib/apt/lists/*

# Set default command to build
CMD ["./build.sh"]

