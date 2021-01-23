# smokeping-prober

A Helm char for [SuperQ's `smokeping_prober`][sqp].

[sqp]: https://github.com/SuperQ/smokeping_prober

## Installation

Setup the chart.

```shell
helm repo add avanier https://avanier.github.com/ax-helm-charts/
helm show values avanier/smokeping-prober > values.yaml
```

Edit your `values.yaml`, then do a dry-run.

```shell
helm install avanier/smokeping-prober -f values.yaml -n NAMESPACE --debug --dry-run
```

Then go to town!

```shell
helm install avanier/smokeping-prober -f values.yaml -n NAMESPACE
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
