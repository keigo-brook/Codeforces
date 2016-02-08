//
// Created by KeigoOgawa on 12/31/15.
//

#include <cstdio>
#include <iostream>
#include<string.h>
//#include<bits/stdc++.h>
using namespace std;

int h, w, q;
char pz[500][500];
int s[2], g[2];

void solve() {
    int ans = 0;
    for (int i = s[0]; i <= g[0]; ++i) {
        for (int j = s[1]; j <= g[1]; ++j) {
            if (pz[i][j] == '.') {
                int nx = i + 1, ny = j;
                if (0 <= nx && nx < h && 0 <= ny && ny < w && pz[nx][ny] == '.' && nx >= s[0] && nx <= g[0] && ny >= s[1] && ny <= g[1] ) {
                    ans++;
                }
                nx = i, ny = j + 1;
                if (0 <= nx && nx < h && 0 <= ny && ny < w && pz[nx][ny] == '.' && nx >= s[0] && nx <= g[0] && ny >= s[1] && ny <= g[1] ) {
                    ans++;
                }
            }
        }
    }
    cout << ans << endl;

}

int main(void) {
    cin.tie(0);
    ios::sync_with_stdio(false);

    cin >> h >> w;
    for (int i = 0; i < h; ++i) {
        for (int j = 0; j < w; ++j) {
            cin >> pz[i][j];
        }
    }

    cin >> q;
    for (int k = 0; k < q; ++k) {
        cin >> s[0] >> s[1] >> g[0] >> g[1];
        s[0]--;
        s[1]--;
        g[0]--;
        g[1]--;
        solve();
    }
    return 0;
}
