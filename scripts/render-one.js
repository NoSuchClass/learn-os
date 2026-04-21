#!/usr/bin/env node
/**
 * Lumi single-file renderer (Playwright)
 * Usage:
 *   node scripts/render-one.js <input.html> <output.png> [width] [height]
 */
const path = require('path');
const { chromium } = require('/Users/liuyueheliuyuehe/learn-sys/node_modules/playwright');

(async () => {
  const [, , inArg, outArg, wArg, hArg] = process.argv;
  if (!inArg || !outArg) {
    console.error('usage: render-one.js <input.html> <output.png> [width] [height]');
    process.exit(1);
  }
  const width = Number(wArg || 1280);
  const height = Number(hArg || 640);
  const inFile = path.resolve(inArg);
  const outFile = path.resolve(outArg);

  const browser = await chromium.launch();
  const page = await browser.newPage({ viewport: { width, height } });

  // Avoid Google Fonts / remote stalls.
  await page.route('**/*', route => {
    const url = route.request().url();
    if (url.includes('fonts.googleapis.com') || url.includes('fonts.gstatic.com')) return route.abort();
    return route.continue();
  });

  await page.goto('file://' + inFile, { waitUntil: 'domcontentloaded', timeout: 20000 });
  await page.waitForTimeout(800);
  await page.screenshot({ path: outFile, omitBackground: false });
  console.log('OK →', outFile);

  await browser.close();
})().catch(err => {
  console.error(err);
  process.exit(1);
});

