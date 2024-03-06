class Solution {
  List<int> numberOfPairs(List<int> nums) {
Map<int,int>map={};
for(int num in nums){
  map[num]=(map[num]??0)+1;
}
int paircount=0;
int leftcount=0;
for(int count in map.values){
  paircount +=count~/2;
  if(count %2!=0){
    leftcount++;
  }
}
return [paircount,leftcount];
  }
}
 