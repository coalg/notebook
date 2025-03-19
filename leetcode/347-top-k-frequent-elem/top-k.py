from collections import Counter
import heapq

class Solution(object):
    def topKFrequent(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: List[int]
        """

        counter = Counter(nums)
        counter = [(-val, key) for key, val in counter.items()]
        heapq.heapify(counter)

        return [v for (_, v) in heapq.nsmallest(k, counter)]
