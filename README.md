# TemperatureKit

[![Build Status](https://travis-ci.org/mwolski89/TemperatureKit.svg?branch=master)](https://travis-ci.org/mwolski89/TemperatureKit)


TemperatureKit helps you calculating temperatures.

## Usage

### Creating and using TemperatureKit
```swift
import TemperatureKit

let celsius = Temperature(.celsius, value: 32.0)
```

### Calculating to another unit

```swift
let fahrenheit = celsius.fahrenheitValue()

let kelvin = celsius.kelvinValue()
```

## Features
Currently supporting transformations for
* [x] Celsius
* [x] Fahrenheit
* [x] Kelvin


## Open Tasks
Still need more measuremnts of temperature:
* [ ] Rankine (°R or °Ra)
* [ ] Delisle (°De)
* [ ] Newton (°N)
* [ ] Réaumur (°R)
* [ ] Rømer (°Rø)
* [ ] Wedgwood (°W)

