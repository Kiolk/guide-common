enum PointType { first, last, middle }

PointType getPointTypeFromListPosition(int index, int listLength) {
  if (index == 0) {
    return PointType.first;
  } else if (index == listLength - 1) {
    return PointType.last;
  } else {
    return PointType.middle;
  }
}
