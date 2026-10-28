#!/usr/bin/env bash
# cv.pdf / ko/cv.pdf 재생성. 사이트 HTML을 그대로 인쇄한다(@media print 규칙 사용).
# 맥: Chrome, dev1: playwright-core(~/.local/share/pdfbuild).
set -euo pipefail
cd "$(dirname "$0")"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
PW_HOME="${PW_HOME:-$HOME/.local/share/pdfbuild}"

build() {
  local src="$1" out="$2"
  if [ -x "$CHROME" ]; then
    "$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$out" "file://$PWD/$src" >/dev/null 2>&1
  elif [ -d "$PW_HOME/node_modules/playwright-core" ]; then
    NODE_PATH="$PW_HOME/node_modules" node -e '
      const { chromium } = require("playwright-core");
      (async () => {
        const [html, out] = process.argv.slice(1);
        const b = await chromium.launch();
        const p = await b.newPage();
        await p.goto("file://" + html, { waitUntil: "networkidle" });
        await p.pdf({ path: out, preferCSSPageSize: true, printBackground: true });
        await b.close();
      })();
    ' "$PWD/$src" "$out"
  else
    echo "FAIL no PDF engine (Chrome or playwright-core in $PW_HOME)"; exit 1
  fi
  node -e '
    const fs = require("fs");
    const n = (fs.readFileSync(process.argv[1]).toString("latin1").match(/\/Type\s*\/Page[^s]/g) || []).length;
    console.log("OK " + process.argv[1] + " " + n + "p");
  ' "$out"
}

build index.html cv.pdf
build ko/index.html ko/cv.pdf
