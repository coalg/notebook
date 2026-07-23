class Solution(object):
    def hasCycle(self, head):
        """
        :type head: ListNode
        :rtype: bool
        """
        if head is None: return False

        fast = head
        slow = head

        while fast is not None:
            if fast.next is None or slow.next is None:
                break

            if fast.next is not None:
                fast = fast.next.next

            if slow.next is not None:
                slow = slow.next

            if slow is fast:
                return True
        return False
