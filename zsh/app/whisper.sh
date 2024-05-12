#!/bin/bash
#https://github.com/openai/whisper
# audio / video related
# brew install ffmpeg
# install whisper
# pip install -U openai-whisper

alias record_audio="rm -rf //tmp/audio.mp3 ; ffmpeg -f avfoundation -i \":1\" //tmp/audio.mp3 -t 3600"
alias transcript="record_audio ; whisper //tmp/audio.mp3 --model small; cat //tmp/audio.txt"
alias transcript_fr="record_audio ; whisper //tmp/audio.mp3 --model small --language=fr; cat //tmp/audio.txt"
alias transcript_en="record_audio ; whisper //tmp/audio.mp3 --model small --language=en; cat //tmp/audio.txt"
