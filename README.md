# Documentación estructural SGD

_Version_: ```v0.0.1```

_Core_: ```Sphinx```

_Theme_: ```Read the docs```


____________

# Como compilar

_Requerimietos para compilar:_

- Python: ```v2.7```
- Python-pip: ```v7.1.0```

si cumples con la dependencias, ejecuta el siguiente comando en tu terminal:

```pip install -r requirements.txt```

una vez cumplidos los requerimientos, debemos abrir un terminal e ir a nuestro proyecto y situarnos 
en el mismo lugar donde esta el archivo ```Makefile``` (la raiz del proyecto).

localizado el archivo desde nuestro terminal debemos ejecutar el siguiente comando:

```make html```

> si quiere hacer un _watch_ de la documentacion, para no esta ejecutando a cada momento ```make html```
> ejecuta el siguiente comando
>
> ```sphinx-autobuild source build/html```
>
> solo podras ejecutar este comando si cumples con todos los requerimientos para compilar


si tenemos exito, el sistema automaticamente creara una carpeta llamada ```build```

al interior de esta carpeta podremos ver otro directorio llamado ```html``` , al interior del este ultimo
podremos encontrar la documentacion en formato _web_, para poder visualizar la documentación y en consideracion de que tenemos
instalado ```python 2.7``` en nuestro sistema, ejecutaremos el siguiente comando estando situados en ```doc-sgd/build/html```

```python -m SimpleHTTPServer 9000```

este comando disponibiliza nuestra documentacion en el puerto 9000 (podemos usar el puerto que mas nos acomode)

[Ir a mi host local](http://localhost:9000)

>al momento de ejecutar el SimpleHTTPServer, este no queda corriendo en segundo plano, 
>por lo cual no tendremos disponible el terminal donde ejecutamos la accion para su uso, se recomienda abrir otro terminal para ejecutar el make


en caso te aplicar cambios a los archivos con extension ```rst``` y esperemos ver el resultado reflejado en la version web, debemos 
aplicar el comando ```make html``` y luego refrescar la pagina donde estamos observando la documentacion

para mayor información comunicarse con Moisés Godoy o Andres Santamaria