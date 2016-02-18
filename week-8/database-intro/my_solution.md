# 8.4 Database Intro

## What are databases for?

Databases are used to store massive amounts of information in an organized, retrievable, sortable manner. Databases contain a variety of information that can frequently be linked together.

## What is a one-to-many relationship?

The coolest thing about databases is how you can connect different pieces of data. This comes in to play with one-to-many relationships. In a one-to-many relationship, one bit of data may need to be linked to many bits of data. For example, you could have a database with teacher tables and student tables. One teacher would have many students, this is an example of a one-to-many relationship.

However, teachers and students can also be used as a many-to-many example. While a teacher has many students, a student may have many teachers. In order to join these two concepts, you might utilize a join table.

## What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is the main ID for a table. The primary key is a unique value for every row in a table, and it cannot be null. A foreign key links one group of data to another group of data. A foreign key to one table is the primary key for the linked table. A foreign key can be null.

## How can you select information out of a SQL database? What are some general guidelines for that?

You select information out of a SQL database using queries. You should always use CAPS when issuing SQL orders. Generally, you should select what data you would like to retrieve from the database, which table you would like to retrieve it from, and how you would like the data to be filtered, sorted, or arranged.