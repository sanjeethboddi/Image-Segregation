# Given a Source Folder with files as Year-month-day.extenstion are segregated into
# Year
#   |-- Month
#         |-- Day 1

source=~/Downloads/photos
destination=~/Downloads/Segregated_Photos

rm -f $source/README.md

echo ============ Segregating ============
for i in `ls $source`;
do
    year=`echo $i|cut -d"-" -f1`
    month=`echo $i|cut -d"-" -f2`
    fname=`echo $i|cut -d"-" -f3`
    mkdir -p $destination/$year/$month
    mv $source/$i $destination/$year/$month/$fname
done
