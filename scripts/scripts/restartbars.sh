#!/usr/bin/env bash

pkill polybar
polybar stats &
polybar workspace &
