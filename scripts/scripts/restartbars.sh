#!/usr/bin/env bash

pkill n30f
pkill polybar
polybar music &
polybar workspace &
polybar time &
