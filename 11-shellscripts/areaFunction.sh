#!/bin/bash
echo "CALCULAR AREA DE UN RECTANGULO"
echo "Base:"
read base
echo "Altura:"
read altura

Rectangle_Area() {
area=$(($1 * $2))
echo "Area del rectángulo : $area"
}

Rectangle_Area $base $altura