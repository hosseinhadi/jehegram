double linearRamp(
  double size, {
  required double size1,
  required double result1,
  required double size2,
  double result2 = 0,
}) {
  return (result2 - result1) / (size2 - size1) * (size - size1) + result1;
}

double cuttedRamp(
  double size, {
  required double size1,
  required double result1,
  required double size2,
  double result2 = 0,
}) {
  double min = result1 <= result2 ? result1 : result2;
  double max = result1 <= result2 ? result2 : result1;
  return ((result2 - result1) / (size2 - size1) * (size - size1) + result1)
      .clamp(min, max);
}
