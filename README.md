# Kubecctx

Script to manage multiple KUBECONF files.

## Installing

### MacOS

Homebrew package manager:

    $ brew tap retr0h/kubecctx
    $ brew install kubecctx

## Usage

Create a directory for each kubeconfig you wish to manage.

    $ mkdir -p ~/.kube/contexts/eks-dev
    $ cp config ~/.kube/contexts/eks-dev/config.yml

Switch to eks-dev environment.

    $ kubecctx eks-dev
    Switched to KUBECONFIG '/Users/john.dewey/.kube/contexts/eks-dev/config.yml'.

Best if used in conjuction with ❤️ [kube-ps1][] and [kubectx][] ❤️.

## Alternatives

Ideally [kubectx][] will [support multiple config files][].

I've run into issues with HELM v2 when using a KUBECONFIG env containing multple
kubeconfig files (`KUBECONFIG=file1:file2:....`).

## License

MIT

[kube-ps1]: https://github.com/jonmosco/kube-ps1
[kubectx]: https://github.com/ahmetb/kubectx
[support multiple config files]: https://github.com/ahmetb/kubectx/issues/211
