# DOI to YAML Converter

This is a command-line app that converts BibTeX data fetched from a DOI to YAML format.

## Usage

To use the app, run the binary:

```bash
$ doi2yaml
```

The app will fetch the BibTeX data for the specified DOI from the web, convert it to YAML format, and print the YAML data to the console.

## Build

### Requirements

To build and run the app, you need to have the following software installed on your system:

- Nim version 1.4.8 or later

### Step

To build the app, follow these steps:

1. Clone the GitHub repository:

```bash
$ git clone https://github.com/rizkybaihaqy/doi2yaml.git
```

2. Navigate to the project directory:

```bash
$ cd doi2yaml
```

3. Build the app:

```bash
$ nim c -d:release -d:ssl src/doi2yaml.nim
```

This will create an executable file named doi-to-yaml in the project directory.

## License
This app is released under the MIT License.

## Acknowledgments

This app inspired by [this gist](https://gist.github.com/nvictus/1f71d7e861ee3396f0982532740aff46)

## Contributing

If you find any bugs or have suggestions for new features, please open an issue on GitHub or submit a pull request.
