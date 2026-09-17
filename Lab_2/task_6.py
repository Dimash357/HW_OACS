for k in range(1, 100):
    result = 120 + k

    if result > 127:
        print("Минимальное k:", k)
        print("120 + k =", result)
        break