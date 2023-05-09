# quick-aks

These are a set of scripts that simplify the process of creating an AKS cluster on Azure. With these scripts, you can deploy a functional AKS demo environment in a short amount of time. By following the steps outlined below, you can quickly deploy and manage an AKS cluster without having to go through the complex manual steps.

## Prerequisites

You will need the following prerequisites:

* [Azure account](https://azure.microsoft.com/en-us/free/search/)
* [Git](https://git-scm.com/)

## Deployment Steps

You can utilize these scripts by:

1. Cloning the repository

    ```sh
    git clone https://github.com/RustyTake-Off/quick-aks
    ```

2. Change the directory to the cloned repository and one of the two directories inside it. There are two versions of the deployment script available - one for Unix-based systems (`quick-aks-sh`) and one for Windows (`quick-aks-ps1`).

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

3. And then run the preferred deployment script.

    ```sh
    ./deploy-quick-aks.sh
    ```

    or

    ```ps1
    ./deploy-quick-aks.ps1
    ```

4. You can destroy the deployed AKS cluster with the destroy script.

    ```sh
    ./destroy-quick-aks.sh
    ```

    ```ps1
    ./destroy-quick-aks.ps1
    ```

It is recommended that you review the contents of the scripts and the environment variables they use before running them. This will allow you to make any necessary adjustments to suit your specific requirements.
