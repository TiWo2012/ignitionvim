local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

require("luasnip").add_snippets('cpp', {
  s('main', {
    t('int main(int argc, char **argv) {'),
    i(0),
    t('  return 0;'),
    t('}'),
  }),
  s('print', {
    t('printf("'),
    i(0),
    t('");'),
  }),
  s('func', {
    i(0, 'void'),
    t(' '),
    i(1, 'name'),
    t('('),
    i(2, 'args'),
    t(') {'),
    i(3),
    t('}'),
  }),
  s('io', {
    t('#include <cstdio>')
  }),
  s('struct', {
    t('struct '),
    i(0, 'name'),
    t(' {'),
    i(1),
    t('};')
  })
})
