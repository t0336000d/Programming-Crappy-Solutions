#include <bits/stdc++.h>
using namespace std;

int visited[100][100]; // x,y
char m[100][100]; //x, y
int h=100, w=100, t = 0;
void mout(){
    for (int i=0; i<h; i++){if (i>0){cout<<endl;}
        for (int j=0; j<w; j++){cout<<visited[j][i];}}
}
//int v(int x, int y){return y*h+x;}
bool cmp(int x1, int y1){
    return m[x1][y1] == 'H';
}

int ans = 0;
void dfs(int x, int y, int depth){
    if (visited[x][y]>0){return;}
    else{
        if (depth == 1)ans++a;
        visited[x][y] = depth;
        //mout();cout<<endl<<depth<<endl;
        if (x-1 >= 0 && cmp(x-1,y) ){dfs(x-1,y, depth+1);}
        if (x+1 < w && cmp(x+1,y) ){dfs(x+1,y, depth+1);}
        if (y-1 >= 0 && cmp(x,y-1) ){dfs(x,y-1, depth+1);}
        if (y+1 < h && cmp(x,y+1)){dfs(x,y+1, depth+1);}

        //Diagonals
        /*
        if (x-1 >= 0 && y-1 >= 0 && cmp(x-1,y-1) ){dfs(x-1,y-1, depth+1);}
        if (x-1 >= 0 && y+1 < h  && cmp(x-1,y+1) ){dfs(x-1,y+1, depth+1);}
        if (x+1 < w  && y-1 >= 0 && cmp(x+1,y-1) ){dfs(x+1,y-1, depth+1);}
        if (x+1 < w  && y+1 < h  && cmp(x+1,y+1) ){dfs(x+1,y+1, depth+1);}
        */
    }
}

int main(){
    cin>>h>>w;
    for (int i=0; i<h; i++){for (int j=0; j<w; j++){cin>>m[j][i];visited[j][i] = 0;}}
    /*
    int matchx=-1,matchy=-1;
    for (int i=0; i<h; i++){if (i>0){cout<<endl;}for (int j=0; j<w; j++){if (i==matchy&&j==matchx){cout<<"-";}else{cout<<m[j][i];}}}
    cout<<endl<<endl;
    */

    for (int i=0; i<h; i++){for (int j=0; j<w; j++){
        if (cmp(j,i)){dfs(j,i,true);}
    }}

    cout << "Oh, bother. There are "<<ans<<" pools of hunny.";
}
