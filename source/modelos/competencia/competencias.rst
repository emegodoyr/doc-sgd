.. _modelo-relacional-competencias:


Modelo relacional: competencias
===============================


referencia del modelo:

.. image:: model-competencias.png
   :height: 750px
   :scale: 50 %
   :alt: modelo relacional competencias
   :align: center


.. _relaciones-competencias:


Tablas y Relaciones
===================


.. glossary::

   Tablas
      * competencia
      * version
      * especializacionCompetencia
      * indicadorConducta
      * actividadClave
      * criterioDesempeno

   Relaciones
      * competencia 1...* version
      * especializacionCompetencia n...n competencia
      * especializacionCompetencia n...n indicadorConducta (no mandatorio)
      * especializacionCompetencia n...n actividadClave (no mandatorio)
      * actividadClave 1...n criterioDesempeno


.. _esquema-competencias:

Esquema
=======

.. literalinclude:: competencias.sql
   :language: sql
   :caption: competencias.sql
   :name: competencias-sql


.. _recursos-competencias:

Recursos descargables
=====================

Recursos: :download:`PNG <model-competencias.png>` | :download:`SQL <competencias.sql>`



