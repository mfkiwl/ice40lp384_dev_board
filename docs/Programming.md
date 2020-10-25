To program the SPI Flash you need to hold the FPGA in reset when powering up the board. To do this, you need to connect CRESET to GND. You can install a button or switch if you plan to do this often or just use a jumper wire.

Here is an example setup using a push-button connected to CRESET.
![Breadboard Example](/images/breadboard_example.png)

I use a [SPIDriver](https://spidriver.com/) to program the SPI Flash. There are dozens of alternative options. If you are on Linux then check out the [Flashrom supported programmers](https://flashrom.org/Supported_programmers).

A minimal programming connection needs the following lines hooked-up:

- GND to GND
- 3.3V to 3.3V
- SCK to SCK
- MISO to MISO
- MOSI to MOSI
- CS to CS
- CRESET to GND

![SPIDriver Programming](/images/spidriver_programming.png)

Useful SPIDriver Commands:
'''
# Read JEDEC
python flash.py -h COM3

# Write BIN file
python flash.py -h COM3 -w data\main_bitmap.bin
'''

Note: Configuring the FPGA logic and setting up a develpment environment is outside the scope of this project. . I recommend [NandLand](https://www.nandland.com/) for a great general purpose development board and in-depth tutorials if you are new to FPGAs. If you end up using IceCube2 with this board then make sure you [configure the project](/images/new_project_config.png) appropriately.
