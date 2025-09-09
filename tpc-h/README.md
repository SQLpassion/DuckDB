This demo shows how to work with the TPC-H benchmark in DuckDB.

# Setup
First of all, we need to install tpchgen-cli (see https://github.com/clflushopt/tpchgen-rs/blob/main/tpchgen-cli for more information), 
which is a command line tool that can generate the TPC-H dataset very fast.

We use that tool, because it is faster in generating the dataset than the built-in functionality of the TPCH extension of DuckDB.

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
RUSTFLAGS='-C target-cpu=native' cargo install tpchgen-cli
```

In the next step you can generate the necessary .parquet files (`-s` is the scaling factor):

```bash
tpchgen-cli -s 10 --format=parquet
```

Then we can start DuckDB::

```bash
# Memory only (fast):
/home/klaus/.duckdb/cli/latest/duckdb

# With persistence (slower): 
/home/klaus/.duckdb/cli/latest/duckdb tpc-h.duckdb
```

Inside DuckDB, you can execute the file `tpc-h.sql`, which loads all `.parquet` files, and finally executes all 22 TPC-H queries.

```bash
.read tpc-h.sql
```

# Performance Troubleshooting
With a scale factor of 100, the `.parquet` files are already more than 40 GB in size. This means that DuckDB has to spill a lot during the query execution to the file system.

You can speed up the whole process by putting the folder `.tmp` to a different physical drive by changing the configuration option `temp_directory`:

```bash
set temp_directory='/media/klaus/Data 3';
select current_setting('temp_directory');
```
