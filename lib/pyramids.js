pir = (size) => {
  const half = (size - 1) / 2
  const haut = [...Array(half)].map((val, index) => [
    [...Array(half - index)].map(() => ' ').join(''),
    [...Array((index * 2) + 1)].map(() => '*').join(''),
  ].join(''))

  const bas = [...haut].reverse()

  return [
    ...haut,
    [...Array(size + 1)].join('*'),
    ...bas,
  ].forEach((line) => console.log(line))
}

