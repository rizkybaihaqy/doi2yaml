import doi2yamlpkg/parser

when isMainModule:
  echo "Enter a DOI:"
  let doi = readLine(stdin)
  echo "YAML output:"
  echo doi2yaml(doi)
