import csv
import psycopg2


insert_stmt = """
insert into companies
    (lei, lname, jurisdiction, legal_form, entity_status, reg_status, init_reg,
     next_renewal, last_update, managing_lou)
values
    (%s, %s, %s, %s, %s, %s, %s,
     %s, %s, %s)
"""

conn = psycopg2.connect("")
# conn.autocommit = True
cursor = conn.cursor()
with open('companies.csv') as csvfile:
    creader = csv.reader(csvfile)
    for row in creader:
        cursor.execute(insert_stmt, row)
conn.commit()
# row_count = sum(1 for row in creader)
