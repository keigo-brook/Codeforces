//
// Created by KeigoOgawa on 12/31/15.
//

#include <cstdio>
#include <iostream>
#include <algorithm>
#include <bitset>

using namespace std;
typedef long long ll;
ll a1, a2;
void solve() {
    int ans = 0;
    ll b = 2, t = 1;
    for (ll i = a1; i <= a2; ++i) {
        while (t < i) {
            b *= 2;
            t = b - 1;
        }
        ll tt = i ^ t;
        if ((tt & (tt - 1)) == 0 && tt != 1 && tt != 0) {
            ans++;
        } else if (tt == 1) {
            ans++;
            break;
        }
    }
    printf("%d\n", ans);
}

int main(void) {
    scanf("%I64d %I64d", &a1, &a2);
    solve();
    return 0;
}
