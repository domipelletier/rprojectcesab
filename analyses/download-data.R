# Download project raw data
#
# This script will download the PanTHERIA and WWF WildFinder datasets. The
# four files will be stored in `data/`.
# 
# All functions used in the script have been developed for this project
# and can be found in the folder R/.
#
# Dominique Pelletier <dpellet@ifremer.fr>
# 2023/11/20

## Download PanTHERIA database ----

dl_pantheria_data(overwrite = FALSE)


## Download WWF WildFinder database ----

dl_wildfinder_data(overwrite = FALSE)