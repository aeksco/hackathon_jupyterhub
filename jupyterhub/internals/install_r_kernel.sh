echo "INSTALLING R MARKDOWN KERNEL"
conda install -c r r-essentials -y

# R packages including IRKernel which gets installed globally.
conda config --system --append channels r

# R Package installations...
conda install --quiet --yes \
'rpy2=2.8*' \
'r-base=3.3.2' \
'r-irkernel=0.7*' \
'r-plyr=1.8*' \
'r-devtools=1.12*' \
'r-tidyverse=1.0*' \
'r-shiny=0.14*' \
'r-rmarkdown=1.2*' \
'r-forecast=7.3*' \
'r-rsqlite=1.1*' \
'r-reshape2=1.4*' \
'r-nycflights13=0.2*' \
'r-caret=6.0*' \
'r-rcurl=1.95*' \
'r-crayon=1.3*' \
'r-randomforest=4.6*'

# Conda clean & permissions fix
conda clean -tipsy
fix-permissions $CONDA_DIR