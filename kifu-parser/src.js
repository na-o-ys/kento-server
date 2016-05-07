import JKFPlayer from "json-kifu-format"

window.parse = (text) => {
  return JKFPlayer.parse(text).kifu
}
