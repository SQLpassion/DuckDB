-- Enable execution timing
.timer on

-- Load file customer.parquet
.print *** Loading file customer.parquet... ***
create table customer as select * from read_parquet('customer.parquet');
.print

-- Load file lineitem.parquet
.print *** Loading file lineitem.parquet... ***
create table lineitem as select * from read_parquet('lineitem.parquet');
.print

-- Load file nation.parquet
.print *** Loading file nation.parquet... ***
create table nation as select * from read_parquet('nation.parquet');
.print

-- Load file orders.parquet
.print *** Loading file orders.parquet... ***
create table orders as select * from read_parquet('orders.parquet');
.print

-- Load file part.parquet
.print *** Loading file part.parquet... ***
create table part as select * from read_parquet('part.parquet');
.print

-- Load file partsupp.parquet
.print *** Loading file partsupp.parquet... ***
create table partsupp as select * from read_parquet('partsupp.parquet');
.print

-- Load file region.parquet
.print *** Loading file region.parquet... ***
create table region as select * from read_parquet('region.parquet');
.print

-- Load file supplier.parquet
.print *** Loading file supplier.parquet... ***
create table supplier as select * from read_parquet('supplier.parquet');
.print

-- Execute TPC-H query #1
.print *** Executing TPC-H query #1... ***
pragma tpch(1);
.print

-- Execute TPC-H query #2
.print *** Executing TPC-H query #2... ***
pragma tpch(2);
.print

-- Execute TPC-H query #3
.print *** Executing TPC-H query #3... ***
pragma tpch(3);
.print

-- Execute TPC-H query #4
.print *** Executing TPC-H query #4... ***
pragma tpch(4);
.print

-- Execute TPC-H query #5
.print *** Executing TPC-H query #5... ***
pragma tpch(5);
.print

-- Execute TPC-H query #6
.print *** Executing TPC-H query #6... ***
pragma tpch(6);
.print

-- Execute TPC-H query #7
.print *** Executing TPC-H query #7... ***
pragma tpch(7);
.print

-- Execute TPC-H query #8
.print *** Executing TPC-H query #8... ***
pragma tpch(8);
.print

-- Execute TPC-H query #9
.print *** Executing TPC-H query #9... ***
pragma tpch(9);
.print

-- Execute TPC-H query #10
.print *** Executing TPC-H query #10... ***
pragma tpch(10);
.print

-- Execute TPC-H query #11
.print *** Executing TPC-H query #11... ***
pragma tpch(11);
.print

-- Execute TPC-H query #12
.print *** Executing TPC-H query #12... ***
pragma tpch(12);
.print

-- Execute TPC-H query #13
.print *** Executing TPC-H query #13... ***
pragma tpch(13);
.print

-- Execute TPC-H query #14
.print *** Executing TPC-H query #14... ***
pragma tpch(14);
.print

-- Execute TPC-H query #15
.print *** Executing TPC-H query #15... ***
pragma tpch(15);
.print

-- Execute TPC-H query #16
.print *** Executing TPC-H query #16... ***
pragma tpch(16);
.print

-- Execute TPC-H query #17
.print *** Executing TPC-H query #17... ***
pragma tpch(17);
.print

-- Execute TPC-H query #18
.print *** Executing TPC-H query #18... ***
pragma tpch(18);
.print

-- Execute TPC-H query #19
.print *** Executing TPC-H query #19... ***
pragma tpch(19);
.print

-- Execute TPC-H query #20
.print *** Executing TPC-H query #20... ***
pragma tpch(20);
.print

-- Execute TPC-H query #21
.print *** Executing TPC-H query #21... ***
pragma tpch(21);
.print

-- Execute TPC-H query #22
.print *** Executing TPC-H query #22... ***
pragma tpch(22);
.print