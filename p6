#include <iostream>
#include <string>
using namespace std;
bool L1(string w) {
if (w.length() < 4) return false;
return (w.substr(0, 2) == w.substr(w.length() - 2, 2));
}
bool L2(string w) {
return (w.length() >= 2 && w[0] == 'a' && w[w.length() - 1] == 'b');
}
int main() {
string w;
cout << "Enter string: ";
cin >> w;
cout << "\nUnion (L1 ∪ L2): " << (L1(w) || L2(w) ? "Accepted" : "Rejected");
cout << "\nIntersection (L1 ∩ L2): " << (L1(w) && L2(w) ? "Accepted" : "Rejected");
// Concatenation — here we test if string can be split into w1w2 where w1∈L1 and w2∈L2
bool concat = false;
for (int i = 1; i < w.length(); i++) {
string w1 = w.substr(0, i);
string w2 = w.substr(i);
if (L1(w1) && L2(w2)) {
concat = true;
break;
}
}
cout << "\nConcatenation (L1L2): " << (concat ? "Accepted" : "Rejected") << endl;
}
