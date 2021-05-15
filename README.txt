Example Programs for the rosco_m68k
===================================

Some ready-compiled examples, so you can try out the rosco_m68k 
without having to build any code yourself.

To use these, you'll want to have minicom and kermit installed, 
so you can upload the programs to your board. See the software 
documentation at https://rosco-m68k.com for details
on how to do that, and how to run it.

If you have the toolchain installed and want to build the 
examples for yourself, all of the source code for these (and more)
is available at:

* https://github.com/rosco-m68k/rosco_m68k/tree/develop/code/software

The Examples
============

Firstly, you need to make sure you use the correct examples for
your firmware revision. There are three firmware directories:

* **firmware-1.01** contains programs for r1 boards with FW 1.01
* **firmware-1.1** contains programs for r1 boards with FW 1.1
* **firmware-1.2** contains programs for r1.2 boards with FW 1.2
* **firmware-1.3** contains programs for all boards with FW 1.3

Inside each of these directories, you'll find the examples, along
with pre-built ROM images for each release (including alphas and
betas where applicable) and pre-build library images.

All the examples are ready to upload to your board via Kermit,
and are contained in the relevant `examples` directory for your
firmware revision.

ehbasic.bin
-----------

  This is a port of Lee Davison's Enhanced BASIC for 680x0 to 
  the rosco_m68k. When you load this on your rosco_m68k, you'll
  be presented with a familar BASIC prompt, where you can type in
  your programs and run them, just like any old-school BASIC 
  interpreter (It's case-sensitive too, commands must be uppercase!)
  
  Note there are two versions - the standard version is designed to
  be used with the onboard UART, while the `ehbasic-68681.bin` is 
  designed for use with the optional 68681 DUART board.

  This is the README from the original project:

  Enhanced BASIC is a BASIC interpreter for the 68k family 
  microprocessors. It is constructed to be quick and powerful and 
  easily ported between 68k systems. It requires few resources to 
  run and includes instructions to facilitate easy low level 
  handling of hardware devices. It also retains most of the powerful 
  high level instructions from similar BASICs.

  EhBASIC is copyright Lee Davison 2002 - 2012 and free for 
  educational or personal use only. For commercial use please 
  contact me at leeedavison@lgooglemail.com for conditions.

  For more information on EhBASIC68, other versions of EhBASIC and 
  other projects please visit my site at ..

    http://mycorner.no-ip.org/index.html


adventure.bin
-------------

  This is a port of Jeff Tranter's Abandoned Farmhouse Adventure
  for the rosco_m68k. When loaded to your board, you'll start an
  old-school text adventure!

  This is the README from the original project:

  The Abandoned Farmhouse Adventure is a text adventure game in the
  spirit of similar games that ran on 8-bit microcomputers of the 1970s
  and 80s or the more ambitious Colossal Cave adventure that originally
  only ran on mainframes and minicomputers.

  The plot and game should be self-explanatory. Figuring it out is the
  point of the game.

  I started writing it in BASIC but some things were very awkward to do
  efficiently in Apple 1 BASIC. I also considered writing it in assembly
  language, but ended up writing it in C because the excellent CC65
  assembler worked very well for me.

  It was written to run on the Apple Replica 1 although it is in
  portable C and should run on any system with a C compiler (I did most
  of the development and testing on a Linux system).

  Because it was intended to run on the Replica 1 it was kept small and
  efficient to run within the 32K memory limit and only use uppercase
  characters and fit on a 40x24 character screen. Some code looks a
  little unusual because it makes some optimizations for size and speed,
  e.g. chars instead of ints, pre versus post increment/decrement. It is
  a little too big to fit in an 8K EEPROM. It also won't run on an
  original Apple 1 with 4K of memory but I am willing to port it if
  someone sends me a system :-)

  The source is included and under an Apache license so you can modify
  and adapt the code if you wish. Much of the code is data-driven and
  could be used to implement an entirely different adventure just by
  changing the map, strings, and some of the logic that handles special
  actions.

  Oh and by the way, the farm described here is based on a real
  farmhouse where my father lived many years ago, right down to the
  layout of most of the rooms. And I also have grandson who was
  almost 3 years old at the time I wrote this.

  Jeff Tranter <tranter@pobox.com>
  http://jefftranter.blogspot.ca/


memcheck.bin
------------

  This is a simple memory exerciser for your rosco_m68k. When run, it
  will do an exhaustive check of every memory location in the whole 
  address space, building a map of your memory as it goes.

  When done, it will display the map, and halt the machine. Simple!


68010test.bin
-------------

  This is a simple program that will crash the computer (making the 
  red LED blink in groups of three) if your CPU is not a 68010.
  If it is a 68010, the green LED will flash quickly instead.

2dmaze.bin & life.bin
---------------------

  A 2D maze game and Conway's Game Of Life demo, showing use of libm 
  in the standard libraries. 
  
  Many thanks to Matt Pierce for contributing these! 
