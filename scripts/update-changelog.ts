import fs from 'fs';
import path from 'path';

const CHANGELOG_PATH = path.join(process.cwd(), 'CHANGELOG.md');

function updateChangelog() {
  const version = process.env.npm_package_version;
  if (!version) {
    console.error('No version found in environment');
    process.exit(1);
  }

  let changelog = fs.readFileSync(CHANGELOG_PATH, 'utf8');
  const today = new Date().toISOString().split('T')[0];

  // Replace [Unreleased] section with the new version
  changelog = changelog.replace(
    '## [Unreleased]',
    `## [Unreleased]\n\n## [${version}] - ${today}`
  );

  // Update the links at the bottom
  const linkPattern = /\[Unreleased\]: (.+)compare\/v(.+)\.\.\.HEAD/;
  const match = changelog.match(linkPattern);

  if (match) {
    const baseUrl = match[1].split('compare')[0];
    const newLinks = `[Unreleased]: ${baseUrl}compare/v${version}...HEAD\n[${version}]: ${baseUrl}compare/v${match[2]}...v${version}`;
    changelog = changelog.replace(linkPattern, newLinks);
  }

  fs.writeFileSync(CHANGELOG_PATH, changelog);
}

updateChangelog();
