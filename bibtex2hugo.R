tmpDir <- file.path("~/Dropbox/tmp/bibtex2hugo")
setwd(tmpDir)

## Mendeley doesn't create a .bib file for "My Publications"!!
## Need to manually select all my publications (Ctrl-A), right-click, and
## select "Copy As" > "BibTex Entry".
## Paste to a blank text file and save the file as "My_Papers.bib".

file.copy("~/Dropbox/Library/bibliographies/My Presentations.bib",
          file.path(tmpDir, "My_Presentations.bib"))

papers <- read.bib("My_Papers.bib")
talks <- read.bib("My_Presentations.bib")

x <- papers[[1]]
x <- talks[[1]]

## CSL publication types used by the HugoBlox academic-cv theme.
## article-journal | paper-conference | manuscript | report | book | chapter | thesis | patent | uncategorized

bib2hugo.publications <- function(x) {
  if (!dir.exists("publications")) dir.create("publications")
  slug <- gsub(":", "", names(x))
  outDir <- file.path("publications", slug)
  if (!dir.exists(outDir)) dir.create(outDir)
  hugoFile <- file.path(outDir, "index.md")

  authors <- paste0("  - \"", paste(x$author, collapse = "\"\n  - \""), "\"")
  url_pdf <- if (nzchar(x$url %||% "")) x$url else ""

  lines <- c(
    "---",
    paste0("title: \"", gsub("\\{|\\}", "", x$title), "\""),
    paste0("date: \"", x$year, "-01-01\""),  ## manually adjust month/day
    "draft: false",
    "authors:",
    authors,
    "publication_types:",
    "  - article-journal",
    paste0("publication: \"", x$journal %||% "", "\""),
    "publication_short: \"\"",
    paste0("abstract: \"", x$abstract %||% "", "\""),
    "summary: \"\"",
    "featured: false",
    "projects: []",
    "tags: []",
    "image:",
    "  caption: \"\"",
    "  focal_point: \"\"",
    "  preview_only: false"
  )
  if (nzchar(url_pdf)) {
    lines <- c(lines,
      "links:",
      "  - type: pdf",
      paste0("    url: \"", url_pdf, "\"")
    )
  }
  lines <- c(lines, "---", "")

  cat(lines, file = hugoFile, sep = "\n")
  invisible()
}

purrr::map(papers, bib2hugo.publications)

################################################################################
bib2hugo.presentations <- function(x) {
  if (!dir.exists("talks")) dir.create("talks")
  hugoFile <- file.path("talks", paste0(gsub(":", "", names(x)), ".md"))

  authors <- paste0("  - \"", paste(x$author, collapse = "\"\n  - \""), "\"")
  url_pdf <- if (nzchar(x$url %||% "")) x$url else ""

  lines <- c(
    "---",
    paste0("title: \"", gsub("\\{|\\}", "", x$title), "\""),
    paste0("date: \"", x$year, "-01-01\""),  ## manually add month/day
    "draft: false",
    "all_day: true",
    "authors:",
    authors,
    paste0("abstract: \"", x$abstract %||% "", "\""),
    "summary: \"\"",
    paste0("event: \"", x$publisher %||% "", "\""),
    "event_url: \"\"",
    paste0("location: \"", x$address %||% "", "\""),
    "selected: false",
    "projects: []",
    "tags: []",
    "image:",
    "  caption: \"\"",
    "  focal_point: \"\""
  )
  if (nzchar(url_pdf)) {
    lines <- c(lines,
      "links:",
      "  - type: pdf",
      paste0("    url: \"", url_pdf, "\"")
    )
  }
  lines <- c(lines, "---", "")

  cat(lines, file = hugoFile, sep = "\n")
  invisible()
}

purrr::map(talks, bib2hugo.presentations)
