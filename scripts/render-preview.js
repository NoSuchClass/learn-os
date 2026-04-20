#!/usr/bin/env node
const { chromium } = require('playwright');
const path = require('path');

(async () => {
  const browser = await chromium.launch();
  const page = await browser.newPage({ viewport: { width: 1440, height: 1100 } });
  const url = 'file://' + path.resolve(__dirname, '../assets/mascot-preview.html');
  await page.goto(url, { waitUntil: 'networkidle' });
  await page.waitForTimeout(600);
  const out = path.resolve(__dirname, '../assets/mascot-preview.png');
  await page.screenshot({ path: out, fullPage: true });
  console.log('OK →', out);
  await browser.close();
})();
