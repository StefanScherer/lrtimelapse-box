# LRTimelapse Mac Box
## Introduction
I want to dive into time lapse photography after I have received my [Astro](http://orderastro.com).  Nearly two years after the [Kickstarter](https://www.kickstarter.com/projects/1530895202/astro-time-lapse-motion-control) project has started I have this thing in my hands.

This repo both documents my hardware setup and automates the software setup in a Mac VM.

## My setup
* [Fuji FinePix S9600](http://www.digitalkamera.de/Kamera/Fujifilm/FinePix_S9600.aspx)
* [JJC Remote Control for FinePix RR-90](http://www.enjoyyourcamera.com/Remote-Cords/Wireless/Infrared/Remote-Cords/JJC-MA-R-Remote-Cord-for-Fujifilm-FinePix-RR-90::6844.html?language=en)
* [JJC TM-R Timer Remote Cord](http://www.enjoyyourcamera.com/Remote-Cords/Wireless/Infrared/Remote-Cords/JJC-TM-R-Timer-Remote-Cord-for-Fujifilm-RR-90::6847.html?language=en) - no longer needed with Astro
* [Astro Silver](http://orderastro.com) with the [C1 Cable](http://orderastro.com/cables/)
* [Adobe Photoshop Lightroom 3.6](http://www.adobe.com/de/products/photoshop-lightroom.html)
* [LRTimelapse 3](http://lrtimelapse.com/shop/)

## Wiring
The Fuji FinePix S9600 has a mini USB adapter with a special fifth pin for focus and shutter. The JJC Timer Remote Cord uses this for automate time lapse photos. But things getting more interesting with Astro as the camera now can be turned between each shot.

As Astro does not support the FinePix S9600 directly, I found out that this combination is working.
The JJC Remote Control has a 2.5mm jack plug that is wired directly to the fifth pin of the USB connector.

The C1 Cable for Canon EOS 600D has this [pinout](http://www.doc-diy.net/photo/eos_wired_remote/).

* Plug in the the C1 Cable to both Astro and the JJC Remote Control.
* Plug in the JJC Remote Control to the USB plug of the Fuji FinePix S9600.

It only triggers the shutter and not the focus, but this is fine as we use manual focus while shooting time lapse.

## Installation
I automate my software installations with [Vagrant](http://www.vagrantup.com), the [Vagrant VMware plugin](http://www.vagrantup.com/vmware#buy-now) and [VMware Fusion](http://www.vmware.com/products/fusion/) on my Mac.

To create a Mac VM with all software installed you just enter these commands:

```
git clone https://github.com/StefanScherer/lrtimelapse-box
cd lrtimelapse-box
vagrant up
```

Of course, you need a Mac basebox `osx109` which can be built with [Packer](http://www.packer.io) and the [box-cutter/osx-vm](https://github.com/box-cutter/osx-vm) repo.

Login into the VM with user vagrant and password vagrant.

On a real Mac you can use the following scripts to install the software

```
curl -L https://github.com/StefanScherer/lrtimelapse-box/raw/master/scripts/install-adobe-lightroom.sh | sh
curl -L https://github.com/StefanScherer/lrtimelapse-box/raw/master/scripts/install-lrtimelapse.sh | sh
```

# Licensing
Copyright (c) 2014 Stefan Scherer

MIT License, see LICENSE for more details.