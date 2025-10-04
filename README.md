# Sega Mega Tech Repair Notes




## Manual Page 32

|Drw No.|Sega Part Number|D L Part Number|Qty per|Description|Notes|
|--|--|--|--|--|--|
|14|DP-1167|SE|1|Tng Lkg|DP 1167 Lock Tang [Buy](https://www.videotronicsuk.com/dp-1167-lock-tang.html)|
|18|220-5253|SE 1273|1|Magnetic Lock Master W/O Keys|Sega/Miwa 5253 Lock|
|19|220-5254|SE 0906|2|Key Master for 220-5253|Sega/Miwa 5253 Key|
|26||CM 0711|1|Assy Coin Mech & Chute Sentinal 4 Way|Coin Controls Sentinel Electronic Coin Mech C220 [Manual](Manuals/Sentinel+Tech+Manual+V0.pdf)|



# Known Released Games

171-5782 - megadrive
171-5783 - master system
171-5784 - master system with mapping chip


|Name|Copyright|Serial number|Board number|Notes|
|--|--|--|--|--|
|After Burner|1989|610-0239-10|171-5784|512KB (SMS)|
|Alien Storm|June 1991*|610-0239-47||512KB (Megadrive)|
|Alien Syndrome|1989|610-0239-07||256KB (SMS)|
|Altered Beast|January 1989*|610-0239-01||512KB (Megadrive)|
|Arnold Palmer Tournament Golf|June 1989*|610-0239-31||512KB (Megadrive)|
|Arrow Flash|July 1990*|610-0239-44||512KB (Megadrive)|
|Astro Warrior|1989|610-0239-13||128KB (SMS)|
|Bonanza Bros.|July 1991*|610-0239-49||1MB (Megadrive)|
|California Games|August 1991*|610-0239-55||256KBx2 (Megadrive)|
|Columns|April 1990*|610-0239-36||512KB (Megadrive)|
|Crack Down|October 1990*|610-0239-41||512KB (Megadrive)|
|Cyber Police E-SWAT|March 1990*|610-0239-38||512KB (Megadrive)|
|Fantasy Zone|1989|610-0239-09|
|Fire Shark|1990|610-0239-53|
|Forgotten Worlds|1989|610-0239-26|
|Ghouls 'n Ghosts|1989|610-0239-23|
|Golden Axe|1989√|610-0239-25|512KB|Megadrive
|Golden Axe II|1991|610-0239-57|
|Great Football|1989|610-0239-19|
|Great Golf|1989|610-0239-04|
|Great Soccer|1989|610-0239-05|
|Joe Montana II — Sports Talk Football|1992|610-0239-58|
|Kid Chameleon|1992|610-0239-60|
|Last Battle (Legend of the Final Hero)|1989|610-0239-20|
|Mario Lemieux Hockey|1991|610-0239-59|
|Moonwalker|1990|610-0239-40|
|Mystic Defender|1989|610-0239-27|
|OutRun|1989|610-0239-06|
|Parlour Games|1989|610-0239-29|
|Shadow Dancer|1990|610-0239-43|
|Shinobi|1989|610-0239-08|
|Sonic The Hedgehog|April 1991*|610-0239-52||512KB (Megadrive)|
|Sonic The Hedgehog 2|1992|610-0239-62|
|Space Harrier II|1989|610-0239-02|
|Spider-Man Vs. The Kingpin|1991|610-0239-54|
|Streets of Rage|1991|610-0239-51|
|Super Hang-On|1989|610-0239-24|
|Super League|||
|Super Monaco GP|1990|610-0239-39|
|Super Real Basketball|1990|610-0239-32|
|Super Thunder Blade|1989|610-0239-03|
|Tetris|1989|610-0239-22|
|The Revenge of Shinobi|1989|610-0239-28|
|Thunder Force II|1989|610-0239-11|
|Turbo OutRun|1992|610-0239-61|
|Turbo OutRun|1992|610-0239-61|
|World Cup Soccer|||
|Wrestle War|||


|World Championship Soccer|1990|610-0239-21|
|Tommy Lasorda Baseball|1990|610-0239-35|

*Copyright number based on ROM file

## Writing cartridges

For 27C400 chips (512k ROM files)

Using the ADP_D42_EX-A adapter, place chip with one pin empty at the top.

To verify it is blank

```bash
> minipro --device 'AM27C4096@DIP40' --skip_id --blank_check
```


```bash
> minipro -p HN27C4000G@DIP40 -r dump.txt -y; hexdump -v -e '1/1 "%02X\n"' dump.txt | grep -v '^FF$' >/dev/null && echo "NOT blank" || echo "Blank"
```
To write a ROM file

```bash
> minipro -p HN27C4000G@DIP40 -y -w rom.bin
```


For M27C256B chips

Don't use the adapter. Insert as denoted on the device.

To verify it is blank

```bash
> minipro --device 'M27C256B@DIP28' --skip_id --blank_check
```

To write a ROM file

```bash
> minipro -p M27C256B@DIP28 -y -w rom.bin
```

## Cartridge label sizes

**Front** - 80 x 72 mm
**Back** - 80 x 24 mm
