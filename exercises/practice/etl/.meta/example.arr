provide: translate end
include string-dict

fun translate(legacy):
  result = block:
    var result = [mutable-string-dict:]
    (legacy.keys().to-list()).each(lam(n): legacy.get-value(n).each(lam(letter): result.set-now(string-to-lower(letter), n) end) end)
    result
  end
  result
end
