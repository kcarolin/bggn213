Class 11
================

``` r
data <- read.csv("/Users/KICAROLINO/Desktop/BGGN213/bggn213/data_summary.csv")
data
```

    ##   Experimental.Method Proteins Nucleic.Acids Protein.NA.Complex Other
    ## 1               X-Ray   124770          1993               6451    10
    ## 2                 NMR    10988          1273                257     8
    ## 3 Electron Microscopy     2057            31                723     0
    ## 4               Other      250             4                  6    13
    ## 5        Multi Method      127             5                  2     1
    ##    Total
    ## 1 133224
    ## 2  12526
    ## 3   2811
    ## 4    273
    ## 5    135

``` r
data$Total[3] + data$Total[3]
```

    ## [1] 5622

``` r
sum(data$Total)
```

    ## [1] 148969

``` r
q1a <- (data$Total[1] + data$Total[3]) / sum(data$Total) *100
q1a
```

    ## [1] 91.31766

``` r
# names(pre.by.method) <- rownames(data)
```

``` r
q1b <- sum(data$Proteins) / sum(data$Total) *100
q1b
```

    ## [1] 92.76561

``` r
library(bio3d)
pdb <- read.pdb("1hsg")
```

    ##   Note: Accessing on-line PDB file

``` r
pdb
```

    ## 
    ##  Call:  read.pdb(file = "1hsg")
    ## 
    ##    Total Models#: 1
    ##      Total Atoms#: 1686,  XYZs#: 5058  Chains#: 2  (values: A B)
    ## 
    ##      Protein Atoms#: 1514  (residues/Calpha atoms#: 198)
    ##      Nucleic acid Atoms#: 0  (residues/phosphate atoms#: 0)
    ## 
    ##      Non-protein/nucleic Atoms#: 172  (residues: 128)
    ##      Non-protein/nucleic resid values: [ HOH (127), MK1 (1) ]
    ## 
    ##    Protein sequence:
    ##       PQITLWQRPLVTIKIGGQLKEALLDTGADDTVLEEMSLPGRWKPKMIGGIGGFIKVRQYD
    ##       QILIEICGHKAIGTVLVGPTPVNIIGRNLLTQIGCTLNFPQITLWQRPLVTIKIGGQLKE
    ##       ALLDTGADDTVLEEMSLPGRWKPKMIGGIGGFIKVRQYDQILIEICGHKAIGTVLVGPTP
    ##       VNIIGRNLLTQIGCTLNF
    ## 
    ## + attr: atom, xyz, seqres, helix, sheet,
    ##         calpha, remark, call

``` r
library("bio3d.view")

view(pdb, "overview", col="sse")
```

    ## Computing connectivity from coordinates...

``` r
ca.inds<- atom.select(pdb, "calpha")
ca.inds
```

    ## 
    ##  Call:  atom.select.pdb(pdb = pdb, string = "calpha")
    ## 
    ##    Atom Indices#: 198  ($atom)
    ##    XYZ  Indices#: 594  ($xyz)
    ## 
    ## + attr: atom, xyz, call

``` r
#ligand.pdb <- trim.pdb(pdb, inds)
```
