/*
    Copyright 2014-2018 Thibaut Paumard

    This file is part of Gyoto.

    Gyoto is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Gyoto is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Gyoto.  If not, see <http://www.gnu.org/licenses/>.
 */
%module(docstring="The Gyoto standard plug-in", package="gyoto") std
%import gyoto.i
%{

#define GYOTO_NO_DEPRECATED
#include "gyoto_swig.h"
#include "gyoto_std_swig.h"

using namespace Gyoto;

%}

%array_class(double, array_double)
%array_class(unsigned long, array_unsigned_long)
%array_class(size_t, array_size_t)

// Typemaps to translate SmartPointer to specific classes
GyotoSmPtrTypeMapClassDerived(Astrobj, UniformSphere)
GyotoSmPtrTypeMapClassDerived(Astrobj, Star)
GyotoSmPtrTypeMapClassDerived(Astrobj, StarTrace)
GyotoSmPtrTypeMapClassDerived(Astrobj, FixedStar)
GyotoSmPtrTypeMapClassDerived(Astrobj, InflateStar)
GyotoSmPtrTypeMapClassDerived(Astrobj, Torus)
GyotoSmPtrTypeMapClassDerived(Astrobj, OscilTorus)
GyotoSmPtrTypeMapClassDerived(Astrobj, PageThorneDisk)
GyotoSmPtrTypeMapClassDerived(Astrobj, ThinDiskPL)
GyotoSmPtrTypeMapClassDerived(Astrobj, PolishDoughnut)
GyotoSmPtrTypeMapClassDerived(Astrobj, ThinDiskIronLine)
GyotoSmPtrTypeMapClassDerived(Astrobj, PatternDisk)
GyotoSmPtrTypeMapClassDerived(Astrobj, PatternDiskBB)
GyotoSmPtrTypeMapClassDerived(Astrobj, DynamicalDisk)
GyotoSmPtrTypeMapClassDerived(Astrobj, DynamicalDiskBolometric)
GyotoSmPtrTypeMapClassDerived(Astrobj, Disk3D)
GyotoSmPtrTypeMapClassDerived(Astrobj, DynamicalDisk3D)
GyotoSmPtrTypeMapClassDerived(Astrobj, DirectionalDisk)
GyotoSmPtrTypeMapClassDerived(Astrobj, DeformedTorus)
GyotoSmPtrTypeMapClassDerived(Astrobj, EquatorialHotSpot)
GyotoSmPtrTypeMapClassDerived(Astrobj, XillverReflection)

GyotoSmPtrTypeMapClassDerived(Metric, KerrBL)
GyotoSmPtrTypeMapClassDerived(Metric, KerrKS)
GyotoSmPtrTypeMapClassDerived(Metric, Minkowski)
GyotoSmPtrTypeMapClassDerived(Metric, ChernSimons)
GyotoSmPtrTypeMapClassDerived(Metric, RezzollaZhidenko)
GyotoSmPtrTypeMapClassDerived(Metric, Hayward)

GyotoSmPtrTypeMapClassDerived(Spectrum, PowerLaw)
GyotoSmPtrTypeMapClassDerived(Spectrum, BlackBody)
GyotoSmPtrTypeMapClassDerived(Spectrum, ThermalBremsstrahlung)
GyotoSmPtrTypeMapClassDerived(Spectrum, ThermalSynchrotron)
GyotoSmPtrTypeMapClassDerived(Spectrum, PowerLawSynchrotron)

%ignore Gyoto::Astrobj::UniformSphere::UniformSphere (std::string kind, SmartPointer<Metric::Generic> gg, double radius);
%ignore Gyoto::Astrobj::UniformSphere::UniformSphere (std::string kind);
%ignore Gyoto::Astrobj::UniformSphere::UniformSphere (const UniformSphere& orig);
GyotoSmPtrClassDerived(Astrobj, UniformSphere)

%extend Gyoto::Astrobj::Complex {
  Gyoto::Astrobj::Generic * __getitem__ (int i) {
    Gyoto::Astrobj::Generic * res = ($self)->operator[](i);
    res -> incRefCount();
    return res;
  }
 };
%extend Gyoto::Astrobj::Complex {
  void __setitem__(int i, Gyoto::Astrobj::Generic * p) {
    ($self)->operator[](i)=p;
  }
 };
GyotoSmPtrClassDerivedPtrHdr(Astrobj, Complex, ComplexAstrobj, GyotoComplexAstrobj.h)

// Declare specific classes
GyotoSmPtrClassDerived(Astrobj, Star)
GyotoSmPtrClassDerived(Astrobj, StarTrace)
GyotoSmPtrClassDerived(Astrobj, FixedStar)
GyotoSmPtrClassDerived(Astrobj, InflateStar)
GyotoSmPtrClassDerived(Astrobj, Torus)
GyotoSmPtrClassDerived(Astrobj, OscilTorus)
GyotoSmPtrClassDerived(Astrobj, PageThorneDisk)
GyotoSmPtrClassDerived(Astrobj, ThinDiskPL)
GyotoSmPtrClassDerived(Astrobj, PolishDoughnut)
GyotoSmPtrClassDerived(Astrobj, ThinDiskIronLine)
GyotoSmPtrClassDerived(Astrobj, PatternDisk)
GyotoSmPtrClassDerived(Astrobj, PatternDiskBB)
GyotoSmPtrClassDerived(Astrobj, DynamicalDisk)
GyotoSmPtrClassDerived(Astrobj, DynamicalDiskBolometric)
GyotoSmPtrClassDerived(Astrobj, Disk3D)
GyotoSmPtrClassDerived(Astrobj, DynamicalDisk3D)
GyotoSmPtrClassDerived(Astrobj, DirectionalDisk)
GyotoSmPtrClassDerived(Astrobj, DeformedTorus)
GyotoSmPtrClassDerived(Astrobj, EquatorialHotSpot)
GyotoSmPtrClassDerived(Astrobj, XillverReflection)


GyotoSmPtrClassDerived(Metric, KerrBL)
GyotoSmPtrClassDerived(Metric, KerrKS)
GyotoSmPtrClassDerived(Metric, Minkowski)
GyotoSmPtrClassDerived(Metric, ChernSimons)
GyotoSmPtrClassDerived(Metric, RezzollaZhidenko)
GyotoSmPtrClassDerived(Metric, Hayward)

GyotoSmPtrClassDerivedHdr(Spectrum, PowerLaw, GyotoPowerLawSpectrum.h)
GyotoSmPtrClassDerivedHdr(Spectrum, BlackBody, GyotoBlackBodySpectrum.h)
GyotoSmPtrClassDerivedHdr(Spectrum, ThermalBremsstrahlung, GyotoThermalBremsstrahlungSpectrum.h)
GyotoSmPtrClassDerivedHdr(Spectrum, ThermalSynchrotron, GyotoThermalSynchrotronSpectrum.h)
GyotoSmPtrClassDerivedHdr(Spectrum, PowerLawSynchrotron, GyotoPowerLawSynchrotronSpectrum.h)

// Workaround cvar bug in Swig which makes help(gyoto_std) fail:
%inline {
  namespace GyotoStd {
    extern int __class__=0;
  }
}
