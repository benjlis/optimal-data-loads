\copy companies from 'companies.csv' CSV
-- drop PK/FK constraints....and any additional indexes
alter table companies drop constraint companies_managing_lou_fkey;
alter table companies drop constraint companies_pkey;
-- COPY companies data
\copy companies from 'companies.csv' CSV
-- recreate PK/FK constraints
alter table companies add primary key (lei);
alter table companies add foreign key (managing_lou) references companies;
-- disable logging
alter table companies set unlogged;
\copy companies from 'companies.csv' CSV
alter table companies set logged;
