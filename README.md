# Sega Mega Tech Repair Notes




## Manual Page 32

|Drw No.|Sega Part Number|D L Part Number|Qty per|Description|Notes|
|--|--|--|--|--|--|
|14|DP-1167|SE|1|Tng Lkg|DP 1167 Lock Tang [Buy](https://www.videotronicsuk.com/dp-1167-lock-tang.html)|
|18|220-5253|SE 1273|1|Magnetic Lock Master W/O Keys|Sega/Miwa 5253 Lock|
|19|220-5254|SE 0906|2|Key Master for 220-5253|Sega/Miwa 5253 Key|
|26||CM 0711|1|Assy Coin Mech & Chute Sentinal 4 Way|Coin Controls Sentinel Electronic Coin Mech C220 [Manual](Manuals/Sentinel+Tech+Manual+V0.pdf)|


# Writing cartridges

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
