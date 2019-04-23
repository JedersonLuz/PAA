import time

def shellSort(array):
    "Shell sort using Shell's (original) gap sequence: n/2, n/4, ..., 1."
    gap = len(array) // 2
    # loop over the gaps
    while gap > 0:
        # do the insertion sort
        for i in range(gap, len(array)):
            val = array[i]
            j = i
            while j >= gap and array[j - gap] > val:
                array[j] = array[j - gap]
                j -= gap
            array[j] = val
        gap //= 2


# Driver code to test above 
# arr = [12, 34, 54, 2, 3] 
arr = list(map(int, input().rstrip().split()))
  
# print ("Array before sorting:") 
# print(arr)

# Beginning to measure execution time
start = time.time()

shellSort(arr)

# Ending runtime measurement
end = time.time()

# Printing enlapsed time
print('%.5f' % (end - start))

# print ("\nArray after sorting:") 
# print(arr)
