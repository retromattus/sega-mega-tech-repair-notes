# Reading Cartridges

To read a Sega Mega Tech cartridge you can use the MD Dumper available from
https://github.com/X-death25/MD_Dumper and the adapter I've designed found in
[`md-dumper-mega-tech-adapter`](./md-dumper-mega-tech-adapter).

## Reading game ROM

Set the switch on the adapter to `Game` and use auto mode:

```bash
./MD_Dumper -read auto
```

When dumped, game ROMs are byte-swapped, which is perfect for running in an
emulator but needs to be reversed for writing.

To verify the checksum, ensure the byte order is reversed so `SEGA` reads as
`ESAG`, using the following as necessary:

```bash
./romrev.sh dump_smd.bin
```

Then calculate the checksum:

CRC32:

```bash
crc32 dump_smd.bin.rev
```

SHA1:

```bash
sha1 dump_smd.bin.rev
```

## Reading menu ROM

Set the switch on the adapter to `Menu` and use manual mode:

```bash
./MD_Dumper -read manual 32 sms
```
