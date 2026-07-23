# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution(object):
    def detectCycle(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """

        fast, slow = head, head

        while fast and fast.next:
            fast, slow = fast.next.next, slow.next

            if fast == slow: break
        else:
            return None

        while True:
            if head == slow: return slow
            head = head.next
            slow = slow.next
