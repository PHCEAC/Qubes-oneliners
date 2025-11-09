# Qubes specific
# list the logical volumes named xxxxxx-pool
sudo lvs | head -n 1 ; sudo lvs | grep -e "^\s*[^ ]*pool "

# Notes:
## Could probably also use the Attributes column...
sudo lvs | head -n 1 ; sudo lvs | grep " t"
