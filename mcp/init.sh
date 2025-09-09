#! /bin/sh

ln -f $MYCONF/mcp/mcp.global.json $XDG_CONFIG_HOME/github-copilot/intellij/mcp.json

mkdir -p $MYCONF/.idea
ln -f $MYCONF/mcp/mcp.config.json $MYCONF/.idea/mcp.json
