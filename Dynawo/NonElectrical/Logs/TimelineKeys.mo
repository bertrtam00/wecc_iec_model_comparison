/*
* Copyright (c) 2021, RTE (http://www.rte-france.com)
* See AUTHORS.txt
* All rights reserved.
* This Source Code Form is subject to the terms of the Mozilla Public
* License, v. 2.0. If a copy of the MPL was not distributed with this
* file, you can obtain one at http://mozilla.org/MPL/2.0/.
* SPDX-License-Identifier: MPL-2.0
*
* This file is part of Dynawo, an hybrid C++/Modelica open source suite of simulation tools
* for power systems.
*/
within Dynawo.NonElectrical.Logs;

encapsulated package TimelineKeys

final constant Integer ActivatePMAX = 0;
final constant Integer ActivatePMIN = 1;
final constant Integer BusAboveVoltage = 2;
final constant Integer BusUnderVoltage = 3;
final constant Integer ComponentConnected = 4;
final constant Integer ComponentDisconnected = 5;
final constant Integer Converter1Connected = 6;
final constant Integer Converter1SwitchOff = 7;
final constant Integer Converter2Connected = 8;
final constant Integer Converter2SwitchOff = 9;
final constant Integer CriteriaNotChecked = 10;
final constant Integer CurrentLimitAutomatonActing = 11;
final constant Integer CurrentLimitAutomatonArming = 12;
final constant Integer CurrentLimitAutomatonDisarming = 13;
final constant Integer DCLineClosed = 14;
final constant Integer DCLineOpen = 15;
final constant Integer DanglingLineConnected = 16;
final constant Integer DanglingLineDisconnected = 17;
final constant Integer DeactivatePMAX = 18;
final constant Integer DeactivatePMIN = 19;
final constant Integer GeneratorConnected = 20;
final constant Integer GeneratorDisconnected = 21;
final constant Integer GeneratorPVBackRegulation = 22;
final constant Integer GeneratorPVMaxQ = 23;
final constant Integer GeneratorPVMinQ = 24;
final constant Integer GeneratorTargetP = 25;
final constant Integer GeneratorTargetQ = 26;
final constant Integer IdealSwitchSwitchOff = 27;
final constant Integer IdealSwitchSwitchOn = 28;
final constant Integer LineCloseSide1 = 29;
final constant Integer LineCloseSide2 = 30;
final constant Integer LineClosed = 31;
final constant Integer LineOpen = 32;
final constant Integer LineOpenSide1 = 33;
final constant Integer LineOpenSide2 = 34;
final constant Integer LoadConnected = 35;
final constant Integer LoadDisconnected = 36;
final constant Integer LoadModificationEnded = 37;
final constant Integer LoadModificationStarted = 38;
final constant Integer LoadSheddingStarted = 39;
final constant Integer NodeFaultBegin = 40;
final constant Integer NodeFaultEnd = 41;
final constant Integer NodeOff = 42;
final constant Integer NodeOn = 43;
final constant Integer OverloadDown = 44;
final constant Integer OverloadOpen = 45;
final constant Integer OverloadUp = 46;
final constant Integer PhaseShifterAboveMax = 47;
final constant Integer PhaseShifterBelowMax = 48;
final constant Integer PhaseShifterBelowMin = 49;
final constant Integer PhaseShifterBelowStop = 50;
final constant Integer PhaseShifterBlockingIActing = 51;
final constant Integer PhaseShifterBlockingIArming = 52;
final constant Integer PhaseShifterBlockingIDisarming = 53;
final constant Integer PhaseShifterSwitchOff = 54;
final constant Integer PhaseShifterSwitchOn = 55;
final constant Integer PhaseShifterWithinInterval = 56;
final constant Integer SVarCConnected = 57;
final constant Integer SVarCDisconnected = 58;
final constant Integer SVarCOff = 59;
final constant Integer SVarCRunning = 60;
final constant Integer SVarCStandby = 61;
final constant Integer SVarCUmaxreached = 62;
final constant Integer SVarCUminreached = 63;
final constant Integer ShuntConnected = 64;
final constant Integer ShuntDisconnected = 65;
final constant Integer SignalReceived = 66;
final constant Integer SourceAbovePower = 67;
final constant Integer SourcePowerAboveMax = 68;
final constant Integer SourcePowerBelowMin = 69;
final constant Integer SourcePowerTakenIntoAccount = 70;
final constant Integer SourceUnderPower = 71;
final constant Integer SwitchClosed = 72;
final constant Integer SwitchOpened = 73;
final constant Integer TapChangerAboveMax = 74;
final constant Integer TapChangerBelowMin = 75;
final constant Integer TapChangerSwitchOff = 76;
final constant Integer TapChangerSwitchOn = 77;
final constant Integer TapChangersArming = 78;
final constant Integer TapChangersBlocked = 79;
final constant Integer TapChangersBlockedD = 80;
final constant Integer TapChangersBlockedT = 81;
final constant Integer TapChangersUnarming = 82;
final constant Integer TapChangersUnblocked = 83;
final constant Integer TapDown = 84;
final constant Integer TapUp = 85;
final constant Integer TerminateInModel = 86;
final constant Integer TransformerSwitchOff = 87;
final constant Integer TransformerSwitchOn = 88;
final constant Integer TwoWTFOCloseSide1 = 89;
final constant Integer TwoWTFOCloseSide2 = 90;
final constant Integer TwoWTFOClosed = 91;
final constant Integer TwoWTFOOpen = 92;
final constant Integer TwoWTFOOpenSide1 = 93;
final constant Integer TwoWTFOOpenSide2 = 94;
final constant Integer UVAArming = 95;
final constant Integer UVADisarming = 96;
final constant Integer UVATripped = 97;
final constant Integer VRBackToRegulation = 98;
final constant Integer VRLimitationEfdMax = 99;
final constant Integer VRLimitationEfdMin = 100;
final constant Integer VRLimitationUsRefMax = 101;
final constant Integer VRLimitationUsRefMin = 102;
final constant Integer VoltageSetPointChangeEnded = 103;
final constant Integer VoltageSetPointChangeStarted = 104;

end TimelineKeys;
