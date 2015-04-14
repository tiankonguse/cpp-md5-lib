/*************************************************************************
  > File Name: demo.cpp
  > Author: tiankonguse(skyyuan)
  > Mail: i@tiankonguse.com 
  > Created Time: 2015年04月14日 21:22:10
***********************************************************************/

#include <iostream>
#include "md5.h"
using namespace std;

int main(int argc, char *argv[]) {
    if (argc != 2) {
        cout << "usage: ./demo string" << endl;
    } else {
        cout << "md5 of '" << argv[1] << "': " << md5(argv[1]) << endl;
    }
    return 0;
}
