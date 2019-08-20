# mylib

Libreria di esempio per esperimentio con dub locale e [dubproxy](https://github.com/symmetryinvestments/dubproxy)

## Uso con dubproxy

Si deve creare il file con il pacchetto. Usando `dummy`:

```
$ dubproxy --dummy
```

Si crea il file `dubproxy.json`

```
{
	"packages" : {
		"dummy" : "https://does_not_exist.git"
	}
}
```

Assegnare il nome corretto:
```
{
	"packages" : {
		"mylib" : "https://gitlab.com/o3o_d/mylib.git"
	}
}
```

e quindi

```
$ dubproxy -i dubproxy.json -g mylib
```

Dove:
```
-g --get Get a precific package. "-g dub" will fetch dub and create
			folders for all version tags for dub. "-g dub:1.1.0" will
			try to get dub and create a package for v1.1.0.
			"g dub:~master" will try get dub and create a package for
			~master
-i --proxyFile The filename of the dubproxy file to search packages in
```

`-i` si puo' omettere:
```
$ dubproxy -g mylib
```


