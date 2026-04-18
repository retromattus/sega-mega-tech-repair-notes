# Reading Cartridges

To read a Sega Mega Tech cartridge you can use the MD Dumper available from
https://github.com/X-death25/MD_Dumper and the adapter I've designed found in
[`md-dumper-mega-tech-adapter`](./md-dumper-mega-tech-adapter).

## Reading game ROM

Set the switch on the adapter to `Game` and use auto mode:

```bash
./MD_Dumper -read auto
```

## Reading menu ROM

Set the switch on the adapter to `Menu` and use manual mode:

```bash
./MD_Dumper -read manual 32 sms
```
