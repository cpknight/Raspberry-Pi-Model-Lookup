# Raspberry-Pi-Model-Lookup
A very simple bash script to tell you what sort of Pi you're using. See the [RPi HardwareHistory](https://elinux.org/RPi_HardwareHistory) page from the [Embedded Linux](https://elinux.org/) wiki for more information, as well as [Raspberry Pi revision codes](https://www.raspberrypi.org/documentation/hardware/raspberrypi/revision-codes/README.md) page from the [Raspberry Pi Foundation](https://www.raspberrypi.org/about/). These are the data sources for this script, which is used as a helper for an otherwise internal project but has been presented here in case it might be of use to the broader community.

## Installation
 - `git clone https://github.com/cpknight/Raspberry-Pi-Model-Lookup.git`
 - (Optional) `ln -s /path/to/Raspberry-Pi-Model-Lookup/RPiModel.sh /usr/local/bin/rpimodel`

## Usage
 - `./RPiModel` (ie. without any parameters)
 - *Returns:* simply a model description, eg. _3 Model B (Sony UK) Q1 2016_, or _nothing at all_ (if you're not running on a RPi).

## License
Please see the applicable [License](LICENSE).
