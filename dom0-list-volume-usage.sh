# Create a list of logical volumes with their sizes.
#   Includes some "volumes" that really should NOT be removed.
## assuming that lvs gives volume size in 4th field, percent usage in 7th.
# uses | as separator so the sort -n puts backups before the latest version.
#
# Todo: printf is a bit hacky... awk can do that.
sudo lvs --separator \| --units=g  --nosuffix --noheadings   | cut -d \|  -f 1,4,7 |\
    sort -n |  tr \| \  |  awk '{ print $2 * $3/100.0  , $1}' |\
    while read n nm ; do printf "% 10.3f  %s\n" $n $nm  ; done
