PINTOS_PROJECT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
export SWD="$PINTOS_PROJECT_DIR/toolchain"
export PREFIX="$SWD/x86_64"
export PINTOS="$PINTOS_PROJECT_DIR/pintos"
unset PINTOS_PROJECT_DIR
case ":$PATH:" in
  *":$PREFIX/bin:"*) ;;
  *) export PATH="$PREFIX/bin:$PATH" ;;
esac
case ":${LD_LIBRARY_PATH:-}:" in
  *":$PREFIX/lib:"*) ;;
  *) export LD_LIBRARY_PATH="$PREFIX/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}" ;;
esac
