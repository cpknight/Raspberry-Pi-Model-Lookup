# Raspberry-Pi-Model-Lookup
A very simple bash script to tell you what sort of Pi you're using. See the [RPi HardwareHistory](https://elinux.org/RPi_HardwareHistory) page from the [Embedded Linux](https://elinux.org/) wiki for more information/data source.  This script is used as a helper for an otherwise internal project, but is presented here because there may be broader appeal to community to use this in other projects.

## Installation
 - `git clone https://github.com/cpknight/Raspberry-Pi-Model-Lookup.git`
 - (Optional) `ln -s /path/to/Raspberry-Pi-Model-Lookup/RPiModel.sh /usr/local/bin/rpimodel`

## Usage
 - `./RPiModel` (ie. without any parameters)
 - *Returns:* simply a model description, eg. _3 Model B (Sony) Q1 2016_, or _nothing at all_ (if you're not running on a RPi).

## License
Please see the applicable [License](LICENSE).
