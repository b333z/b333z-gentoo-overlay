b333z's Gentoo Overlay
==================

This is a collection of experimental ebuilds that I use generally due to them being missing or broken upstream or requiring customisations. 

Some of these have been temp. repointed to local git repos to same me bandwidth while I'm teathered via phone so this overlay currently not of any use to anyone but myself.

To install:

To tell layman you trust this repo and want to download as a source you need to add ```https://raw.githubusercontent.com/b333z/b333z-gentoo-overlay/master/overlay.xml``` to your ```overlays:``` attribute in ```/etc/layman/layman.conf``` 

Example of my own after adding:
```
#-----------------------------------------------------------
# URLs of the remote lists of overlays (one per line) or
# local overlay definitions
#
#overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
#            http://dev.gentoo.org/~wrobel/layman/global-overlays.xml
#            http://mydomain.org/my-layman-list.xml
#            file:///var/lib/layman/my-list.xml

overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
            https://raw.github.com/ldc-developers/gentoo-overlay/master/overlays.xml
            https://raw.githubusercontent.com/b333z/b333z-gentoo-overlay/master/overlay.xml
```

Tell layman to update sources:

```sudo layman -L```

Add the repo to layman:

```sudo layman -a b333z```

