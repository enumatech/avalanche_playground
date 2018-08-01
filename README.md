# avalanche_playground
A structural (non-cryptographic) Python implementation of the avalanche algorithm by Team Rocket.

Papers like this rely on structural primitives and incentives within the network to actually remain secure/stable.
This repo boils down the important bits into Python so you can play with/attack/validate the algorithm.

I thought it'd be nice to add a visual to aide in exploration.  Uses `curses` and `networkx`.

# Usage

Make sure you have `nix` and `direnv`

```
direnv allow
python simulator.py
```
or without `direnv`
```
nix-shell
python simulator.py
```

You can see a clip of it here: https://gfycat.com/GargantuanMadEkaltadeta

# Paper

Get the paper here: https://drive.google.com/file/d/150uOd161WUzmcypoGUPfW3PrzE9lc_Eo/view

# Notes

- The "run" function is just the body of the avalanche while loop.  You can see my usage in the code, which is basically
to call it a number of times between transaction submissions.
I meant this to be useful as it gives fine grained control for testing asynchronous attacks.
- I believe the paper has a bug on figure 6 line 6 that I fix in this implementation (you need to check for the preferred transaction in the conflict set, not just the count).
- Asynchronous execution is not analyzed in the paper nor described in the implementation so I added a simple deferment mechanism that only tries to add the transaction once the parents are already added.

# TODO

clean things up, although the API should be pretty self evident
