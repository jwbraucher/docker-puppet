# braucher/puppet 1.3.0

This image is based off of ubuntu-upstart. It contains puppet, librarian-puppet, and the deep_merge rubygem.

## Usage
/puppet-apply is the default entrypoint. This script runs puppet apply with verbose output and returns 0 if all manifests are applied successfully, non-zero otherwise.

## Development
See DEVELOPMENT.md

## License
MIT license
