# PackageInfo for the TransGrp package

SetPackageInfo( rec(

##  This is case sensitive, use your preferred spelling.
PackageName := "TransGrp",
Subtitle := "Transitive Groups Library",

##  See '?Extending: Version Numbers' in GAP help for an explanation
##  of valid version numbers.
Version := "2.0.2",

##  Release date of the current version in dd/mm/yyyy format.
##  Note that the clever package tools cannot deal with single digits, but
##  will whine.
Date := "13/11/2017",

##  URL of the archive(s) of the current package release, but *without*
##  the format extension(s), like '.zoo', which are given next.
##  The archive file name *must be changed* with each version of the archive
##  (and probably somehow contain the package name and version).
ArchiveURL := Concatenation(
  # avoid duplication of version number
  "http://www.math.colostate.edu/~hulpke/transgrp/transgrp",~.Version),

##  All provided formats as list of file extensions, separated by white
##  space or commas.
##      .tar.gz    the UNIX standard
##  
ArchiveFormats := ".tar.gz", # the others are generated automatically


##  Information about authors and maintainers. Specify for each person a 
##  record with the following information:
##  
##  
Persons := [
  rec(
    LastName := "Hulpke",
    FirstNames := "Alexander",
    IsAuthor := true,
    IsMaintainer := true,
    Email := "hulpke@math.colostate.edu",
    WWWHome := "http://www.math.colostate.edu/~hulpke",
    Place := "Fort Collins, CO",
    Institution := Concatenation( [
      "Department of Mathematics, ",
      "Colorado State University",
      ] )
    )
  
],

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "deposited"     for packages for which the GAP developers agreed 
##                    to distribute them with the core GAP system
##    "other"         for all other packages
##
Status := "deposited",

##  You must provide the next two entries if and only if the status is 
##  "accepted":
# format: 'name (place)'
# CommunicatedBy := "Mike Atkinson (St. Andrews)",
# format: mm/yyyy
# AcceptDate := "08/1999",

##  For a central overview of all packages and a collection of all package
##  archives it is necessary to have two files accessible which should be
##  contained in each package:
##     - A README file, containing a short abstract about the package
##       content and installation instructions.
##     - The file you are currently reading or editing!
##  You must specify URLs for these two files, these allow to automate 
##  the updating of package information on the GAP Website, and inclusion
##  and updating of the package in the GAP distribution.
##  
README_URL := "http://www.math.colostate.edu/~hulpke/transgrp/README.txt",
PackageInfoURL := "http://www.math.colostate.edu/~hulpke/transgrp/PackageInfo.g",

##  Here you  must provide a short abstract explaining the package content 
##  in HTML format (used on the package overview Web page) and an URL 
##  for a Webpage with more detailed information about the package
##  (not more than a few lines, less is ok):
##  Please, use '<span class="pkgname">GAP</span>' and
##  '<span class="pkgname">MyPKG</span>' for specifing package names.
##  
AbstractHTML := "The <span class=\"transgrp\">TransGrp</span> package provides \
the library of transitive groups.",

PackageWWWHome := "http://www.math.colostate.edu/~hulpke/transgrp",
                  
##  On the GAP Website there is an online version of all manuals in the
##  GAP distribution. To handle the documentation of a package it is
##  necessary to have:
##     - an archive containing the package documentation (in at least one 
##       of HTML or PDF-format, preferably both formats)
##     - the start file of the HTML documentation (if provided), *relative to
##       package root*
##     - the PDF-file (if provided) *relative to the package root*
##  For links to other package manuals or the GAP manuals one can assume 
##  relative paths as in a standard GAP installation. 
##  Also, provide the information which is currently given in your packages 
##  init.g file in the command DeclarePackage(Auto)Documentation
##  (for future simplification of the package loading mechanism).
##  
##  Please, don't include unnecessary files (.log, .aux, .dvi, .ps, ...) in
##  the provided documentation archive.
##  
# in case of several help books give a list of such records here:
PackageDoc := rec(
  # use same as in GAP            
  BookName := "transgrp",
  ArchiveURLSubset := [ "doc/manual.pdf"],
  PDFFile := "doc/manual.pdf",
  HTMLStart:="htm/chapters.htm",
  # the path to the .six file used by GAP's help system
  SixFile := "doc/manual.six",
  # a longer title of the book, this together with the book name should
  # fit on a single text line (appears with the '?books' command in GAP)
  LongTitle := "Transitive Groups Library",
  # Should this help book be autoloaded when GAP starts up? This should
  # usually be 'true', otherwise say 'false'. 
  Autoload := true
),


##  Are there restrictions on the operating system for this package? Or does
##  the package need other packages to be available?
Dependencies := rec(
  # GAP version, use version strings for specifying exact versions,
  # prepend a '>=' for specifying a least version.
  GAP := ">=4.9",
  # list of pairs [package name, (least) version],  package name is case
  # insensitive, least version denoted with '>=' prepended to version string.
  # without these, the package will not load
  NeededOtherPackages := [],
  SuggestedOtherPackages := [],
  ExternalConditions := []
),

## Provide a test function for the availability of this package, see
## documentation of 'Declare(Auto)Package', this is the <tester> function.
## For packages which will not fully work, use 'Info(InfoWarning, 1,
## ".....")' statements. For packages containing nothing but GAP code,
## just say 'ReturnTrue' here.
## (When this is used for package loading in the future the availability
## tests of other packages, as given above, will be done automatically and
## need not be included here.)
AvailabilityTest := ReturnTrue,

##  If the default banner does not suffice then provide a string that is
##  printed when the package is loaded (not when it is autoloaded or if
##  command line options `-b' or `-q' are given).

##  *Optional*: Here you can list some keyword related to the topic 
##  of the package.
Keywords := ["Transitive Groups Library"]

));


