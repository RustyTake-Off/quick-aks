# quick-aks

Remember to look around all the directories, files and change things to your own liking.

Deploy quick and simple AKS cluster.

These scripts simplify the process of creating an AKS cluster. You can deploy a functional AKS demo environment in a short time.

Doing it yourself is some times not that simple.

## Prerequisites

You will need an:

* [Azure account](https://azure.microsoft.com/en-us/free/search/)
* [Git](https://git-scm.com/)

## Steps

You can utilize these scripts by:

1. Cloning the repository

    ```sh
    git clone https://github.com/RustyTake-Off/quick-aks
    ```

2. Changing the directory to the cloned repository and one of the two directories inside it.

    ```sh
    cd quick-aks
    ```

    ```sh
    cd quick-aks-sh
    ```

    or

    ```ps1
    cd quick-aks-ps1
    ```

3. And then running the deployment script.

    ```sh
    ./deploy-quick-aks.sh
    ```

    or

    ```ps1
    ./deploy-quick-aks.ps1
    ```

4. You can destroy the deployed cluster with these scripts.

    ```sh
    ./destroy-quick-aks.sh
    ```

    ```ps1
    ./destroy-quick-aks.ps1
    ```
