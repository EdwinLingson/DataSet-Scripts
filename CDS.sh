#!/bin/bash
./ipps.sh
octave-cli IR2G.m
octave-cli LD.m
octave-cli SD.m
clear all;

