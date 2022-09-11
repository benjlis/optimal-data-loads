create table corps (
  lei                            text primary key,
  lname                          text not null,
  jurisdiction                   text,
  legal_form                     text not null,
  entity_status                  text not null,
  reg_status                     text not null,
  init_reg                       date not null,
  next_renewal                   date not null,
  last_update                    timestamp with time zone not null,
  managing_lou                   text not null foreign key references corps);
