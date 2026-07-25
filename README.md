# Qubes-oneliners

## switch netvm for some qubes

for qube in $( qvm-ls --raw-list --netvm-is OLD_NET_QUBE_NAME ); do qvm-prefs "$qube" netvm NEW_NET_QUBE; done
A good idea from parulin:
https://forum.qubes-os.org/t/mass-netvm-replacement-across-multiple-qubes-replace-one-netvm-for-repair-and-reconfiguration/42643/3
