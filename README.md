# sunjing-week4-dynamodb

The code is hardcode to CRUD one item into/from DDB.

## Deploy

Dependencies:
The DDB must exist.

Step1: Package cloudformation template

```bash
./delivery/deploy.sh
```

Step2: Deploy

```bash
./delivery/deploy.sh deploy
```

## Local start

Use `pip install localstack` to install local stack if you don't have it.
Use `awscli-local` to install local cli if you don't have it.

Start local stack server:

```bash
localstack start
```

Create DDB in localstack:

```bash
./delivery/start-local.sh
```

Run lambda in local

```bash
export TABLE_NAME=sunjing
export REGION=ap-southeast-1
export APP_ENV=local

yarn local
```



## Practice

### create table

```bash
./scripts/create-table.sh
```

### update table

```bash
./scripts/update-table.sh
```
### put 6 items into table

```bash
./scripts/insert-data.sh
```

### update item

```bash
./scripts/update-data.sh
```

### read item from table by key

```bash
./scripts/get-data.sh
```

### query from table by key

```bash
./scripts/query-data.sh
```

### scan table with filter

```bash
./scripts/scan-table.sh
```

### create global secondary index on memberName

```bash
./scripts/create-index.sh
```

### auery item by memberName(index)

```bash
./scripts/query-data-by-index.sh
```

### delete table

```bash
./scripts/delete-table.sh
```

### create backup

```bash
./scripts/create-backup.sh
``` 

### restore table from backup

```bash
./scripts/restore-table.sh
```

### create point-in-time backup

```bash
./scripts/create-point-in-time-backup.sh
```

### restore table by point-in-time

Should execute the comment code first to find out the `EarliestRestorableDateTime` and `LatestRestorableDateTime`.

```bash
./scripts/restore-table-to-point-in-time.sh
```
