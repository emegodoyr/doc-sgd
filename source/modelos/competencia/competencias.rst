.. _competencias:

============
Competencias
============

=================
Modelo relacional
=================

referencia del modelo:

.. image:: model-competencias.png
   :height: 750px
   :scale: 50 %
   :alt: modelo relacional competencias
   :align: center

===================
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


=======
Esquema
=======

.. literalinclude:: competencias.sql
   :language: sql
   :caption: competencias.sql
   :name: competencias-sql


=====================
Recursos descargables
=====================

Recursos: :download:`PNG <model-competencias.png>` | :download:`SQL <competencias.sql>`



