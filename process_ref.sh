
mkdir -p ref/eur_bcfs

#for i in {1..22}; do
    i=22
    bcftools view -S ref/EUR.sample1 ref/bcfs/ALL.chr${i}.phase3_v5.shapeit2_mvncall_integrated.noSingleton.genotypes.recode.bcf -Ob -o ref/eur_bcfs/ALL.chr${i}.phase3_v5.shapeit2_mvncall_integrated.noSingleton.genotypes.recode.bcf 
    bcftools index -c ref/eur_bcfs/ALL.chr${i}.phase3_v5.shapeit2_mvncall_integrated.noSingleton.genotypes.recode.bcf  
    Minimac4/bin/minimac4 --update-m3vcf ref/m3vcfs/${i}.1000g.Phase3.v5.With.Parameter.Estimates.m3vcf.gz > ref/m3vcfs/${i}.1000g.Phase3.v5.With.Parameter.Estimates.msav
#done
