#Gas Chemistry Lab Functions 
massCaCO3 <- c(0.403, 0.410, 0.418)
pressureCaCO3I <- c(26.37, 28.45, 25.71)
temperatureCaCO3 <- c(23.4, 23.5, 22.4)

rValue <- 0.0821 #atm*L/mol 

idealGasLawsN <- function(pressure, temperature, volume){
    # PV = nRt so PV/Rt
    n <- (pressure * volume) / (rValue * temperature)
    return(n)
}
idealGasLawsP <- function(moles, temperature, volume){
    # PV = nRt so P = nRt/V
    p <- (temperature * rValue * moles) / volume
    return(p)
}
idealGasLawsT <- function(moles, pressure, volume){
    # PV = nRt so PV/nR = t
    t <- (pressure * volume) / (moles * rValue)
    return(t)
}
idealGasLawsV <- function(moles, pressure, temperature){
    # PV = nRt so V= nRt / P
    v <- (temperature * rValue * moles) / pressure
    return(v)
}
pressureInitial <- function(pressureAir, pressureWater){
    p <- pressureAir + pressureWater
    return(p)
}
pressureFinal <- function(pressureAir, pressureWater, pressureCarbonDioxide){
    p <- pressureAir + pressureWater + pressureCarbonDioxide
    return(p)
}
airPressure <- function(totalPressure, pressureWater){
    p <- totalPressure - pressureWater
    return(p)
}
molesCarbonDioxide <- function(pressureFinal, temperatureFinal, volume, pressureInitial, temperatureInitial){
    moles <- (pressureFinal/pressureInitial - pressureInitial/temperatureFinal) * (volume/rValue)
    return(moles)
}
molesCaCO3 <- function(massCACO3, percentageCACO3, MWCACO3){
    moles <- massCACO3 * percentageCACO3 / MWCACO3
    return(moles)
}
