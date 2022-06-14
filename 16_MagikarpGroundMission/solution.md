# 1 Step
Login following the instruction on screen.

# 2 Step
Run `cat 1of3.flag.txt`to get the first part of the flag then `cat instructions-to-2of3.txt` to get instructions.

Instructions say: `Next, go to the root of all things, more succinctly '/'`

# 3 Step
Run `cd /` and here you'll find the second part of the flag so `cat 2of3.flag.txt` then read the instruction another time `cat instructions-to-3of3.txt`.

Instructions say `Lastly, ctf-player, go home... more succinctly `~``

# 4 Step

Run `cd ~` and then `cat 3of3.flag.txt`.

## The flag is

```
picoCTF{xxsh_0ut_0f_\/\/4t3r_1118a9a4}
```