import std/[httpclient, re, strutils, sequtils]

proc makeDoiUrl(text: string): string =
  let (first, last) = text.findBounds(re"10\.\d+\/\S+")
  return "http://doi.org/" & text[first..last]

proc fetchDoi(url: string): string =
  let client = newHttpClient(headers = newHttpHeaders({
      "Accept": "application/x-bibtex"}))
  return client.getContent(url)

proc bibTex2yaml(bibTex: string): string = bibTex
  .replace("{")
  .replace("}")
  .replace(",")
  .splitLines[1..^2]
  .map(proc(line: string): string = line.strip())
  .join("\n")

proc doi2yaml*(doi: string): string =
  let url = makeDoiUrl(doi)
  let bibTex = fetchDoi(url)
  let yaml = bibTex2yaml(bibTex)
  return yaml
