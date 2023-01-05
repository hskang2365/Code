def solution(n):
    cnt = 0
    while n >= 1:
        n = n/2
        cnt = cnt + 1
    return cnt

print(solution(16))