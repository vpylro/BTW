# BTW - Bioinformatics Through Windows


# Introduction

BTW offers a fully automated and user-friendly package, along with a comprehensive, easy-to-follow pipeline for microbial metataxonomic analysis in the Windows Subsystem for Linux (WSL). It integrates several open-access tools to provide users with a complete workflow for processing 16S rRNA data, from raw sequencing reads to diversity-related conclusions. The package includes data quality filtering, clustering, taxonomic assignment, and additional statistical analyses, all directly within WSL. This eliminates the need for users to transition from Windows to Linux. BTW aims to enhance the use of NGS amplicon data by providing Windows users with rapid access to essential bioinformatics tools.


# Installing BTW
BTW package installation instructions can be found at http://www.brmicrobiome.org/tutorialbtw (steps 6 and 7).

*Installing the BTW package*

- Open the installed Ubuntu on Windows. 

- In the terminal, type: 
wget https://raw.githubusercontent.com/vpylro/BTW/master/conda.sh

- Then type: 
sudo bash conda.sh

Your UNIX account password will be requested. Type your password and then ENTER.

>Please close the terminal section and reopen it.<

- In the terminal, type: 
wget https://raw.githubusercontent.com/vpylro/BTW/master/win_bmp.sh

- Then type: 
sudo bash win_bmp.sh 

Your UNIX account password will be requested. Type your password and then ENTER.
The BTW package will be installed automatically. This may take several minutes, depending on your computer and internet connection speeds.

- After completing the installation, please close Ubuntu and reopen it.
The BMP-recommended pipeline for 16S rRNA data analyses is available at http://www.brmicrobiome.org/win16s


# Getting Help

Please contact us: *contact@brmicrobiome.org*


# BTW Team

Daniel Kumazawa Morais (Institute of Microbiology of the Czech Academy of Sciences - Czech Republic)

Fausto Gonçalves dos Santos (René Rachou Research Center - Brazil)

Luiz Fernando Wurdig Roesch (Universidade Federal do Pampa - Brazil)

Marc Redmile-Gordon (Natural England - United Kingdom)

Petr Baldrian (Institute of Microbiology of the Czech Academy of Sciences - Czech Republic)

Fernando Dini Andreote (ESALQ/USP - Brazil)

Victor Satler Pylro (ESALQ/USP - Brazil)


# Citation

Morais et al. (2018), BTW—Bioinformatics Through Windows: an easy-to-install package to analyze marker gene data. PeerJ 6:e5299; DOI 10.7717/peerj.5299.
