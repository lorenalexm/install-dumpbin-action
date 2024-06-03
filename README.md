# Install Dumpbin Composite Action

This GitHub Action installs `dumpbin.exe` and sets up the PATH for usage in your workflows. It installs the necessary Visual Studio Build Tools using Chocolatey.

## Usage

Add the following step to your workflow to use this action:

```yaml
jobs:
  build:
    runs-on: windows-latest

    steps:
    - name: Install Dumpbin
      uses: lorenalexm/install-dumpbin-action@main
```

## License

This project is licensed under the MIT License.
