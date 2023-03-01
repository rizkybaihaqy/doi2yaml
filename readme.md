# DOI to YAML Converter

Converts BibTeX data fetched from a DOI to YAML format.

## Usage

### The Api

1. Install using nimble

```bash
$ https://github.com/rizkybaihaqy/doi2yaml
```

2. Add to the code

```nim
import doi2yaml

const doi = 'https://doi.org/10.0000/abcd-0000'
echo doi2yaml(doi)
```

### The Cli

To build and the app, you need to have Nim version 1.4.8 or later (at least that what i use in developemnt) installed on your system.

1. Clone the GitHub repository:

```bash
$ git clone https://github.com/rizkybaihaqy/doi2yaml.git
```

2. Navigate to the project directory

```
$ cd doi2yaml
```

3. Build the app. This will create an executable file named doi-to-yaml in the project directory.

```
$ nim build
```

4. To use the app, run the binary

```bash
$ ./doi2yaml
```

The app will ask then fetch the BibTeX data for the specified DOI from the web, convert it to YAML format, and print the YAML data to the console.

## License
This app is released under the MIT License.

## Acknowledgments

This app inspired by [this gist](https://gist.github.com/nvictus/1f71d7e861ee3396f0982532740aff46)

## Contributing

If you find any bugs or have suggestions for new features, please open an issue on GitHub or submit a pull request.
