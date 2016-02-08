#define MAX_N 100000
#define MAX_M 200000
#include <cstdio>
#include <iostream>
#include <algorithm>

using namespace std;
int n, m;

int main(void) {
    cin.tie(0);
    ios::sync_with_stdio(false);

    cin >> n >> m;
    int dp[n][n];

    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            dp[i][j] = 0;
        }
    }
    
    int i1, i2;
    for (int i = 0; i < m; ++i) {
        cin >> i1 >> i2;
        i1--; i2--;
        dp[i1][i2] = 1;
        dp[i2][i1] = 1;
    }

//    for (int l = 0; l < n; ++l) {
//        printf("%d ", dp[9][l]);
//    }
//    printf("\n");
    
    int i = 0, j = 0, c1 = 1, max = 0, mi, ai = 0, pre = 0;
    while (i < n) {
        j = i;
        while (j < n) {
            if (dp[i][j] == 0) {
                printf("i j c  %d %d %d %d\n", i, j, c1, pre);

                if (j == n - 1) {
                    int t = 0, tmp = 0;
                    for (int k = 0; k < n; ++k) {
                        printf("%d ", dp[pre][k]);
                        t += dp[pre][k];
                    }
                    printf("\n");
                    

                    tmp = (t-1) * (c1-1);
                    printf("tmp %d %d %d %d \n", t-1, i, j, tmp);

                    if (tmp >= max) {

                        max = tmp;
                        mi = i;
                    }
                }
                j++;
                continue;
            } else {
                pre = j-1;
                i = j;
                c1++;
                break;
            }
        }
        if (j == n) {
            ai++;
            i = ai;
            c1 = 1;
            if (i == n - 1) {
                break;
            } 
        }
    }
    printf("%d\n", max) ;
}