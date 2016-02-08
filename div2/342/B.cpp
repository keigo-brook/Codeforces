#include <cstdio>
#include <iostream>
#include <algorithm>
#include <queue>
#include <map>
#include <cassert>

#define FOR(i, a, b) for (int i=(a);i<(b);i++)
#define RFOR(i, a, b) for (int i=(b)-1;i>=(a);i--)
#define REP(i, n) for (int i=0;i<(n);i++)
#define RREP(i, n) for (int i=(n)-1;i>=0;i--)
#define MIN(a, b) (a>b?b:a)
#define MAX(a, b) (a>b?a:b)
#define debug(x) cout<<#x<<": "<<x<<endl
#define all(a) (a).begin(),(a).end()

using namespace std;
typedef long long ll;
typedef pair<int, int> P;

string g, a;

void solve() {
  int ans = 0;
  int gs = (int)g.size();
  int as = (int)a.size();
  REP(i, gs) {
    int k = 0;
    REP(j, as) {
      // debug(g[i + j]);
      // debug(a[j]);
      if (g[i + j] == a[j]) {
        k++;
      } else {
        break;
      }
    }
    if (k == as) {
      ans += 1;
      i += k - 1;
    }
    // debug(k);
  }
  printf("%d\n", ans);
}

int main(void) {
    cin.tie(0);
    ios::sync_with_stdio(false);
    cin >> g;
    cin >> a;
    solve();
    return 0;
}
