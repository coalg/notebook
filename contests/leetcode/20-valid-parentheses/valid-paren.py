class Solution(object):
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
        left    = ['(', '{', '[']
        right   = [')', '}', ']']
        pair = {
            "(": ")",
            "{": "}",
            "[": "]"
        }
        stack = []
        for c in s:
            if c in left:
                stack.append(c)
            elif c in right:
                if not stack:
                    return False
                elif c == pair[stack.pop()]:
                    continue
                else:
                    return False
        return not stack
