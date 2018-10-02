library(data.table)
library(spatstat)

spp = fread('Full_Stand_Stem_Map_Data.csv',header=T)
trees = fread('santamonica.csv',header=T)

regen= merge(trees,spp)
trees$obsDate= as.Date(trees$obsDate)


trees$species = gsub('_', ' ', trees$species)
trees$dbh_mm = trees$dbh_mm /10
setnames(trees,"SpeciesK", "species")

setcolorder(trees,c("id", "x", "y", "dbh", "species", "condition_98", "obsDate"))
trees$species = 'Pinus halepensis'
mcnickle  = trees
save(fruit,file='fruit.Rda')


C:/Users/zieg9479/Documents/R/packages/stemmaps/trees/alaska/Juneau_Lone_YellowCedar_Trees/Juneau_Lone_YellowCedar_Trees/Juneau_Lone_YellowCedar_Trees.shp
require(rgdal)
roots <- readOGR(dsn = "C:/Users/zieg9479/Documents/R/packages/stemmaps/trees/WGS84", layer = "Trees")
stems <- readOGR(dsn = "C:/Users/zieg9479/Documents/R/packages/stemmaps/trees/Map", layer = "Trees")
setcolorder(trees,c("lat", "lon", "type", "dbh"))

trees$type = as.character(trees$type)

trees = fread('croton.csv',header=T)
trees2 = fread('gerzabekTree.csv',header=T)

names(trees)[1] = 'lat'
names(trees)[2] = 'lon'
trees$obsDate= as.Date(trees$obsDate)

trees$occupied = trees$treeorplanting
trees$treeorplanting = NULL

pittsburgh=trees
save(croton,file='croton.Rda')

load('sanfran.Rda')

write.csv(pittsburgh,'pittsburgh.csv')




trees$V1=NULL
trees$obsDate = gsub('/', '-', trees$obsDate)
trees$plantingDate= as.Date(trees$plantingDate,"%m-%d-%Y")
trees$obsDate= as.Date(trees$obsDate,"%m-%d-%Y")

trees[,1][trees[,1]==''] = NA
trees[,2][trees[,2]==''] = NA
trees[,3][trees[,3]==''] = NA
trees[,4][trees[,4]==''] = NA
trees[,5][trees[,5]==''] = NA
trees[,6][trees[,6]==''] = NA
trees[,7][trees[,7]==''] = NA
trees[,8][trees[,8]==''] = NA
trees[,9][trees[,9]==''] = NA
trees[,10][trees[,10]==''] = NA
trees[,11][trees[,11]==''] = NA
trees[,12][trees[,12]==''] = NA
trees[,13][trees[,13]==''] = NA
trees[,14][trees[,14]==''] = NA
trees[,15][trees[,15]==''] = NA
trees[,16][trees[,16]==''] = NA
trees[,17][trees[,17]==''] = NA
trees[,18][trees[,18]==''] = NA
trees[,19][trees[,19]==''] = NA
trees[,20][trees[,20]==''] = NA
trees[,21][trees[,21]==''] = NA



write.csv(tampa,'tampa.csv')


###
sanfran
sandiego
tampa
ottawa
sac
philly
edmonton

str(sanfran)

lat-num
lon-num
streetAddress-chr
city-chr
postalCode-chr
occupied-logi
treeDBH-num
treeHeight-num
treeCondition
treeCrownWidth-num
genus-chr
species-chr
cultivar-chr
variety-chr
commonName-chr
overheadPowerline-logi
plantingSite-chr
obsDate-date
plantingDate-date
removalDate-date


setcolorder(sanfran,c("lat", "lon", "address",'city','postCode','occupied','dbh','height','condition','crownWidth',
                     'genus','species','cultivar','nameother','overheadPowerline','plantingSite','obsDate','plantingDate',
                     'treeRemoval'))

setcolorder(tampa,c("lat", "lon", "address",'city','postCode','occupied','dbh','height','cbh',
                     'genus','species','cultivar','overheadPowerline','plantingSite','obsDate','plantingDate'
                     ))

setcolorder(sandiego,c("lat", "lon", "address",'city','postCode','occupied','dbh','height','condition',
                     'genus','species','cultivar','nameother','obsDate','plantingDate'
                     ))

setcolorder(sac,c("lat", "lon", "address",'city','postCode','occupied','dbh','height',
                     'genus','species','cultivar','nameother','obsDate','plantingDate'
                     ))

setcolorder(philly,c("lat", "lon", "address",'city','postCode','occupied','dbh','height','cbh','condition','canopyCondition',
                     'genus','species','cultivar','overheadPowerline','plantingSite','obsDate','plantingDate'
                     ))

setcolorder(ottawa,c("lat", "lon", "address",'city','postCode','occupied','dbh','height',
                     'genus','species','cultivar','obsDate','plantingDate'
                     ))
setcolorder(edmonton,c("lat","lon","address","city","postCode","occupied","genus","species","cultivar","dbh","obsDate","plantingDate" ))


setnames(sacramento,"streetAddress", "address")
sanfran = sanfran[, postCode:=as.character(postCode)]

trees = fread('sacremento.txt',header=T)

setcolorder(trees,c("lat", "lon", "address",'city','postCode','dbh','condition',
                     'species'
                     ))
nyc1995 = trees
save(nyc1995,file='nyc1995.Rda')
save(nyc2015,file='nyc2015.Rda')
save(nyc2005,file='nyc2005.Rda')
save(sanfran,file='sanfran.Rda')
save(tampa,file='tampa.Rda')
save(sandiego,file='sandiego.Rda')
save(philly,file='philly.Rda')
save(ottawa,file='ottawa.Rda')
save(edmonton,file='edmonton.Rda')
save(sacramento,file='sacramento.Rda')

tampa = tampa[, postCode:=as.character(postCode)]
sandiego = sandiego[, postCode:=as.character(postCode)]
philly = philly[, postCode:=as.character(postCode)]
ottawa = ottawa[, postCode:=as.character(postCode)]
sacramento = sacramento[, postCode:=as.character(postCode)]
edmonton = edmonton[, postCode:=as.character(postCode)]

sandiego$plantingDate= as.Date(sandiego$plantingDate,"%m/%d/%Y")
sandiego$obsDate= as.Date(sandiego$obsDate)



str(tampa)
str(sandiego)
str(philly)
str(ottawa)
str(sacramento)
str(edmonton)


spp = fread('cropsize2011.csv',header=T)
spp8 = fread('seed2011.csv',header=T)
spp = merge(spp,spp8,all=TRUE)
spp5 = fread('fruitdev2011.csv',header=T)
spp = merge(spp,spp5,all=TRUE)
names(spp) = c("X","Y","cropsize2011","#seeds2011","fruitdevel2011")

spp1 = fread('cropsize2012.csv',header=T)
spp3 = fread('fruitini2012.csv',header=T)
spp6 = fread('fruitdev2012.csv',header=T)
spp1 = merge(spp1,spp3,all=TRUE)
spp1 = merge(spp1,spp6,all=TRUE)
names(spp1) = c("X","Y","cropsize2012","fruitini2012","fruitdevel2012")

spp2 = fread('cropsize2013.csv',header=T)
spp4 = fread('fruitini2013.csv',header=T)
spp7 = fread('fruitdev2013.csv',header=T)
spp2 = merge(spp2,spp4,all=TRUE)
spp2 = merge(spp2,spp7,all=TRUE)
names(spp2) = c("X","Y","cropsize2013","fruitini2013","fruitdevel2013")

spp = merge(spp,spp1,all=TRUE)
spp = merge(spp,spp2,all=TRUE)



