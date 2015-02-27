1. "myfilters.m" is a matlab function, which generate a set of filters.
2. "gaborfilter.m" is a matlab function, which is a subfunction of "myfilters.m" for generating a gabor filter.
3. "getHistogram.c" is a mex c function, which compute filter response histogram.
4. "Julesz.c" is a mex c funtion, which realize the process of Julesz ensemble sampling.
5. "temp.m" is an example of the process.
   However, because the calculation of width of each bin is not exact in Julesz.c and getHistogram.c (marked in the files), 
   this script doesn't work. And the filters should be selected based on the information gain, not "1,2,3,4,5" showed in script. 
   The calculation of width should be modified.
