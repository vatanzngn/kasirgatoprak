with open("coremark-spike.txt", "r") as f:
    with open("coremark-spike-a.txt", "w") as g:
        lines = f.readlines()
        for line in lines:
            g.write(line[0:35] + "\n")
    