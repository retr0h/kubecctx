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

Switch between contexts within this context by using the wonderful [kubectx][] ❤️.
Ideally [kubectx][] would support multiple config files.

## Alternatives

I've run into issues with HELM v2 when using a KUBECONFIG env containing multple
kubeconfig files (`KUBECONFIG=file1:file2:....`).

## License

MIT

[kubectx]: https://github.com/ahmetb/kubectx
