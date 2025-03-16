class Solution(object):
    def hasCycle(self, head):
        """
        :type head: ListNode
        :rtype: bool
        """
        fast, slow = head, head

        while fast and fast.next:
            fast, slow = fast.next.next, slow.next

            if fast is slow:
                return True
        return False
