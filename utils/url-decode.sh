#!/bin/bash
set -x

# https://github.com/torokmark/assert.sh/blob/main/assert.sh

log_failure() {
  printf "${RED}✖ %s${NORMAL}\n" "$@" >&2
}

assert_eq() {
  local expected="$1"
  local actual="$2"
  local msg="${3-}"

  if [ "$expected" == "$actual" ]; then
    return 0
  else
    [ "${#msg}" -gt 0 ] && log_failure "$expected == $actual :: $msg" || true
    return 1
  fi
}

urldecode() {
    # urldecode <string>
    local url_encoded="${1//+/ }"
    printf '%b' "${url_encoded//%/\\x}"
}

assert_eq "$(urldecode "multibyte%20%E3%82%B2%E3%83%BC%E3%83%9E%E3%82%AC%E3%81%A7%E5%A5%BD%E8%A9%95")" "multibyte ゲーマガで好評"

assert_eq "$(urldecode "%C2%A2%E2%82%AC")" "¢€"

assert_eq "$(urldecode "multibyte%20%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD%EF%BF%BD")"  "multibyte ���������������������"
