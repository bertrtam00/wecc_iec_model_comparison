# wecc_iec_model_comparison
Comparison of generic electrical wind turbine models following WECC and IEC standards

## IEC_and_WECC_WT_SMIB.mo
is the first test case with IEC and WECC running in parallel.

## Available test cases
- test001_StepP consists in a step on PRef at the turbine.
- test002_StepQ consists in a step on QRef at the turbine.
- test003_SolidFault consists in a solid fault (R = 0, X= 0.0001 pu) at the turbine terminal from t = 5 to t = 5.1 s

# Collection and elaboration of relevant differences
! Generator Converter Model yet to be included!

Working document: Relevances to be updated during the investigations.

Relevance:
- 0 ... irrelevant
- 1 ... relevant
- 2 ... very relevant

## Wind Turbine Q Control (WT_Q)

| No. | Relevance | Description                                                                                                                                           | Test case |
| --- | --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| 1   |           | WECC: Qmax/min is a parameter; IEC: q_WTmax/min taken from Q lim block                                                                                |         |
| 2   |           | WECC: has extra min limit for reactive current during FRT (iql1); IEC uses minimum limit from normal path                                             |         |
| 3   |           | IEC has local voltage drop compensation (WECC REEC_A doesn't)                                                                                         |         |
| 4   |           | IEC: Q control voltage drop compensation current measurement \*\*has a ground admittance element\*\*. i_gs can be larger than i_WT. (WECC: i_gs=i_WT) |         |
| 5   |           | IEC: U-PI-Controller Limits seperately on proportional and integral Part; WECC: one common limit on output of PI controller                           |         |
| 6   |           | IEC: Q-PI-controller limit on integral part and on PI controller output; WECC: Q-PI-Controller limit only on PI Controller output.                    |         |
| 7   |           | IEC: Qwtmax/min from Q limiting block;                                                                                                                |         |
| 8   |           | Mode 2: IEC: 1st order lag before current calculation (WECC: after current calculation)                                                               |         |
| 9   |           | IEC: tan(phi) as parameter; WECC: phi as input signal                                                                                                 |         |
| 10  |           | IEC doesn’t have the possibility to offer reactive support after the end of an U> event because T_post is only applied to the U< logic.               |         |
| 11  |           | different delta u sign in fast current injection (!)                                                                                                  |         |
| 12  |           | different calculation method of pre-fault voltage                                                                                                     |         |
| 13  |           | WECC: Iql1, Iqh1 are fast-injected current limits; IEC: iqh1, iqmin are limits for total injected current during FRT.                                 |         |
| 14  |           | IEC uses filtered voltage for FRT mode detecion; WECC not filtered                                                                                    |   003 by having tPost = 0      |
| 15  |           | WECC: uses CLS value Iqmax, Iqmin in Voltage PI controller; IEC: uses constants                                                                       |         |

## Wind Turbine P Control (WT_P)

| No. | Relevance | Description                                                                                                                | Test case |
| --- | --------- | -------------------------------------------------------------------------------------------------------------------------- | ------- |
| 16  |           | IEC: PT1 not frozen during FRT (P scaling with different threshold u_pdip instead)                                         |         |
| 17  |           | WECC additionally has Thld2, which holds current limit Ipmax at during-fault-value for Thld2 seconds after fault clearing. |         |
| 18  |           | WECC: no additional PT1 (T_pWTrefA)                                                                                        |         |
| 19  |           | WECC: no additional positive ramp rate limit in PT1                                                                        |         |
| 20  |           | WECC: constants Pmax, Pmin instead of calculation from signal                                                              |         |
| 21  |           | IEC: no negative limit in second PT1                                                                                       |         |
| 22  |           | IEC has p_aero output                                                                                                      |         |
| 23  |           | IEC has option to reduce pref by voltage-p.u. during fault                                                                 |         |
| 24  |           | IEC has rate limiter after omega multiplication                                                                            |         |
| 25  |           | WECC has lower limit Pmin                                                                                                  |         |
| 26  |           | IEC uses CLS value ipmax in P control PT1 (WECC uses constants Pmax, Pmin)                                                 |         |
| 27  |    1      | IEC divides the PRef by U (while WECC doesn't)  | 003 with a difference between IMax and IqMax (1.3 and 1.1 pu)        |        

## Current Limitation System (WT_CLS)

| No. | Relevance | Description                                                                                                   | Test case |
| --- | --------- | ------------------------------------------------------------------------------------------------------------- | ------- |
| 27  |           | WECC: Current Limiting System (CLS) acts on P and Q control scheme; IEC: CLS passes limits to generator model. Limits inside P,Q contrl schemes are additional parameters.|  |
| 28  |           |  WECC: Voltage Dependent Limits have only 4 pairs of u / i                                                    |         |
| 29  |           | WECC: CLS same imax during FRT (IEC: diffrent parameter during FRT) ((5))                                     |         |
| 30  |           | WECC CSL: makes sure that VDL is always <= imax (this check is not performed in IEC CLS) ((4))                |         |
| 31  |           | WECC CLS: no K_pqu logic (fault-clearance overvoltage prevention) ((3))                                       |         |
| 32  |           | IEC CLS: Q-mode only active during FRT (WECC: also active outside FRT) ((2))                                  |         |
| 33  |           | IEC CLS: when subtracting the prioritized quantity, explicitly makes sure that I_cmd doesn't exceed VDL ((1)) |         |

## Reactive Power Limitation System (WT_QLS)

| No. | Relevance | Description                  | Test case |
| --- | --------- | ---------------------------- | ------- |
| 34  |           | IEC: has Q limitation system |         |

## Wind Turbine Measurement (WT_meas)

| No. | Relevance | Description                                                                       | Test case |
| --- | --------- | --------------------------------------------------------------------------------- | ------- |
| 35  |           | IEC: measurement in separate model; WECC: measurement inside controller structure |         |
| 36  | 1         | WECC: no measurement filter for q                                                 |   002/003 with tQFilt = 0.01 s and tQFilt = 0.000001 s|

## Wind Turbine Protection (not included in comparison)
but added for completeness

| No. | Relevance | Description                                                                                                                | Test case |
| --- | --------- | -------------------------------------------------------------------------------------------------------------------------- | ------- |
| 37  |           | IEC has included protection module; WECC references external modules from commercial software. --> leave this out of scope |         |
