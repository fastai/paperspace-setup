# paperspace-setup

Setup a paperspace instance for fastai. Steps:

- Open a terminal on your machine
- `cd /storage`
- `git clone https://github.com/fastai/paperspace-setup.git`
- `cd paperspace-setup`
- `./setup.sh`
- Shutdown your machine and start up a new one

## Notes

To install python libraries, for instance the most up to date fastai:

    pipi -U fastai

To install non-python software, e.g `universal-ctags`:

    mambai universal-ctags

Note that stuff you install with `mambai` or `pipi` will use up persistent storage space on Paperspace.
