#include <iostream>
#include <stack>
#include <string>
using namespace std;
int main() {
string w;
cout << "Enter string (with X in middle): ";
cin >> w;
stack<char> st;
int i = 0;
while (i < w.length() && w[i] != 'X') {
st.push(w[i]);
i++;
}
if (i == w.length()) { cout << "Rejected (no X found)\n"; return 0; }
i++; // skip 'X'
while (i < w.length()) {
if (st.empty() || w[i] != st.top()) {
cout << "Rejected\n";
return 0;
}
st.pop();
i++;
}
if (st.empty())
cout << "Accepted (wXw^R)\n";
else
cout << "Rejected\n";
}
