#!/usr/bin/env bash

pkill n30f
pkill polybar
polybar music &
polybar battery &
polybar workspace &
polybar time &
