void main() {
  var k = compareVersion("01", "1");
  print(k);
}

int compareVersion(String version1, String version2) {
  var v1 = version1.split('.');
  var v2 = version2.split('.');

  int length = v1.length > v2.length ? v1.length : v2.length;
  for (int i = 0; i < length; i++) {
    var num1 = i < v1.length ? int.parse(v1[i]) : 0;
    var num2 = i < v2.length ? int.parse(v2[i]) : 0;
    if (num1 < num2) {
      return -1;
    } else if (num1 > num2) {
      return 1;
    }
  }
  return 0;
}

/*
int compareVersion(String version1, String version2) {
  int check = 0;
  String v1 = '';
  String v2 = '';
  version1.split('.').forEach((element) {
    if (!element.contains('0')) {
      v1 += element;
    }
  });
  version2.split('.').forEach((element) {
    if (!element.contains('0')) {
      v2 += element;
    }
  });
  print('Version 1 : $v1');
  print('Version 2 : $v2');
  if (int.parse(v1) < int.parse(v2)) {
    check = -1;
  } else if (int.parse(v1) > int.parse(v2)) {
    check = 1;
  }
  return check;
}
*/
