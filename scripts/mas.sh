#!/bin/bash

# Mac App Store Installation Script

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_status() {
    echo -e "${BLUE}[MAS]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[MAS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[MAS]${NC} $1"
}

print_status "Installing Mac App Store applications..."

# Check if mas is installed
if ! command -v mas &> /dev/null; then
    print_status "Installing mas (Mac App Store CLI)..."
    brew install mas
fi

# Check if user is signed in to App Store
if ! mas account &> /dev/null; then
    print_warning "Please sign in to the Mac App Store first:"
    print_warning "Open App Store app and sign in, then re-run this script"
    exit 1
fi

print_status "Installing applications..."

# Install apps (you may need to adjust IDs based on your region)
mas install 441258766   # Magnet
mas install 937984704   # Amphetamine  
mas install 462058435   # Microsoft Excel
mas install 462054704   # Microsoft Word
mas install 462062816   # Microsoft PowerPoint
mas install 784801555   # Microsoft OneNote
mas install 409201541   # Pages
mas install 409203825   # Numbers
mas install 409183694   # Keynote
mas install 682658836   # GarageBand
mas install 408981434   # iMovie

print_success "Mac App Store applications installed!"
