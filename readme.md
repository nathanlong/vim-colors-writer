# Writer Colorscheme for Vim

**Maintainer:**     Nathan Long - [nathan-long.com](http://www.nathan-long.com)

----

This colorscheme was based off two "distraction free" environments,
[WriteRoom](http://www.hogbaysoftware.com/products/writeroom) and
[IAWriter](http://www.iawriter.com/). Since I use Vim for everything involving
text I recreated these environments for myself. I've also shamelessly copied
Ethan Schoover's definition and variable structure from his [Solarized
theme](https://github.com/altercation/vim-colors-solarized) (which is
a brilliant theme!).

For the best experience switch to fullscreen mode and set your columns to 80.

----

**Installation:**

If you run Pathogen to manage your plugins, you can clone this as a submodule
by running:

    git submodule add [address] bundle/colors-writer

Or you can just download it and pop it into your `.vim/colors/` directory.

----

**Switching Between the Two Themes**

Since this leans heavily on the innovations of Solarized, you can use
Solarized's built in background switching plugin to switch between the dark
(WriteRoom) and the light (IAWriter) themes.

If you don't have that installed run:

    set bg=dark

For the dark scheme, and for the light:

    set bg=light

Thats it, hope you enjoy it!

---

**TODOS:**

- Write built in function to switch to fullscreen environment with optimized
  settings.
- Add more support for more filetypes.
