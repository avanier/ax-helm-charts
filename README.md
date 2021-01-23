# ax-helm-charts

A Helm repository of charts I maintain.

## Installation

```shell
$ helm repo add avanier https://avanier.github.io/ax-helm-charts/
"avanier" has been added to your repositories
$ helm search repo avanier/
NAME                    	CHART VERSION	APP VERSION	DESCRIPTION
avanier/smokeping-prober	0.1.0        	0.3.0      	A Helm chart for smokeping_prober
```

## Signatures

I sign all my chart packages with `gpg`, mostly for giggles and practice. I
enjoy a good amount of tin-foil. You can verify them by doing something along
the lines of:

```shell
curl -L https://bunnyhole.org/files/D766C712266ADEA49E47CB0C38BE1C0E3449F34D.asc \
    gpg --import
gpg --keyid-format LONG --list-keys D766C712266ADEA49E47CB0C38BE1C0E3449F34D
# The fingerprint should match the line below
# D766C712266ADEA49E47CB0C38BE1C0E3449F34D
helm pull avanier/smokeping-prober
curl -o smokeping-prober-0.1.0.tgz.sig https://avanier.github.com/ax-helm-charts/smokeping-prober-0.1.0.tgz.sig
gpg --verify smokeping-prober-*.tgz.sig
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
