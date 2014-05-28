rsync-skip-rpm
==============

Scans the RPM database, identifying which files were provided by an RPM, and haven't been modified since.
These files are added to an '.rpm_filter' file in the same directory, so they can be used with rsync's
'dir-merge' filtering to exclude those RPM-provided, unmodified files.

This is for the benefit of backups. I use rsync with the hard links option and a rotating destination
depending on date. I prefer to set up my backup to include everything, then selectively exclude the stuff
that doesn't need to be backed up. Just seems less error-prone that way (rather back up something I won't
need than not backup something I will). This tool automates at least part of the maintenance of the
rsync filter files. The rest is a pretty static set, which isn't hard to maintain manually.
