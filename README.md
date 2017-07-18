# Docker multi-stage demo

Shows how to use multi-stage docker builds to create devel and runtime images.

```bash
$ make
...
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ccache              runtime             c50710c43e23        1 second ago        189MB
ccache              devel               0a9a4eaff1d8        2 seconds ago       383MB
```

## Devel image

* Install development packages for dependencies
* Download source
* Build
* Install

## Runtime image

* Install runtime packages for dependencies
* Copy pre-built installation from devel image
