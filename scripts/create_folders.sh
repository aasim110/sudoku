#!/usr/bin/env bash
set -euo pipefail

mkdir -p \
  lib/app/router \
  lib/app/theme \
  lib/app/providers \
  lib/core/constants \
  lib/core/extensions \
  lib/core/utils \
  lib/core/errors \
  lib/core/audio \
  lib/core/persistence \
  lib/core/time \
  lib/features/onboarding/presentation/screens \
  lib/features/gameplay/presentation/screens \
  lib/features/daily_challenge/presentation/screens \
  lib/features/stats/presentation/screens \
  lib/features/achievements/presentation/screens \
  lib/features/settings/presentation/screens \
  lib/features/themes/presentation/screens \
  lib/shared/widgets \
  lib/shared/animations \
  test/core \
  test/features/sudoku_engine
