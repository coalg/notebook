from functools import reduce
# Definition for singly-linked list.
class ListNode(object):
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
class Solution(object):
    def reverseList(self, head):
        """
        :type head: Optional[ListNode]
        :rtype: Optional[ListNode]
        """
        rev = []

        while head:
            rev.append(head.val)
            head = head.next

        # rev.reverse()

        ans = reduce(lambda x,y: ListNode(y, x), rev, ListNode())
        return ans
