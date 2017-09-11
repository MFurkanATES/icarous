<?xml version="1.0" encoding="UTF-8"?><PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tr="extended-plexil-translator" FileName="sas-test.ple"><GlobalDeclarations LineNo="8" ColNo="5"><StateDeclaration LineNo="8" ColNo="5"><Name>x</Name><Return><Name>_return_0</Name><Type>Real</Type></Return></StateDeclaration><CommandDeclaration LineNo="9" ColNo="5"><Name>MoveRight</Name><Return><Name>_return_0</Name><Type>Real</Type></Return><Parameter><Name>units</Name><Type>Integer</Type></Parameter></CommandDeclaration><CommandDeclaration LineNo="10" ColNo="0"><Name>SendMessage</Name><Parameter><Name>msg</Name><Type>String</Type></Parameter></CommandDeclaration></GlobalDeclarations><Node NodeType="NodeList" epx="Sequence" LineNo="14" ColNo="2"><NodeId>Root</NodeId><VariableDeclarations><DeclareVariable LineNo="13" ColNo="2"><Name>rightIter</Name><Type>Integer</Type><InitialValue><IntegerValue>4</IntegerValue></InitialValue></DeclareVariable><DeclareVariable LineNo="14" ColNo="2"><Name>x</Name><Type>Real</Type><InitialValue><RealValue>0</RealValue></InitialValue></DeclareVariable></VariableDeclarations><StartCondition><GT><LookupOnChange><Name><StringValue>x</StringValue></Name></LookupOnChange><IntegerValue>10</IntegerValue></GT></StartCondition><InvariantCondition><AND><LE><RealVariable>x</RealVariable><IntegerValue>21</IntegerValue></LE><NOT><OR><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Right</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Right</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Quit</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Quit</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></OR></NOT></AND></InvariantCondition><NodeBody><NodeList><Node NodeType="NodeList" epx="Sequence" LineNo="20" ColNo="4"><NodeId>Right</NodeId><VariableDeclarations><DeclareVariable LineNo="19" ColNo="4"><Name>new_x</Name><Type>Real</Type></DeclareVariable></VariableDeclarations><RepeatCondition><GT><IntegerVariable>rightIter</IntegerVariable><IntegerValue>0</IntegerValue></GT></RepeatCondition><InvariantCondition><NOT><OR><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Action</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Action</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">SetX</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">SetX</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Set</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Set</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></OR></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="Command" LineNo="24" ColNo="14"><NodeId>Action</NodeId><EndCondition><IsKnown><RealVariable>new_x</RealVariable></IsKnown></EndCondition><NodeBody><Command><RealVariable>new_x</RealVariable><Name><StringValue>MoveRight</StringValue></Name><Arguments LineNo="25" ColNo="24"><IntegerValue>5</IntegerValue></Arguments></Command></NodeBody></Node><Node NodeType="Assignment" LineNo="28" ColNo="10"><NodeId>SetX</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Action</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Assignment><RealVariable>x</RealVariable><NumericRHS><RealVariable>new_x</RealVariable></NumericRHS></Assignment></NodeBody></Node><Node NodeType="Assignment" LineNo="29" ColNo="9"><NodeId>Set</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">SetX</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Assignment><IntegerVariable>rightIter</IntegerVariable><NumericRHS><SUB LineNo="29" ColNo="31"><IntegerVariable>rightIter</IntegerVariable><IntegerValue>1</IntegerValue></SUB></NumericRHS></Assignment></NodeBody></Node></NodeList></NodeBody></Node><Node NodeType="Command" LineNo="30" ColNo="8"><NodeId>Quit</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Right</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>SendMessage</StringValue></Name><Arguments LineNo="31" ColNo="20"><StringValue>Quit</StringValue></Arguments></Command></NodeBody></Node></NodeList></NodeBody></Node></PlexilPlan>