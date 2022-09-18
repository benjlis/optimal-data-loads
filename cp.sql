\timing
\copy companies from 'companies.csv' CSV
-- drop PK/FK constraints....and any additional indexes
alter table companies drop constraint companies_pkey;
-- COPY companies data
\copy companies from 'companies.csv' CSV
-- recreate PK/FK constraints
alter table companies add primary key (lei);
-- disable logging
alter table companies set unlogged;
\copy companies from 'companies.csv' CSV
alter table companies set logged;
