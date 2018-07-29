# TDCIS FDTD/TDCIS for electronic dynamics in metal nanoparticles driven by scattering mediated absorption

This code was used to produce the results described in a [recent paper 
in ACS Photonics](https://pubs.acs.org/doi/abs/10.1021/acsphotonics.6b00773); the 
formalism is described in detail in that paper as well.

The main source code is found in TDCIS.c.

This code utilizes some standard routines from the [Basic Linear Algebra Package](http://www.netlib.org/blas/); these functions are contained in blas.c; linking these is taken care of by the Makefile.

- To Compile to create the executable TDCIS.x, type
`make`

- To run the code, type
`./TDCIS.x`

- The code will write data to a number of data files, and you can make simple changes to the source code to customize the data printed:

- DATA/DipoleMoment.txt will contain the time-dependent dipole moment of a nanoparticle

- Populations will contain the population of all the orbitals at each time step

- Population_Trace will contain the populations of select orbital(s) as a function of time

- The user can specify the form of the electric field, currently the program will look for real-time electric
field data in data files in the FIELDS directory

- The user can specify the number of electrons and details of the number of occupied/unoccupied orbitals in the code, and there is a program called 


