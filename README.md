-=(Jaguar_Senhor notes)=-

Tested: Working Video 720p, 1080p & Sound.

Dev notes: To synthesize for Senhor use the "Jaguar_ReworkSingle.qpf" - Only single a SDRAM stick is supported.

___
# Jaguar_MiSTer

Atari Jaguar FPGA core, written by Torlus.

Initial attempt to port to MiSTer.

It's using the later framework now, from a recent release of the GBA core.

Both analog video and HDMI are working, but the sync timings still need a few tweaks, so the image may be shifted slightly.

(or might not display correctly on an analog monitor.)


The proper Jag BIOS is now being used. If a cart is failing the checksum, a patch can skip the failure by selecting it in the menu.

A RESET (or new cart ROM load) is required after changing the Checksum patch option.

The patch allows more games to be tested with the BIOS, and shows the spinning cube logo now.

The BIOS file (usually "jagboot.rom") should be renamed to boot.rom, then copied into the Jaguar folder on the SD card.


I've added a video mode switch to the OSD menu, which is normally a pin on the Jag motherboard that gets tied high or low.
(for NTSC or PAL mode.)

That signal gets read by the BIOS at start-up, so a RESET (or new cart ROM load) is required for the NTSC/PAL change to take effect.

It's possible that some games might detect the video mode, and refuse to boot if there is a region mismatch.

It does now change the video sync timings between NTSC and PAL, but the master clock frequency is fixed at 26.59 MHz atm,
so the sync timings might not be exactly per-spec for NTSC/PAL.


The controls for player 1 are now hooked up to MiSTer.

I tried hooking up player 2 before as well, but for some reason it stopped the core booting?


The core is now using SDRAM for cart loading and for main RAM. So SDRAM is *required*.

The latency of SDRAM is a bit too high for more games to run cycle acurately with only one SDRAM module.


A handful of games now failt to boot, some with glitches or no audio, and others that might crash to a black screen (but often the game keeps running).
 
 
The older j68 CPU core has been replaced with FX68K, which is claimed to be cycle-accurate, and has shown to be very accurate so far.
(on cores like Genesis). 

I added a Turbo option for the 68000 to the MiSTer OSD, which does help speed up some things, like the intro to Flashback.

It does not speed up the main "Tom and Jerry" custom chips, though, except for reducing wait states on ROM/BIOS access.



In summary: still a fair bit of work to be done. lol

ElectronAsh.

In summary: Getting close. lol
(updates GreyRogue)
