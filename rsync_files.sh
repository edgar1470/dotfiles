#!/bin/bash

rsync -av --progress  ./.config  ~
rsync -av --progress  ./.local ~
