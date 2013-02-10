if [ "$1" = "sbt" ]; then            
  if [ -n "$JENV_OPTIONS" ]; then
    if [ -z "$SBT_OPTS" ]; then
      exportVariable SBT_OPTS $JENV_OPTIONS
      unset JENV_OPTIONS        
    else
      echo "SBT_OPTS is set and not overridden by jenv" >&2
    fi
  fi      
fi
