#!/bin/bash

# --- COLORS ---
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLUE}=== Interview Ready Vault: Local Setup ===${NC}"

# 1. INSTANT CHECK: Does the mkdocs command exist?
# This is the fastest way to check on a Mac.
if command -v mkdocs &> /dev/null || python3 -c "import mkdocs" &> /dev/null; then
    echo -e "${GREEN}✔ MkDocs found. Skipping setup...${NC}"
else
    echo -e "${YELLOW}Installing dependencies (one-time setup)...${NC}"
    python3 -m pip install --quiet "mkdocs>=1.5.0,<2.0.0" "mkdocs-material>=9.5.0,<10.0.0"
fi

# 2. Handle the "Parent Directory" error with a virtual link
if [ ! -L "docs_link" ]; then
    echo -e "${GREEN}Creating virtual docs link...${NC}"
    ln -s . docs_link
fi

# 3. Final safety check on mkdocs.yml
if [ ! -f "mkdocs.yml" ]; then
    echo -e "${YELLOW}Error: mkdocs.yml not found!${NC}"
    exit 1
fi

echo -e "${YELLOW}Starting server at http://127.0.0.1:8000/${NC}"
echo -e "${BLUE}Press Ctrl+C to stop.${NC}"

# Start the server with dirtyreload (only reloads the file you edit)
python3 -m mkdocs serve --dirtyreload