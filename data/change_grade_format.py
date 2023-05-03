#!/usr/bin/env python3

def main():
    fin = open("student-mat.csv", "r")
    fout = open("new.csv", "w")

    for line in fin:
        if "G3" in line:
            fout.write(line)
        else:
            s = ""
            line = line.strip()
            line = line.split(';')
            if int(line[-1]) < 12:
                line[-1] = '0'
            else:
                line[-1] = '1'
            for word in line:
                s += word + ';'
            s = s[:-1]
            fout.write(s+'\n')

    fin.close()
    fout.close()

if __name__ == "__main__":
    main()
