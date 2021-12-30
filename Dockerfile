FROM ubi8/ubi:8.3

LABEL description="Teste da instalação do blog"

RUN oc login -u  frhqle -p  5aa207c0c76247b28786

RUN oc new-project fiap-aso-grupo14 --display-name 'fiap-aso-grupo14murakami'

RUN oc create -f https://raw.githubusercontent.com/marciotorquato/fiap-aso6-ocp/main/deployment-blog.yml

RUN oc create -f https://raw.githubusercontent.com/rmurakami/mbaronaldo/main/hpa-scale.yml

RUN oc create -f https://raw.githubusercontent.com/rmurakami/mbaronaldo/main/hpa-scale.yml

RUN Oc create -f https://raw.githubusercontent.com/rmurakami/mbaronaldo/main/database-blog.yml 
