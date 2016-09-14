.. _modelo-relacional-proceso-evaluacion:

Modelo relacional: procesos evaluaciones
========================================

referencia del modelo:

.. image:: model-procesosEvaluaciones.png
   :alt: modelo relacional procesos evaluaciones
   :align: center


.. _relaciones-proceso-evaluacion:


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


.. _esquema-proceso-evaluacion:

Esquema
=======

.. literalinclude:: procesosEvaluaciones.sql
   :language: sql
   :caption: procesosEvaluaciones.sql
   :name: procesosEvaluaciones-sql


.. _recursos-proceso-evaluacion:

Recursos descargables
=====================

Recursos: :download:`PNG <model-procesosEvaluaciones.png>` | :download:`SQL <procesosEvaluaciones.sql>`