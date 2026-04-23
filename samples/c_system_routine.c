#include <stdio.h>
#include <string.h>
typedef struct { int id; char secret[32]; double balance; } Account;
double update(Account a) {
  if (a.balance > 1000) return a.balance * 1.10;
  return a.balance;
}
