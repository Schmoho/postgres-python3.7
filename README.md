# Why?

Python 3.7 is no longer provided in the repositories for any reasonably recent Debian distribution.
Those underly, for example, newer Postgres images.

However, some older systems still run on 3.7 and trying to upgrade led to dependency hell, so here we are.

Rather than using some unknown repository I figured I might just as well build a container and compile Python into it.
