#!/bin/bash

set -e

echo "🔧 Installing Supabase CLI..."

mkdir -p ~/.supabase/bin
curl -sL https://github.com/supabase/cli/releases/latest/download/supabase-linux-x64 -o ~/.supabase/bin/supabase
chmod +x ~/.supabase/bin/supabase

if ! grep -q 'export PATH="$HOME/.supabase/bin:$PATH"' ~/.bashrc; then
  echo 'export PATH="$HOME/.supabase/bin:$PATH"' >> ~/.bashrc
fi

# Pre-load it into this session too
export PATH="$HOME/.supabase/bin:$PATH"

echo "✅ Supabase CLI installed:"
supabase --version
