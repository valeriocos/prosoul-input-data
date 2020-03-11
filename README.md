This repo contains a sample of data used to play with Prosoul.

After unpacking the file gsoc-prosoul.tar.xz, upload the scava-metrics index and mapping to a local instance of ElasticSearch.
Then, you can run Prosoul and perform an assessment using the scava-metrics index.

You can use the scripts provided in this repo to upload/dump the data.

### Upload

```buildoutcfg
> $ cd prosoul-input-data
> $ ./upload-all.sh
```

### Dump

```buildoutcfg
> cd prosoul-input-data
> $ ./dump-all.sh
```

