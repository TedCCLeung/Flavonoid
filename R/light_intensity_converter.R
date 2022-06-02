light_intensity_converter <- function(

){


  Avogadro_number <- 6.02214076e23
  wavelength <- 350e-9
  reading <- 25 ## mW cm-2

  ## convert reading to J s -1 m -2
  SI_reading <- reading*100*100/1000
  energy_per_photon <- (6.6261e-34*2.9979e8)/wavelength

  reading_in_einstein <- (SI_reading/energy_per_photon)/Avogadro_number
  (reading_in_micro_einstein <- reading_in_einstein*10e6)
}
