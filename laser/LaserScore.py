import numpy as np
dim=1024

E=np.fromfile("E1.raw",dtype=np.float32, count=-1)
H1=np.fromfile("H1.raw",dtype=np.float32, count=-1)
H2=np.fromfile("H2.raw",dtype=np.float32, count=-1)
H3=np.fromfile("H3.raw",dtype=np.float32, count=-1)
H4=np.fromfile("H4.raw",dtype=np.float32, count=-1)
H5=np.fromfile("H5.raw",dtype=np.float32, count=-1)
H6=np.fromfile("H6.raw",dtype=np.float32, count=-1)
H7=np.fromfile("H7.raw",dtype=np.float32, count=-1)
H8=np.fromfile("H8.raw",dtype=np.float32, count=-1)
H9=np.fromfile("H9.raw",dtype=np.float32, count=-1)


E.resize(E.shape[0] // dim, dim)	
H1.resize(H1.shape[0] // dim, dim)
H2.resize(H2.shape[0] // dim, dim)
H3.resize(H3.shape[0] // dim, dim)
H4.resize(H4.shape[0] // dim, dim)
H5.resize(H5.shape[0] // dim, dim)
H6.resize(H6.shape[0] // dim, dim)
H7.resize(H7.shape[0] // dim, dim)
H8.resize(H8.shape[0] // dim, dim)
H9.resize(H9.shape[0] // dim, dim)

from scipy import spatial
R1 = 1 - spatial.distance.cosine(E,H1)
R2 = 1 - spatial.distance.cosine(E,H2)
R3 = 1 - spatial.distance.cosine(E,H3)
R4 = 1 - spatial.distance.cosine(E,H4)
R5 = 1 - spatial.distance.cosine(E,H5)
R6 = 1 - spatial.distance.cosine(E,H6)
R7 = 1 - spatial.distance.cosine(E,H7)
R8 = 1 - spatial.distance.cosine(E,H8)
R9 = 1 - spatial.distance.cosine(E,H9)

print(R1)
print(R2)
print(R3)
print(R4)
print(R5)
print(R6)
print(R7)
print(R8)
print(R9) 