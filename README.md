# sunjing-week4-dynamodb

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

TODO: not execute this one since "is not authorized to perform: ..."
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
