# Environment Configuration Tool

# Abstract
Environment Configuration Tool (ECT) helps developers or system administrators to set up a new terminal environment based on the person's preference. That is, one can list the packages to install, and locate his/her own .rc files, then the tool will do the rest.

# Dependency

## Mac OS X

Make sure [Mac Ports](https://www.macports.org/) is installed; otherwise, installation guide is [here](https://guide.macports.org/).

# Set Up

## Write Your Own config.json

In config.json file, you can name the list of packages you want to install. There will be the input arguments for your package installation tool, such as `apt-get install args`. Sample file is provided in this repo.

## Make

```
> make
```

# Run

```
> sudo ./run.py
```

# Notice

- Make sure you've backup your rc files or other setting files if you don't want them to be overwritten. (Our tool should ask you whether you want to overwrite when it's about to happen; however, it's always a good idea to backup them if you want to keep them.)
