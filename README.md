Kodi perl client
----------------

Generate Methods from Kodi

```shell
./Kodi.pl gen
id http://xbmc.org/jsonrpc/ServiceDescription.json
methods HASH(0x3982570)
description JSON-RPC API of XBMC
types HASH(0x3a87080)
notifications HASH(0x3a74c20)
version 6.25.0
Kodi Methods : 142 available
```

Call method and json parameters

```shell
./Kodi.pl ApplicationSetVolume '{"volume":10}'
```

Search a Kodi method

```shell
./Kodi.pl look Volume
Looking for: Volume
Found : Application.SetVolume   Set the current volume
```

View Kodi logfile need ssh

```shell
./Kodi.pl log
```