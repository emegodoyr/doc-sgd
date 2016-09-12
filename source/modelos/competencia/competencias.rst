.. _modulo-competencias:

Modelo: competencias
--------------------------

Modelo relacional para el modulo.


referencia del modelo:

.. image:: model-competencias.png
   :height: 350px
   :scale: 50 %
   :alt: modelo relacional competencias
   :align: left


.. glossary::

   Tablas
      * competencia
      * version
      * tipo
      * indicadorConducta
      * actividadClave
      * criterioDesempeno

   Relaciones
      * competencia 1...* version
      * competencia 1...1 tipo
      * tipo 1...n indicadorConducta
      * tipo 1...n actividadClave
      * actividadClave 1...n criterioDesempeno



.. literalinclude:: competencias.sql
   :caption: competencias.sql
   :name: competencias-sql



Recursos: :download:`PNG <model-competencias.png>` | :download:`SQL <competencias.sql>`



