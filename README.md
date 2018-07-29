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

-- DATA/DipoleMoment.txt will contain the time-dependent dipole moment of a nanoparticle

-- Orbital.txt will contain the population 


  dmfp  = fopen("DATA/DipoleMoment_121.1nm_0_331_Pt.txt","w");
  orbfp = fopen("DATA/Orbital_121.1nm_0_331_Pt.txt","w");
  vfp   = fopen("DATA/Dipole_Vector_121.1nm_0_331_Pt.txt","w");
  popfp = fopen("DATA/Populations_121.1nm_0_331_Pt.txt","w");
  poptrace = fopen("DATA/Population_Trace_121.1nm_0_331_Pt.txt","w");
