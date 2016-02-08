#include <cstdio>
#include <iostream>
#include <algorithm>
#include <queue>

using namespace std;
typedef long long ll;
typedef pair<int, int>P;

int n;
P r1, r2;
vector<P> f;

double distance(P r, P p) {
    return (r.first - p.first) * (r.first - p.first) + (r.second - p.second) * (r.second - p.second);
} 

void solve() {
    int rd1 = 0, rd2 = 0, far1, far2, ans;
    double fard1 = 0, fard2 = 0;
    for (int i = 0; i < n; i++) {
        double t1 = distance(r1, f[i]);
        double t2 = distance(r2, f[i]);
            printf("t1 t2 %lf %lf\n", t1, t2);
        if (t1 > fard1) {
            far1 = i;
            fard1 = t1;
        }
        if (t2 > fard2) {
            far2 = i;
            fard2 = t2;
        }
    }

    double otfar1 = distance(r2, f[far1]);
    double otfar2 = distance(r1, f[far2]);    
    printf("f1 f2 %d %d\n", far1, far2);

    printf("w1 w2 %lf %lf\n", otfar1, otfar2);
    if (otfar1 < fard1) {
        rd2 = otfar1;
        if (otfar1 < fard2) {
            rd1 = otfar2;
        }
    } else {
        rd1 = fard1;
        rd2 = 0;
    }
    printf("rd1 rd2 %d %d\n", rd1, rd2);
    ans = rd1 + rd2;

    otfar1 = distance(r2, f[far1]);
    otfar2 = distance(r1, f[far2]);
    if (otfar2 < fard2) {
        rd1 = otfar2;
        if (otfar2 < fard1) {
            rd2 = otfar1;
        }
    } else {
        rd2 = fard2;
        rd1 = 0;
    }
    printf("rd1 rd2 %d %d\n", rd1, rd2);
    ans = min(ans, rd1 + rd2);

    printf("%d\n", ans);
}

int main(void) {
    cin.tie(0);
    ios::sync_with_stdio(false);

    cin >> n >> r1.first >> r1.second >> r2.first >> r2.second;

    for (int i = 0; i < n; i++) {
        P tmp;
        cin >> tmp.first >> tmp.second;
        f.push_back(tmp); 
    }
    
    solve();
    return 0;
}
