<?xml version="1.0" encoding="UTF-8"?><PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tr="extended-plexil-translator" FileName="CommandCleanupTest.ple"><GlobalDeclarations LineNo="2" ColNo="0"><CommandDeclaration LineNo="2" ColNo="0"><Name>drillIdle</Name></CommandDeclaration><CommandDeclaration LineNo="3" ColNo="0"><Name>print</Name><AnyParameters/></CommandDeclaration></GlobalDeclarations><Node NodeType="NodeList" epx="Sequence" LineNo="7" ColNo="2"><NodeId>CommandCleanupTest</NodeId><EndCondition><EQInternal><NodeCommandHandleVariable><NodeId>Idle</NodeId></NodeCommandHandleVariable><NodeCommandHandleValue>COMMAND_SUCCESS</NodeCommandHandleValue></EQInternal></EndCondition><InvariantCondition><NOT><OR><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Idle</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Idle</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__0</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__0</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></OR></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="Command" LineNo="8" ColNo="2"><NodeId>Idle</NodeId><NodeBody><Command><Name><StringValue>drillIdle</StringValue></Name></Command></NodeBody></Node><Node NodeType="Command" LineNo="10" ColNo="2"><NodeId>COMMAND__0</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Idle</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>print</StringValue></Name><Arguments LineNo="11" ColNo="8"><StringValue>Idle complete</StringValue></Arguments></Command></NodeBody></Node></NodeList></NodeBody></Node></PlexilPlan>