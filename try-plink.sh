plink --bfile chr22 --exclude QC/Exclude-arrays_QCed-1000G.txt --make-bed --out TEMP1
plink --bfile TEMP1 --update-map QC/Chromosome-arrays_QCed-1000G.txt --update-chr --make-bed --out TEMP2
plink --bfile TEMP2 --flip QC/Strand-Flip-arrays_QCed-1000G.txt --make-bed --out TEMP4
plink --bfile TEMP4 --a2-allele QC/Force-Allele1-arrays_QCed-1000G.txt --make-bed --out arrays_QCed-updated
plink --bfile arrays_QCed-updated --real-ref-alleles --make-bed --chr 22 --out chr22/arrays_QCed-updated-chr22
plink --bfile arrays_QCed-updated --real-ref-alleles --recode vcf --chr 22 --out chr22/arrays_QCed-updated-chr22
bgzip chr22/arrays_QCed-updated-chr22.vcf
tabix chr22/arrays_QCed-updated-chr22.vcf.gz
rm chr22/*.bed
rm chr22/*.fam
rm TEMP*
