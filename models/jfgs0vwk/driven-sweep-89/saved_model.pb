??
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
?
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
?
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
?
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:@*
dtype0
?
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:@*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?
*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
l

Variable_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_2
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/m
?
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_1/kernel/m
?
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_2/kernel/m
?
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_3/kernel/m
?
*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_3/bias/m
y
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_4/kernel/m
?
*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_4/bias/m
y
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
??*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_1/kernel/m
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	?
*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/v
?
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_1/kernel/v
?
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_2/kernel/v
?
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_3/kernel/v
?
*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_3/bias/v
y
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_4/kernel/v
?
*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_4/bias/v
y
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
??*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_1/kernel/v
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	?
*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?k
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?k
value?jB?j B?j
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
layer-16
layer-17
layer-18
layer_with_weights-5
layer-19
layer_with_weights-6
layer-20
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
y
layer-0
layer-1
layer-2
trainable_variables
 regularization_losses
!	variables
"	keras_api

#	keras_api
h

$kernel
%bias
&trainable_variables
'regularization_losses
(	variables
)	keras_api
R
*trainable_variables
+regularization_losses
,	variables
-	keras_api
R
.trainable_variables
/regularization_losses
0	variables
1	keras_api
h

2kernel
3bias
4trainable_variables
5regularization_losses
6	variables
7	keras_api
R
8trainable_variables
9regularization_losses
:	variables
;	keras_api
R
<trainable_variables
=regularization_losses
>	variables
?	keras_api
h

@kernel
Abias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
R
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
R
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
h

Nkernel
Obias
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
R
Ttrainable_variables
Uregularization_losses
V	variables
W	keras_api
R
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
h

\kernel
]bias
^trainable_variables
_regularization_losses
`	variables
a	keras_api
R
btrainable_variables
cregularization_losses
d	variables
e	keras_api
R
ftrainable_variables
gregularization_losses
h	variables
i	keras_api
R
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
R
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
h

rkernel
sbias
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
h

xkernel
ybias
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
?
~iter

beta_1
?beta_2

?decay
?learning_rate$m?%m?2m?3m?@m?Am?Nm?Om?\m?]m?rm?sm?xm?ym?$v?%v?2v?3v?@v?Av?Nv?Ov?\v?]v?rv?sv?xv?yv?
f
$0
%1
22
33
@4
A5
N6
O7
\8
]9
r10
s11
x12
y13
 
f
$0
%1
22
33
@4
A5
N6
O7
\8
]9
r10
s11
x12
y13
?
?metrics
 ?layer_regularization_losses
?layer_metrics
trainable_variables
?layers
regularization_losses
	variables
?non_trainable_variables
 

	?_rng
?	keras_api

	?_rng
?	keras_api

	?_rng
?	keras_api
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
trainable_variables
?layers
 regularization_losses
!	variables
?non_trainable_variables
 
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 

$0
%1
?
?metrics
 ?layer_regularization_losses
?layer_metrics
&trainable_variables
?layers
'regularization_losses
(	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
*trainable_variables
?layers
+regularization_losses
,	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
.trainable_variables
?layers
/regularization_losses
0	variables
?non_trainable_variables
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31
 

20
31
?
?metrics
 ?layer_regularization_losses
?layer_metrics
4trainable_variables
?layers
5regularization_losses
6	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
8trainable_variables
?layers
9regularization_losses
:	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
<trainable_variables
?layers
=regularization_losses
>	variables
?non_trainable_variables
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1
 

@0
A1
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Btrainable_variables
?layers
Cregularization_losses
D	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Ftrainable_variables
?layers
Gregularization_losses
H	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Jtrainable_variables
?layers
Kregularization_losses
L	variables
?non_trainable_variables
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

N0
O1
 

N0
O1
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Ptrainable_variables
?layers
Qregularization_losses
R	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Ttrainable_variables
?layers
Uregularization_losses
V	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Xtrainable_variables
?layers
Yregularization_losses
Z	variables
?non_trainable_variables
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

\0
]1
 

\0
]1
?
?metrics
 ?layer_regularization_losses
?layer_metrics
^trainable_variables
?layers
_regularization_losses
`	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
btrainable_variables
?layers
cregularization_losses
d	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
ftrainable_variables
?layers
gregularization_losses
h	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
jtrainable_variables
?layers
kregularization_losses
l	variables
?non_trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?layer_metrics
ntrainable_variables
?layers
oregularization_losses
p	variables
?non_trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

r0
s1
 

r0
s1
?
?metrics
 ?layer_regularization_losses
?layer_metrics
ttrainable_variables
?layers
uregularization_losses
v	variables
?non_trainable_variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

x0
y1
 

x0
y1
?
?metrics
 ?layer_regularization_losses
?layer_metrics
ztrainable_variables
?layers
{regularization_losses
|	variables
?non_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 
 
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
 

?
_state_var
 

?
_state_var
 

?
_state_var
 
 
 
 

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
XV
VARIABLE_VALUEVariable:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_1:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_2:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
|z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
"serving_default_sequential_1_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_1_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *.
f)R'
%__inference_signature_wrapper_1723876
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*C
Tin<
:28				*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *)
f$R"
 __inference__traced_save_1725020
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1
Variable_2totalcounttotal_1count_1Adam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *,
f'R%
#__inference__traced_restore_1725192??
?
e
I__inference_sequential_1_layer_call_and_return_conditional_losses_1724583

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
I__inference_activation_3_layer_call_and_return_conditional_losses_1723442

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
ū
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1724579

inputs?
;random_rotation_1_stateful_uniform_statefuluniform_resource;
7random_zoom_1_stateful_uniform_statefuluniform_resource
identity??2random_rotation_1/stateful_uniform/StatefulUniform?.random_zoom_1/stateful_uniform/StatefulUniform?
7random_flip_1/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:???????????29
7random_flip_1/random_flip_left_right/control_dependency?
*random_flip_1/random_flip_left_right/ShapeShape@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_1/random_flip_left_right/Shape?
8random_flip_1/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_1/random_flip_left_right/strided_slice/stack?
:random_flip_1/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_1?
:random_flip_1/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_2?
2random_flip_1/random_flip_left_right/strided_sliceStridedSlice3random_flip_1/random_flip_left_right/Shape:output:0Arandom_flip_1/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_1/random_flip_left_right/strided_slice?
9random_flip_1/random_flip_left_right/random_uniform/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_1/random_flip_left_right/random_uniform/shape?
7random_flip_1/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_1/random_flip_left_right/random_uniform/min?
7random_flip_1/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7random_flip_1/random_flip_left_right/random_uniform/max?
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_1/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02C
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniform?
7random_flip_1/random_flip_left_right/random_uniform/MulMulJrandom_flip_1/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_1/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????29
7random_flip_1/random_flip_left_right/random_uniform/Mul?
4random_flip_1/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/1?
4random_flip_1/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/2?
4random_flip_1/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/3?
2random_flip_1/random_flip_left_right/Reshape/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0=random_flip_1/random_flip_left_right/Reshape/shape/1:output:0=random_flip_1/random_flip_left_right/Reshape/shape/2:output:0=random_flip_1/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_1/random_flip_left_right/Reshape/shape?
,random_flip_1/random_flip_left_right/ReshapeReshape;random_flip_1/random_flip_left_right/random_uniform/Mul:z:0;random_flip_1/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2.
,random_flip_1/random_flip_left_right/Reshape?
*random_flip_1/random_flip_left_right/RoundRound5random_flip_1/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2,
*random_flip_1/random_flip_left_right/Round?
3random_flip_1/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_1/random_flip_left_right/ReverseV2/axis?
.random_flip_1/random_flip_left_right/ReverseV2	ReverseV2@random_flip_1/random_flip_left_right/control_dependency:output:0<random_flip_1/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????20
.random_flip_1/random_flip_left_right/ReverseV2?
(random_flip_1/random_flip_left_right/mulMul.random_flip_1/random_flip_left_right/Round:y:07random_flip_1/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2*
(random_flip_1/random_flip_left_right/mul?
*random_flip_1/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_flip_1/random_flip_left_right/sub/x?
(random_flip_1/random_flip_left_right/subSub3random_flip_1/random_flip_left_right/sub/x:output:0.random_flip_1/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2*
(random_flip_1/random_flip_left_right/sub?
*random_flip_1/random_flip_left_right/mul_1Mul,random_flip_1/random_flip_left_right/sub:z:0@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????2,
*random_flip_1/random_flip_left_right/mul_1?
(random_flip_1/random_flip_left_right/addAddV2,random_flip_1/random_flip_left_right/mul:z:0.random_flip_1/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????2*
(random_flip_1/random_flip_left_right/add?
4random_flip_1/random_flip_up_down/control_dependencyIdentity,random_flip_1/random_flip_left_right/add:z:0*
T0*;
_class1
/-loc:@random_flip_1/random_flip_left_right/add*1
_output_shapes
:???????????26
4random_flip_1/random_flip_up_down/control_dependency?
'random_flip_1/random_flip_up_down/ShapeShape=random_flip_1/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_1/random_flip_up_down/Shape?
5random_flip_1/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_1/random_flip_up_down/strided_slice/stack?
7random_flip_1/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_1/random_flip_up_down/strided_slice/stack_1?
7random_flip_1/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_1/random_flip_up_down/strided_slice/stack_2?
/random_flip_1/random_flip_up_down/strided_sliceStridedSlice0random_flip_1/random_flip_up_down/Shape:output:0>random_flip_1/random_flip_up_down/strided_slice/stack:output:0@random_flip_1/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_1/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_1/random_flip_up_down/strided_slice?
6random_flip_1/random_flip_up_down/random_uniform/shapePack8random_flip_1/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_1/random_flip_up_down/random_uniform/shape?
4random_flip_1/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_1/random_flip_up_down/random_uniform/min?
4random_flip_1/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_flip_1/random_flip_up_down/random_uniform/max?
>random_flip_1/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_1/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02@
>random_flip_1/random_flip_up_down/random_uniform/RandomUniform?
4random_flip_1/random_flip_up_down/random_uniform/MulMulGrandom_flip_1/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_1/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????26
4random_flip_1/random_flip_up_down/random_uniform/Mul?
1random_flip_1/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_1/random_flip_up_down/Reshape/shape/1?
1random_flip_1/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_1/random_flip_up_down/Reshape/shape/2?
1random_flip_1/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_1/random_flip_up_down/Reshape/shape/3?
/random_flip_1/random_flip_up_down/Reshape/shapePack8random_flip_1/random_flip_up_down/strided_slice:output:0:random_flip_1/random_flip_up_down/Reshape/shape/1:output:0:random_flip_1/random_flip_up_down/Reshape/shape/2:output:0:random_flip_1/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_1/random_flip_up_down/Reshape/shape?
)random_flip_1/random_flip_up_down/ReshapeReshape8random_flip_1/random_flip_up_down/random_uniform/Mul:z:08random_flip_1/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2+
)random_flip_1/random_flip_up_down/Reshape?
'random_flip_1/random_flip_up_down/RoundRound2random_flip_1/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????2)
'random_flip_1/random_flip_up_down/Round?
0random_flip_1/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_1/random_flip_up_down/ReverseV2/axis?
+random_flip_1/random_flip_up_down/ReverseV2	ReverseV2=random_flip_1/random_flip_up_down/control_dependency:output:09random_flip_1/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????2-
+random_flip_1/random_flip_up_down/ReverseV2?
%random_flip_1/random_flip_up_down/mulMul+random_flip_1/random_flip_up_down/Round:y:04random_flip_1/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2'
%random_flip_1/random_flip_up_down/mul?
'random_flip_1/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_flip_1/random_flip_up_down/sub/x?
%random_flip_1/random_flip_up_down/subSub0random_flip_1/random_flip_up_down/sub/x:output:0+random_flip_1/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????2'
%random_flip_1/random_flip_up_down/sub?
'random_flip_1/random_flip_up_down/mul_1Mul)random_flip_1/random_flip_up_down/sub:z:0=random_flip_1/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:???????????2)
'random_flip_1/random_flip_up_down/mul_1?
%random_flip_1/random_flip_up_down/addAddV2)random_flip_1/random_flip_up_down/mul:z:0+random_flip_1/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:???????????2'
%random_flip_1/random_flip_up_down/add?
random_rotation_1/ShapeShape)random_flip_1/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_1/Shape?
%random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_1/strided_slice/stack?
'random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_1?
'random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_2?
random_rotation_1/strided_sliceStridedSlice random_rotation_1/Shape:output:0.random_rotation_1/strided_slice/stack:output:00random_rotation_1/strided_slice/stack_1:output:00random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_1/strided_slice?
'random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_1/stack?
)random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_1?
)random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_2?
!random_rotation_1/strided_slice_1StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_1/stack:output:02random_rotation_1/strided_slice_1/stack_1:output:02random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_1?
random_rotation_1/CastCast*random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast?
'random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_2/stack?
)random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_1?
)random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_2?
!random_rotation_1/strided_slice_2StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_2/stack:output:02random_rotation_1/strided_slice_2/stack_1:output:02random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_2?
random_rotation_1/Cast_1Cast*random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast_1?
(random_rotation_1/stateful_uniform/shapePack(random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_1/stateful_uniform/shape?
&random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?2(
&random_rotation_1/stateful_uniform/min?
&random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?2(
&random_rotation_1/stateful_uniform/max?
<random_rotation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_1/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_1/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_1_stateful_uniform_statefuluniform_resourceErandom_rotation_1/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_1/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_1/stateful_uniform/StatefulUniform?
&random_rotation_1/stateful_uniform/subSub/random_rotation_1/stateful_uniform/max:output:0/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_1/stateful_uniform/sub?
&random_rotation_1/stateful_uniform/mulMul;random_rotation_1/stateful_uniform/StatefulUniform:output:0*random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_1/stateful_uniform/mul?
"random_rotation_1/stateful_uniformAdd*random_rotation_1/stateful_uniform/mul:z:0/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_1/stateful_uniform?
'random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_1/rotation_matrix/sub/y?
%random_rotation_1/rotation_matrix/subSubrandom_rotation_1/Cast_1:y:00random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_1/rotation_matrix/sub?
%random_rotation_1/rotation_matrix/CosCos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Cos?
)random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_1/y?
'random_rotation_1/rotation_matrix/sub_1Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_1?
%random_rotation_1/rotation_matrix/mulMul)random_rotation_1/rotation_matrix/Cos:y:0+random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/mul?
%random_rotation_1/rotation_matrix/SinSin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Sin?
)random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_2/y?
'random_rotation_1/rotation_matrix/sub_2Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_2?
'random_rotation_1/rotation_matrix/mul_1Mul)random_rotation_1/rotation_matrix/Sin:y:0+random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_1?
'random_rotation_1/rotation_matrix/sub_3Sub)random_rotation_1/rotation_matrix/mul:z:0+random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_3?
'random_rotation_1/rotation_matrix/sub_4Sub)random_rotation_1/rotation_matrix/sub:z:0+random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_4?
+random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_1/rotation_matrix/truediv/y?
)random_rotation_1/rotation_matrix/truedivRealDiv+random_rotation_1/rotation_matrix/sub_4:z:04random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_1/rotation_matrix/truediv?
)random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_5/y?
'random_rotation_1/rotation_matrix/sub_5Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_5?
'random_rotation_1/rotation_matrix/Sin_1Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_1?
)random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_6/y?
'random_rotation_1/rotation_matrix/sub_6Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_6?
'random_rotation_1/rotation_matrix/mul_2Mul+random_rotation_1/rotation_matrix/Sin_1:y:0+random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_2?
'random_rotation_1/rotation_matrix/Cos_1Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_1?
)random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_7/y?
'random_rotation_1/rotation_matrix/sub_7Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_7?
'random_rotation_1/rotation_matrix/mul_3Mul+random_rotation_1/rotation_matrix/Cos_1:y:0+random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_3?
%random_rotation_1/rotation_matrix/addAddV2+random_rotation_1/rotation_matrix/mul_2:z:0+random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/add?
'random_rotation_1/rotation_matrix/sub_8Sub+random_rotation_1/rotation_matrix/sub_5:z:0)random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_8?
-random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_1/rotation_matrix/truediv_1/y?
+random_rotation_1/rotation_matrix/truediv_1RealDiv+random_rotation_1/rotation_matrix/sub_8:z:06random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_1/rotation_matrix/truediv_1?
'random_rotation_1/rotation_matrix/ShapeShape&random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_1/rotation_matrix/Shape?
5random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_1/rotation_matrix/strided_slice/stack?
7random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_1?
7random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_2?
/random_rotation_1/rotation_matrix/strided_sliceStridedSlice0random_rotation_1/rotation_matrix/Shape:output:0>random_rotation_1/rotation_matrix/strided_slice/stack:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_1/rotation_matrix/strided_slice?
'random_rotation_1/rotation_matrix/Cos_2Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_2?
7random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_1/stack?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_1StridedSlice+random_rotation_1/rotation_matrix/Cos_2:y:0@random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_1?
'random_rotation_1/rotation_matrix/Sin_2Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_2?
7random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_2/stack?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_2StridedSlice+random_rotation_1/rotation_matrix/Sin_2:y:0@random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_2?
%random_rotation_1/rotation_matrix/NegNeg:random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Neg?
7random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_3/stack?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_3StridedSlice-random_rotation_1/rotation_matrix/truediv:z:0@random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_3?
'random_rotation_1/rotation_matrix/Sin_3Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_3?
7random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_4/stack?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_4StridedSlice+random_rotation_1/rotation_matrix/Sin_3:y:0@random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_4?
'random_rotation_1/rotation_matrix/Cos_3Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_3?
7random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_5/stack?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_5StridedSlice+random_rotation_1/rotation_matrix/Cos_3:y:0@random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_5?
7random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_6/stack?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_6StridedSlice/random_rotation_1/rotation_matrix/truediv_1:z:0@random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_6?
-random_rotation_1/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/zeros/mul/y?
+random_rotation_1/rotation_matrix/zeros/mulMul8random_rotation_1/rotation_matrix/strided_slice:output:06random_rotation_1/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_1/rotation_matrix/zeros/mul?
.random_rotation_1/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_1/rotation_matrix/zeros/Less/y?
,random_rotation_1/rotation_matrix/zeros/LessLess/random_rotation_1/rotation_matrix/zeros/mul:z:07random_rotation_1/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_1/rotation_matrix/zeros/Less?
0random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_1/rotation_matrix/zeros/packed/1?
.random_rotation_1/rotation_matrix/zeros/packedPack8random_rotation_1/rotation_matrix/strided_slice:output:09random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_1/rotation_matrix/zeros/packed?
-random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_1/rotation_matrix/zeros/Const?
'random_rotation_1/rotation_matrix/zerosFill7random_rotation_1/rotation_matrix/zeros/packed:output:06random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/zeros?
-random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/concat/axis?
(random_rotation_1/rotation_matrix/concatConcatV2:random_rotation_1/rotation_matrix/strided_slice_1:output:0)random_rotation_1/rotation_matrix/Neg:y:0:random_rotation_1/rotation_matrix/strided_slice_3:output:0:random_rotation_1/rotation_matrix/strided_slice_4:output:0:random_rotation_1/rotation_matrix/strided_slice_5:output:0:random_rotation_1/rotation_matrix/strided_slice_6:output:00random_rotation_1/rotation_matrix/zeros:output:06random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_1/rotation_matrix/concat?
!random_rotation_1/transform/ShapeShape)random_flip_1/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_1/transform/Shape?
/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_1/transform/strided_slice/stack?
1random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_1?
1random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_2?
)random_rotation_1/transform/strided_sliceStridedSlice*random_rotation_1/transform/Shape:output:08random_rotation_1/transform/strided_slice/stack:output:0:random_rotation_1/transform/strided_slice/stack_1:output:0:random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_1/transform/strided_slice?
&random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_1/transform/fill_value?
6random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_1/random_flip_up_down/add:z:01random_rotation_1/rotation_matrix/concat:output:02random_rotation_1/transform/strided_slice:output:0/random_rotation_1/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_1/transform/ImageProjectiveTransformV3?
random_zoom_1/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_1/Shape?
!random_zoom_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_1/strided_slice/stack?
#random_zoom_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_1?
#random_zoom_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_2?
random_zoom_1/strided_sliceStridedSlicerandom_zoom_1/Shape:output:0*random_zoom_1/strided_slice/stack:output:0,random_zoom_1/strided_slice/stack_1:output:0,random_zoom_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice?
#random_zoom_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_1/stack?
%random_zoom_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_1?
%random_zoom_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_2?
random_zoom_1/strided_slice_1StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_1/stack:output:0.random_zoom_1/strided_slice_1/stack_1:output:0.random_zoom_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_1?
random_zoom_1/CastCast&random_zoom_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast?
#random_zoom_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_2/stack?
%random_zoom_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_1?
%random_zoom_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_2?
random_zoom_1/strided_slice_2StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_2/stack:output:0.random_zoom_1/strided_slice_2/stack_1:output:0.random_zoom_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_2?
random_zoom_1/Cast_1Cast&random_zoom_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast_1?
&random_zoom_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_1/stateful_uniform/shape/1?
$random_zoom_1/stateful_uniform/shapePack$random_zoom_1/strided_slice:output:0/random_zoom_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_1/stateful_uniform/shape?
"random_zoom_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_1/stateful_uniform/min?
"random_zoom_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_1/stateful_uniform/max?
8random_zoom_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_1/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_1/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_1_stateful_uniform_statefuluniform_resourceArandom_zoom_1/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_1/stateful_uniform/StatefulUniform?
"random_zoom_1/stateful_uniform/subSub+random_zoom_1/stateful_uniform/max:output:0+random_zoom_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_1/stateful_uniform/sub?
"random_zoom_1/stateful_uniform/mulMul7random_zoom_1/stateful_uniform/StatefulUniform:output:0&random_zoom_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_1/stateful_uniform/mul?
random_zoom_1/stateful_uniformAdd&random_zoom_1/stateful_uniform/mul:z:0+random_zoom_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_1/stateful_uniformx
random_zoom_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_1/concat/axis?
random_zoom_1/concatConcatV2"random_zoom_1/stateful_uniform:z:0"random_zoom_1/stateful_uniform:z:0"random_zoom_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_1/concat?
random_zoom_1/zoom_matrix/ShapeShaperandom_zoom_1/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_1/zoom_matrix/Shape?
-random_zoom_1/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_1/zoom_matrix/strided_slice/stack?
/random_zoom_1/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_1?
/random_zoom_1/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_2?
'random_zoom_1/zoom_matrix/strided_sliceStridedSlice(random_zoom_1/zoom_matrix/Shape:output:06random_zoom_1/zoom_matrix/strided_slice/stack:output:08random_zoom_1/zoom_matrix/strided_slice/stack_1:output:08random_zoom_1/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_1/zoom_matrix/strided_slice?
random_zoom_1/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_1/zoom_matrix/sub/y?
random_zoom_1/zoom_matrix/subSubrandom_zoom_1/Cast_1:y:0(random_zoom_1/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_1/zoom_matrix/sub?
#random_zoom_1/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_1/zoom_matrix/truediv/y?
!random_zoom_1/zoom_matrix/truedivRealDiv!random_zoom_1/zoom_matrix/sub:z:0,random_zoom_1/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_1/zoom_matrix/truediv?
/random_zoom_1/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_1/stack?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_1?
!random_zoom_1/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_1/x?
random_zoom_1/zoom_matrix/sub_1Sub*random_zoom_1/zoom_matrix/sub_1/x:output:02random_zoom_1/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_1?
random_zoom_1/zoom_matrix/mulMul%random_zoom_1/zoom_matrix/truediv:z:0#random_zoom_1/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_1/zoom_matrix/mul?
!random_zoom_1/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_2/y?
random_zoom_1/zoom_matrix/sub_2Subrandom_zoom_1/Cast:y:0*random_zoom_1/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_1/zoom_matrix/sub_2?
%random_zoom_1/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_1/zoom_matrix/truediv_1/y?
#random_zoom_1/zoom_matrix/truediv_1RealDiv#random_zoom_1/zoom_matrix/sub_2:z:0.random_zoom_1/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/truediv_1?
/random_zoom_1/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_2/stack?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_2?
!random_zoom_1/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_3/x?
random_zoom_1/zoom_matrix/sub_3Sub*random_zoom_1/zoom_matrix/sub_3/x:output:02random_zoom_1/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_3?
random_zoom_1/zoom_matrix/mul_1Mul'random_zoom_1/zoom_matrix/truediv_1:z:0#random_zoom_1/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/mul_1?
/random_zoom_1/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_3/stack?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_3?
%random_zoom_1/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/zeros/mul/y?
#random_zoom_1/zoom_matrix/zeros/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:0.random_zoom_1/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/zeros/mul?
&random_zoom_1/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_1/zoom_matrix/zeros/Less/y?
$random_zoom_1/zoom_matrix/zeros/LessLess'random_zoom_1/zoom_matrix/zeros/mul:z:0/random_zoom_1/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_1/zoom_matrix/zeros/Less?
(random_zoom_1/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_1/zoom_matrix/zeros/packed/1?
&random_zoom_1/zoom_matrix/zeros/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:01random_zoom_1/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_1/zoom_matrix/zeros/packed?
%random_zoom_1/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_1/zoom_matrix/zeros/Const?
random_zoom_1/zoom_matrix/zerosFill/random_zoom_1/zoom_matrix/zeros/packed:output:0.random_zoom_1/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/zeros?
'random_zoom_1/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_1/mul/y?
%random_zoom_1/zoom_matrix/zeros_1/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_1/mul?
(random_zoom_1/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_1/Less/y?
&random_zoom_1/zoom_matrix/zeros_1/LessLess)random_zoom_1/zoom_matrix/zeros_1/mul:z:01random_zoom_1/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_1/Less?
*random_zoom_1/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_1/packed/1?
(random_zoom_1/zoom_matrix/zeros_1/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_1/packed?
'random_zoom_1/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_1/Const?
!random_zoom_1/zoom_matrix/zeros_1Fill1random_zoom_1/zoom_matrix/zeros_1/packed:output:00random_zoom_1/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_1?
/random_zoom_1/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_4/stack?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_4?
'random_zoom_1/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_2/mul/y?
%random_zoom_1/zoom_matrix/zeros_2/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_2/mul?
(random_zoom_1/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_2/Less/y?
&random_zoom_1/zoom_matrix/zeros_2/LessLess)random_zoom_1/zoom_matrix/zeros_2/mul:z:01random_zoom_1/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_2/Less?
*random_zoom_1/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_2/packed/1?
(random_zoom_1/zoom_matrix/zeros_2/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_2/packed?
'random_zoom_1/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_2/Const?
!random_zoom_1/zoom_matrix/zeros_2Fill1random_zoom_1/zoom_matrix/zeros_2/packed:output:00random_zoom_1/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_2?
%random_zoom_1/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/concat/axis?
 random_zoom_1/zoom_matrix/concatConcatV22random_zoom_1/zoom_matrix/strided_slice_3:output:0(random_zoom_1/zoom_matrix/zeros:output:0!random_zoom_1/zoom_matrix/mul:z:0*random_zoom_1/zoom_matrix/zeros_1:output:02random_zoom_1/zoom_matrix/strided_slice_4:output:0#random_zoom_1/zoom_matrix/mul_1:z:0*random_zoom_1/zoom_matrix/zeros_2:output:0.random_zoom_1/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_1/zoom_matrix/concat?
random_zoom_1/transform/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_1/transform/Shape?
+random_zoom_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_1/transform/strided_slice/stack?
-random_zoom_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_1?
-random_zoom_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_2?
%random_zoom_1/transform/strided_sliceStridedSlice&random_zoom_1/transform/Shape:output:04random_zoom_1/transform/strided_slice/stack:output:06random_zoom_1/transform/strided_slice/stack_1:output:06random_zoom_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_1/transform/strided_slice?
"random_zoom_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_1/transform/fill_value?
2random_zoom_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_1/zoom_matrix/concat:output:0.random_zoom_1/transform/strided_slice:output:0+random_zoom_1/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_1/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_1/transform/ImageProjectiveTransformV3:transformed_images:03^random_rotation_1/stateful_uniform/StatefulUniform/^random_zoom_1/stateful_uniform/StatefulUniform*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::2h
2random_rotation_1/stateful_uniform/StatefulUniform2random_rotation_1/stateful_uniform/StatefulUniform2`
.random_zoom_1/stateful_uniform/StatefulUniform.random_zoom_1/stateful_uniform/StatefulUniform:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_3_layer_call_fn_1723252

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_17232462
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
J
.__inference_activation_3_layer_call_fn_1724713

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_17234422
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
)__inference_dropout_layer_call_fn_1724764

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_17235032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1723381

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????<<@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????>>@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1723234

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_layer_call_and_return_conditional_losses_1723503

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
E
)__inference_dropout_layer_call_fn_1724769

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_17235082
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
H
,__inference_activation_layer_call_fn_1724626

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_17233222
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????@:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_3_layer_call_and_return_conditional_losses_1724708

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_1724775

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?V
?
G__inference_sequential_layer_call_and_return_conditional_losses_1723709

inputs
sequential_1_1723652
sequential_1_1723654
conv2d_1723661
conv2d_1723663
conv2d_1_1723668
conv2d_1_1723670
conv2d_2_1723675
conv2d_2_1723677
conv2d_3_1723682
conv2d_3_1723684
conv2d_4_1723689
conv2d_4_1723691
dense_1723698
dense_1723700
dense_1_1723703
dense_1_1723705
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinputssequential_1_1723652sequential_1_1723654*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_17231882&
$sequential_1/StatefulPartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul-sequential_1/StatefulPartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
conv2d/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_1723661conv2d_1723663*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_17233012 
conv2d/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_17233222
activation/PartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_17232102
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_1723668conv2d_1_1723670*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_17233412"
 conv2d_1/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_17233622
activation_1/PartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17232222!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_1723675conv2d_2_1723677*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_17233812"
 conv2d_2/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_17234022
activation_2/PartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17232342!
max_pooling2d_2/PartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_1723682conv2d_3_1723684*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_17234212"
 conv2d_3/StatefulPartitionedCall?
activation_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_17234422
activation_3/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_17232462!
max_pooling2d_3/PartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_1723689conv2d_4_1723691*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_17234612"
 conv2d_4/StatefulPartitionedCall?
activation_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_17234822
activation_4/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_17232582!
max_pooling2d_4/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_17235032!
dropout/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_17235272
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1723698dense_1723700*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_17235462
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1723703dense_1_1723705*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_17235732!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
J
.__inference_activation_1_layer_call_fn_1724655

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_17233622
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????}}@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????}}@:W S
/
_output_shapes
:?????????}}@
 
_user_specified_nameinputs
?
c
G__inference_activation_layer_call_and_return_conditional_losses_1723322

inputs
identityX
ReluReluinputs*
T0*1
_output_shapes
:???????????@2
Relup
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????@:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_1725192
file_prefix"
assignvariableop_conv2d_kernel"
assignvariableop_1_conv2d_bias&
"assignvariableop_2_conv2d_1_kernel$
 assignvariableop_3_conv2d_1_bias&
"assignvariableop_4_conv2d_2_kernel$
 assignvariableop_5_conv2d_2_bias&
"assignvariableop_6_conv2d_3_kernel$
 assignvariableop_7_conv2d_3_bias&
"assignvariableop_8_conv2d_4_kernel$
 assignvariableop_9_conv2d_4_bias$
 assignvariableop_10_dense_kernel"
assignvariableop_11_dense_bias&
"assignvariableop_12_dense_1_kernel$
 assignvariableop_13_dense_1_bias!
assignvariableop_14_adam_iter#
assignvariableop_15_adam_beta_1#
assignvariableop_16_adam_beta_2"
assignvariableop_17_adam_decay*
&assignvariableop_18_adam_learning_rate 
assignvariableop_19_variable"
assignvariableop_20_variable_1"
assignvariableop_21_variable_2
assignvariableop_22_total
assignvariableop_23_count
assignvariableop_24_total_1
assignvariableop_25_count_1,
(assignvariableop_26_adam_conv2d_kernel_m*
&assignvariableop_27_adam_conv2d_bias_m.
*assignvariableop_28_adam_conv2d_1_kernel_m,
(assignvariableop_29_adam_conv2d_1_bias_m.
*assignvariableop_30_adam_conv2d_2_kernel_m,
(assignvariableop_31_adam_conv2d_2_bias_m.
*assignvariableop_32_adam_conv2d_3_kernel_m,
(assignvariableop_33_adam_conv2d_3_bias_m.
*assignvariableop_34_adam_conv2d_4_kernel_m,
(assignvariableop_35_adam_conv2d_4_bias_m+
'assignvariableop_36_adam_dense_kernel_m)
%assignvariableop_37_adam_dense_bias_m-
)assignvariableop_38_adam_dense_1_kernel_m+
'assignvariableop_39_adam_dense_1_bias_m,
(assignvariableop_40_adam_conv2d_kernel_v*
&assignvariableop_41_adam_conv2d_bias_v.
*assignvariableop_42_adam_conv2d_1_kernel_v,
(assignvariableop_43_adam_conv2d_1_bias_v.
*assignvariableop_44_adam_conv2d_2_kernel_v,
(assignvariableop_45_adam_conv2d_2_bias_v.
*assignvariableop_46_adam_conv2d_3_kernel_v,
(assignvariableop_47_adam_conv2d_3_bias_v.
*assignvariableop_48_adam_conv2d_4_kernel_v,
(assignvariableop_49_adam_conv2d_4_bias_v+
'assignvariableop_50_adam_dense_kernel_v)
%assignvariableop_51_adam_dense_bias_v-
)assignvariableop_52_adam_dense_1_kernel_v+
'assignvariableop_53_adam_dense_1_bias_v
identity_55??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
value?B?7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927				2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_1_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_variableIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_2Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp&assignvariableop_27_adam_conv2d_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_1_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_conv2d_1_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_2_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_conv2d_2_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_3_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_3_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_4_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_conv2d_4_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp%assignvariableop_37_adam_dense_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_1_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_1_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_conv2d_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp&assignvariableop_41_adam_conv2d_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_conv2d_1_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_conv2d_1_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_conv2d_2_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_conv2d_2_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_conv2d_3_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_conv2d_3_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_conv2d_4_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_conv2d_4_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp%assignvariableop_51_adam_dense_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_dense_1_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp'assignvariableop_53_adam_dense_1_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_539
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_54Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_54?	
Identity_55IdentityIdentity_54:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_55"#
identity_55Identity_55:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1724723

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_1_layer_call_and_return_conditional_losses_1723362

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????}}@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????}}@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????}}@:W S
/
_output_shapes
:?????????}}@
 
_user_specified_nameinputs
?l
?
 __inference__traced_save_1725020
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	)
%savev2_variable_2_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
value?B?7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*?
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *E
dtypes;
927				2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@@:@:@@:@:@@:@:@@:@:
??:?:	?
:
: : : : : :::: : : : :@:@:@@:@:@@:@:@@:@:@@:@:
??:?:	?
:
:@:@:@@:@:@@:@:@@:@:@@:@:
??:?:	?
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@:  

_output_shapes
:@:,!(
&
_output_shapes
:@@: "

_output_shapes
:@:,#(
&
_output_shapes
:@@: $

_output_shapes
:@:&%"
 
_output_shapes
:
??:!&

_output_shapes	
:?:%'!

_output_shapes
:	?
: (

_output_shapes
:
:,)(
&
_output_shapes
:@: *

_output_shapes
:@:,+(
&
_output_shapes
:@@: ,

_output_shapes
:@:,-(
&
_output_shapes
:@@: .

_output_shapes
:@:,/(
&
_output_shapes
:@@: 0

_output_shapes
:@:,1(
&
_output_shapes
:@@: 2

_output_shapes
:@:&3"
 
_output_shapes
:
??:!4

_output_shapes	
:?:%5!

_output_shapes
:	?
: 6

_output_shapes
:
:7

_output_shapes
: 
?
e
I__inference_activation_1_layer_call_and_return_conditional_losses_1724650

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????}}@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????}}@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????}}@:W S
/
_output_shapes
:?????????}}@
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1724694

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?W
?
G__inference_sequential_layer_call_and_return_conditional_losses_1723590
sequential_1_input
sequential_1_1723282
sequential_1_1723284
conv2d_1723312
conv2d_1723314
conv2d_1_1723352
conv2d_1_1723354
conv2d_2_1723392
conv2d_2_1723394
conv2d_3_1723432
conv2d_3_1723434
conv2d_4_1723472
conv2d_4_1723474
dense_1723557
dense_1723559
dense_1_1723584
dense_1_1723586
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallsequential_1_inputsequential_1_1723282sequential_1_1723284*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_17231882&
$sequential_1/StatefulPartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul-sequential_1/StatefulPartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
conv2d/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_1723312conv2d_1723314*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_17233012 
conv2d/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_17233222
activation/PartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_17232102
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_1723352conv2d_1_1723354*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_17233412"
 conv2d_1/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_17233622
activation_1/PartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17232222!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_1723392conv2d_2_1723394*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_17233812"
 conv2d_2/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_17234022
activation_2/PartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17232342!
max_pooling2d_2/PartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_1723432conv2d_3_1723434*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_17234212"
 conv2d_3/StatefulPartitionedCall?
activation_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_17234422
activation_3/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_17232462!
max_pooling2d_3/PartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_1723472conv2d_4_1723474*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_17234612"
 conv2d_4/StatefulPartitionedCall?
activation_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_17234822
activation_4/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_17232582!
max_pooling2d_4/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_17235032!
dropout/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_17235272
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1723557dense_1723559*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_17235462
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1723584dense_1_1723586*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_17235732!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:e a
1
_output_shapes
:???????????
,
_user_specified_namesequential_1_input
?
e
I__inference_activation_2_layer_call_and_return_conditional_losses_1723402

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????<<@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????<<@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????<<@:W S
/
_output_shapes
:?????????<<@
 
_user_specified_nameinputs
??
?
G__inference_sequential_layer_call_and_return_conditional_losses_1724194

inputsL
Hsequential_1_random_rotation_1_stateful_uniform_statefuluniform_resourceH
Dsequential_1_random_zoom_1_stateful_uniform_statefuluniform_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?conv2d_4/BiasAdd/ReadVariableOp?conv2d_4/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp??sequential_1/random_rotation_1/stateful_uniform/StatefulUniform?;sequential_1/random_zoom_1/stateful_uniform/StatefulUniform?
Dsequential_1/random_flip_1/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:???????????2F
Dsequential_1/random_flip_1/random_flip_left_right/control_dependency?
7sequential_1/random_flip_1/random_flip_left_right/ShapeShapeMsequential_1/random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:29
7sequential_1/random_flip_1/random_flip_left_right/Shape?
Esequential_1/random_flip_1/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_1/random_flip_1/random_flip_left_right/strided_slice/stack?
Gsequential_1/random_flip_1/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_1/random_flip_1/random_flip_left_right/strided_slice/stack_1?
Gsequential_1/random_flip_1/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_1/random_flip_1/random_flip_left_right/strided_slice/stack_2?
?sequential_1/random_flip_1/random_flip_left_right/strided_sliceStridedSlice@sequential_1/random_flip_1/random_flip_left_right/Shape:output:0Nsequential_1/random_flip_1/random_flip_left_right/strided_slice/stack:output:0Psequential_1/random_flip_1/random_flip_left_right/strided_slice/stack_1:output:0Psequential_1/random_flip_1/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2A
?sequential_1/random_flip_1/random_flip_left_right/strided_slice?
Fsequential_1/random_flip_1/random_flip_left_right/random_uniform/shapePackHsequential_1/random_flip_1/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2H
Fsequential_1/random_flip_1/random_flip_left_right/random_uniform/shape?
Dsequential_1/random_flip_1/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2F
Dsequential_1/random_flip_1/random_flip_left_right/random_uniform/min?
Dsequential_1/random_flip_1/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2F
Dsequential_1/random_flip_1/random_flip_left_right/random_uniform/max?
Nsequential_1/random_flip_1/random_flip_left_right/random_uniform/RandomUniformRandomUniformOsequential_1/random_flip_1/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02P
Nsequential_1/random_flip_1/random_flip_left_right/random_uniform/RandomUniform?
Dsequential_1/random_flip_1/random_flip_left_right/random_uniform/MulMulWsequential_1/random_flip_1/random_flip_left_right/random_uniform/RandomUniform:output:0Msequential_1/random_flip_1/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????2F
Dsequential_1/random_flip_1/random_flip_left_right/random_uniform/Mul?
Asequential_1/random_flip_1/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_1/random_flip_1/random_flip_left_right/Reshape/shape/1?
Asequential_1/random_flip_1/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_1/random_flip_1/random_flip_left_right/Reshape/shape/2?
Asequential_1/random_flip_1/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_1/random_flip_1/random_flip_left_right/Reshape/shape/3?
?sequential_1/random_flip_1/random_flip_left_right/Reshape/shapePackHsequential_1/random_flip_1/random_flip_left_right/strided_slice:output:0Jsequential_1/random_flip_1/random_flip_left_right/Reshape/shape/1:output:0Jsequential_1/random_flip_1/random_flip_left_right/Reshape/shape/2:output:0Jsequential_1/random_flip_1/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2A
?sequential_1/random_flip_1/random_flip_left_right/Reshape/shape?
9sequential_1/random_flip_1/random_flip_left_right/ReshapeReshapeHsequential_1/random_flip_1/random_flip_left_right/random_uniform/Mul:z:0Hsequential_1/random_flip_1/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2;
9sequential_1/random_flip_1/random_flip_left_right/Reshape?
7sequential_1/random_flip_1/random_flip_left_right/RoundRoundBsequential_1/random_flip_1/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????29
7sequential_1/random_flip_1/random_flip_left_right/Round?
@sequential_1/random_flip_1/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_1/random_flip_1/random_flip_left_right/ReverseV2/axis?
;sequential_1/random_flip_1/random_flip_left_right/ReverseV2	ReverseV2Msequential_1/random_flip_1/random_flip_left_right/control_dependency:output:0Isequential_1/random_flip_1/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????2=
;sequential_1/random_flip_1/random_flip_left_right/ReverseV2?
5sequential_1/random_flip_1/random_flip_left_right/mulMul;sequential_1/random_flip_1/random_flip_left_right/Round:y:0Dsequential_1/random_flip_1/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????27
5sequential_1/random_flip_1/random_flip_left_right/mul?
7sequential_1/random_flip_1/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential_1/random_flip_1/random_flip_left_right/sub/x?
5sequential_1/random_flip_1/random_flip_left_right/subSub@sequential_1/random_flip_1/random_flip_left_right/sub/x:output:0;sequential_1/random_flip_1/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????27
5sequential_1/random_flip_1/random_flip_left_right/sub?
7sequential_1/random_flip_1/random_flip_left_right/mul_1Mul9sequential_1/random_flip_1/random_flip_left_right/sub:z:0Msequential_1/random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????29
7sequential_1/random_flip_1/random_flip_left_right/mul_1?
5sequential_1/random_flip_1/random_flip_left_right/addAddV29sequential_1/random_flip_1/random_flip_left_right/mul:z:0;sequential_1/random_flip_1/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????27
5sequential_1/random_flip_1/random_flip_left_right/add?
Asequential_1/random_flip_1/random_flip_up_down/control_dependencyIdentity9sequential_1/random_flip_1/random_flip_left_right/add:z:0*
T0*H
_class>
<:loc:@sequential_1/random_flip_1/random_flip_left_right/add*1
_output_shapes
:???????????2C
Asequential_1/random_flip_1/random_flip_up_down/control_dependency?
4sequential_1/random_flip_1/random_flip_up_down/ShapeShapeJsequential_1/random_flip_1/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:26
4sequential_1/random_flip_1/random_flip_up_down/Shape?
Bsequential_1/random_flip_1/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bsequential_1/random_flip_1/random_flip_up_down/strided_slice/stack?
Dsequential_1/random_flip_1/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_1/random_flip_1/random_flip_up_down/strided_slice/stack_1?
Dsequential_1/random_flip_1/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_1/random_flip_1/random_flip_up_down/strided_slice/stack_2?
<sequential_1/random_flip_1/random_flip_up_down/strided_sliceStridedSlice=sequential_1/random_flip_1/random_flip_up_down/Shape:output:0Ksequential_1/random_flip_1/random_flip_up_down/strided_slice/stack:output:0Msequential_1/random_flip_1/random_flip_up_down/strided_slice/stack_1:output:0Msequential_1/random_flip_1/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<sequential_1/random_flip_1/random_flip_up_down/strided_slice?
Csequential_1/random_flip_1/random_flip_up_down/random_uniform/shapePackEsequential_1/random_flip_1/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:2E
Csequential_1/random_flip_1/random_flip_up_down/random_uniform/shape?
Asequential_1/random_flip_1/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2C
Asequential_1/random_flip_1/random_flip_up_down/random_uniform/min?
Asequential_1/random_flip_1/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2C
Asequential_1/random_flip_1/random_flip_up_down/random_uniform/max?
Ksequential_1/random_flip_1/random_flip_up_down/random_uniform/RandomUniformRandomUniformLsequential_1/random_flip_1/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02M
Ksequential_1/random_flip_1/random_flip_up_down/random_uniform/RandomUniform?
Asequential_1/random_flip_1/random_flip_up_down/random_uniform/MulMulTsequential_1/random_flip_1/random_flip_up_down/random_uniform/RandomUniform:output:0Jsequential_1/random_flip_1/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????2C
Asequential_1/random_flip_1/random_flip_up_down/random_uniform/Mul?
>sequential_1/random_flip_1/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_1/random_flip_1/random_flip_up_down/Reshape/shape/1?
>sequential_1/random_flip_1/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_1/random_flip_1/random_flip_up_down/Reshape/shape/2?
>sequential_1/random_flip_1/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_1/random_flip_1/random_flip_up_down/Reshape/shape/3?
<sequential_1/random_flip_1/random_flip_up_down/Reshape/shapePackEsequential_1/random_flip_1/random_flip_up_down/strided_slice:output:0Gsequential_1/random_flip_1/random_flip_up_down/Reshape/shape/1:output:0Gsequential_1/random_flip_1/random_flip_up_down/Reshape/shape/2:output:0Gsequential_1/random_flip_1/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2>
<sequential_1/random_flip_1/random_flip_up_down/Reshape/shape?
6sequential_1/random_flip_1/random_flip_up_down/ReshapeReshapeEsequential_1/random_flip_1/random_flip_up_down/random_uniform/Mul:z:0Esequential_1/random_flip_1/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????28
6sequential_1/random_flip_1/random_flip_up_down/Reshape?
4sequential_1/random_flip_1/random_flip_up_down/RoundRound?sequential_1/random_flip_1/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????26
4sequential_1/random_flip_1/random_flip_up_down/Round?
=sequential_1/random_flip_1/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_1/random_flip_1/random_flip_up_down/ReverseV2/axis?
8sequential_1/random_flip_1/random_flip_up_down/ReverseV2	ReverseV2Jsequential_1/random_flip_1/random_flip_up_down/control_dependency:output:0Fsequential_1/random_flip_1/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????2:
8sequential_1/random_flip_1/random_flip_up_down/ReverseV2?
2sequential_1/random_flip_1/random_flip_up_down/mulMul8sequential_1/random_flip_1/random_flip_up_down/Round:y:0Asequential_1/random_flip_1/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:???????????24
2sequential_1/random_flip_1/random_flip_up_down/mul?
4sequential_1/random_flip_1/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4sequential_1/random_flip_1/random_flip_up_down/sub/x?
2sequential_1/random_flip_1/random_flip_up_down/subSub=sequential_1/random_flip_1/random_flip_up_down/sub/x:output:08sequential_1/random_flip_1/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????24
2sequential_1/random_flip_1/random_flip_up_down/sub?
4sequential_1/random_flip_1/random_flip_up_down/mul_1Mul6sequential_1/random_flip_1/random_flip_up_down/sub:z:0Jsequential_1/random_flip_1/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:???????????26
4sequential_1/random_flip_1/random_flip_up_down/mul_1?
2sequential_1/random_flip_1/random_flip_up_down/addAddV26sequential_1/random_flip_1/random_flip_up_down/mul:z:08sequential_1/random_flip_1/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:???????????24
2sequential_1/random_flip_1/random_flip_up_down/add?
$sequential_1/random_rotation_1/ShapeShape6sequential_1/random_flip_1/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2&
$sequential_1/random_rotation_1/Shape?
2sequential_1/random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2sequential_1/random_rotation_1/strided_slice/stack?
4sequential_1/random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_1/random_rotation_1/strided_slice/stack_1?
4sequential_1/random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_1/random_rotation_1/strided_slice/stack_2?
,sequential_1/random_rotation_1/strided_sliceStridedSlice-sequential_1/random_rotation_1/Shape:output:0;sequential_1/random_rotation_1/strided_slice/stack:output:0=sequential_1/random_rotation_1/strided_slice/stack_1:output:0=sequential_1/random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,sequential_1/random_rotation_1/strided_slice?
4sequential_1/random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4sequential_1/random_rotation_1/strided_slice_1/stack?
6sequential_1/random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_1/random_rotation_1/strided_slice_1/stack_1?
6sequential_1/random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_1/random_rotation_1/strided_slice_1/stack_2?
.sequential_1/random_rotation_1/strided_slice_1StridedSlice-sequential_1/random_rotation_1/Shape:output:0=sequential_1/random_rotation_1/strided_slice_1/stack:output:0?sequential_1/random_rotation_1/strided_slice_1/stack_1:output:0?sequential_1/random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_1/random_rotation_1/strided_slice_1?
#sequential_1/random_rotation_1/CastCast7sequential_1/random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#sequential_1/random_rotation_1/Cast?
4sequential_1/random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4sequential_1/random_rotation_1/strided_slice_2/stack?
6sequential_1/random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_1/random_rotation_1/strided_slice_2/stack_1?
6sequential_1/random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_1/random_rotation_1/strided_slice_2/stack_2?
.sequential_1/random_rotation_1/strided_slice_2StridedSlice-sequential_1/random_rotation_1/Shape:output:0=sequential_1/random_rotation_1/strided_slice_2/stack:output:0?sequential_1/random_rotation_1/strided_slice_2/stack_1:output:0?sequential_1/random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_1/random_rotation_1/strided_slice_2?
%sequential_1/random_rotation_1/Cast_1Cast7sequential_1/random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%sequential_1/random_rotation_1/Cast_1?
5sequential_1/random_rotation_1/stateful_uniform/shapePack5sequential_1/random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:27
5sequential_1/random_rotation_1/stateful_uniform/shape?
3sequential_1/random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?25
3sequential_1/random_rotation_1/stateful_uniform/min?
3sequential_1/random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?25
3sequential_1/random_rotation_1/stateful_uniform/max?
Isequential_1/random_rotation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2K
Isequential_1/random_rotation_1/stateful_uniform/StatefulUniform/algorithm?
?sequential_1/random_rotation_1/stateful_uniform/StatefulUniformStatefulUniformHsequential_1_random_rotation_1_stateful_uniform_statefuluniform_resourceRsequential_1/random_rotation_1/stateful_uniform/StatefulUniform/algorithm:output:0>sequential_1/random_rotation_1/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype02A
?sequential_1/random_rotation_1/stateful_uniform/StatefulUniform?
3sequential_1/random_rotation_1/stateful_uniform/subSub<sequential_1/random_rotation_1/stateful_uniform/max:output:0<sequential_1/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 25
3sequential_1/random_rotation_1/stateful_uniform/sub?
3sequential_1/random_rotation_1/stateful_uniform/mulMulHsequential_1/random_rotation_1/stateful_uniform/StatefulUniform:output:07sequential_1/random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????25
3sequential_1/random_rotation_1/stateful_uniform/mul?
/sequential_1/random_rotation_1/stateful_uniformAdd7sequential_1/random_rotation_1/stateful_uniform/mul:z:0<sequential_1/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????21
/sequential_1/random_rotation_1/stateful_uniform?
4sequential_1/random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4sequential_1/random_rotation_1/rotation_matrix/sub/y?
2sequential_1/random_rotation_1/rotation_matrix/subSub)sequential_1/random_rotation_1/Cast_1:y:0=sequential_1/random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 24
2sequential_1/random_rotation_1/rotation_matrix/sub?
2sequential_1/random_rotation_1/rotation_matrix/CosCos3sequential_1/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation_1/rotation_matrix/Cos?
6sequential_1/random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_1/random_rotation_1/rotation_matrix/sub_1/y?
4sequential_1/random_rotation_1/rotation_matrix/sub_1Sub)sequential_1/random_rotation_1/Cast_1:y:0?sequential_1/random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 26
4sequential_1/random_rotation_1/rotation_matrix/sub_1?
2sequential_1/random_rotation_1/rotation_matrix/mulMul6sequential_1/random_rotation_1/rotation_matrix/Cos:y:08sequential_1/random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation_1/rotation_matrix/mul?
2sequential_1/random_rotation_1/rotation_matrix/SinSin3sequential_1/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation_1/rotation_matrix/Sin?
6sequential_1/random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_1/random_rotation_1/rotation_matrix/sub_2/y?
4sequential_1/random_rotation_1/rotation_matrix/sub_2Sub'sequential_1/random_rotation_1/Cast:y:0?sequential_1/random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 26
4sequential_1/random_rotation_1/rotation_matrix/sub_2?
4sequential_1/random_rotation_1/rotation_matrix/mul_1Mul6sequential_1/random_rotation_1/rotation_matrix/Sin:y:08sequential_1/random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/mul_1?
4sequential_1/random_rotation_1/rotation_matrix/sub_3Sub6sequential_1/random_rotation_1/rotation_matrix/mul:z:08sequential_1/random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/sub_3?
4sequential_1/random_rotation_1/rotation_matrix/sub_4Sub6sequential_1/random_rotation_1/rotation_matrix/sub:z:08sequential_1/random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/sub_4?
8sequential_1/random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2:
8sequential_1/random_rotation_1/rotation_matrix/truediv/y?
6sequential_1/random_rotation_1/rotation_matrix/truedivRealDiv8sequential_1/random_rotation_1/rotation_matrix/sub_4:z:0Asequential_1/random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????28
6sequential_1/random_rotation_1/rotation_matrix/truediv?
6sequential_1/random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_1/random_rotation_1/rotation_matrix/sub_5/y?
4sequential_1/random_rotation_1/rotation_matrix/sub_5Sub'sequential_1/random_rotation_1/Cast:y:0?sequential_1/random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 26
4sequential_1/random_rotation_1/rotation_matrix/sub_5?
4sequential_1/random_rotation_1/rotation_matrix/Sin_1Sin3sequential_1/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/Sin_1?
6sequential_1/random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_1/random_rotation_1/rotation_matrix/sub_6/y?
4sequential_1/random_rotation_1/rotation_matrix/sub_6Sub)sequential_1/random_rotation_1/Cast_1:y:0?sequential_1/random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 26
4sequential_1/random_rotation_1/rotation_matrix/sub_6?
4sequential_1/random_rotation_1/rotation_matrix/mul_2Mul8sequential_1/random_rotation_1/rotation_matrix/Sin_1:y:08sequential_1/random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/mul_2?
4sequential_1/random_rotation_1/rotation_matrix/Cos_1Cos3sequential_1/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/Cos_1?
6sequential_1/random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_1/random_rotation_1/rotation_matrix/sub_7/y?
4sequential_1/random_rotation_1/rotation_matrix/sub_7Sub'sequential_1/random_rotation_1/Cast:y:0?sequential_1/random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 26
4sequential_1/random_rotation_1/rotation_matrix/sub_7?
4sequential_1/random_rotation_1/rotation_matrix/mul_3Mul8sequential_1/random_rotation_1/rotation_matrix/Cos_1:y:08sequential_1/random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/mul_3?
2sequential_1/random_rotation_1/rotation_matrix/addAddV28sequential_1/random_rotation_1/rotation_matrix/mul_2:z:08sequential_1/random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation_1/rotation_matrix/add?
4sequential_1/random_rotation_1/rotation_matrix/sub_8Sub8sequential_1/random_rotation_1/rotation_matrix/sub_5:z:06sequential_1/random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/sub_8?
:sequential_1/random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2<
:sequential_1/random_rotation_1/rotation_matrix/truediv_1/y?
8sequential_1/random_rotation_1/rotation_matrix/truediv_1RealDiv8sequential_1/random_rotation_1/rotation_matrix/sub_8:z:0Csequential_1/random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2:
8sequential_1/random_rotation_1/rotation_matrix/truediv_1?
4sequential_1/random_rotation_1/rotation_matrix/ShapeShape3sequential_1/random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:26
4sequential_1/random_rotation_1/rotation_matrix/Shape?
Bsequential_1/random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bsequential_1/random_rotation_1/rotation_matrix/strided_slice/stack?
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice/stack_1?
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice/stack_2?
<sequential_1/random_rotation_1/rotation_matrix/strided_sliceStridedSlice=sequential_1/random_rotation_1/rotation_matrix/Shape:output:0Ksequential_1/random_rotation_1/rotation_matrix/strided_slice/stack:output:0Msequential_1/random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0Msequential_1/random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<sequential_1/random_rotation_1/rotation_matrix/strided_slice?
4sequential_1/random_rotation_1/rotation_matrix/Cos_2Cos3sequential_1/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/Cos_2?
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_1/stack?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_1/stack_1?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_1/stack_2?
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_1StridedSlice8sequential_1/random_rotation_1/rotation_matrix/Cos_2:y:0Msequential_1/random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_1?
4sequential_1/random_rotation_1/rotation_matrix/Sin_2Sin3sequential_1/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/Sin_2?
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_2/stack?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_2/stack_1?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_2/stack_2?
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_2StridedSlice8sequential_1/random_rotation_1/rotation_matrix/Sin_2:y:0Msequential_1/random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_2?
2sequential_1/random_rotation_1/rotation_matrix/NegNegGsequential_1/random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????24
2sequential_1/random_rotation_1/rotation_matrix/Neg?
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_3/stack?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_3/stack_1?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_3/stack_2?
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_3StridedSlice:sequential_1/random_rotation_1/rotation_matrix/truediv:z:0Msequential_1/random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_3?
4sequential_1/random_rotation_1/rotation_matrix/Sin_3Sin3sequential_1/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/Sin_3?
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_4/stack?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_4/stack_1?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_4/stack_2?
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_4StridedSlice8sequential_1/random_rotation_1/rotation_matrix/Sin_3:y:0Msequential_1/random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_4?
4sequential_1/random_rotation_1/rotation_matrix/Cos_3Cos3sequential_1/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/Cos_3?
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_5/stack?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_5/stack_1?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_5/stack_2?
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_5StridedSlice8sequential_1/random_rotation_1/rotation_matrix/Cos_3:y:0Msequential_1/random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_5?
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation_1/rotation_matrix/strided_slice_6/stack?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_6/stack_1?
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_1/random_rotation_1/rotation_matrix/strided_slice_6/stack_2?
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_6StridedSlice<sequential_1/random_rotation_1/rotation_matrix/truediv_1:z:0Msequential_1/random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Osequential_1/random_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_1/random_rotation_1/rotation_matrix/strided_slice_6?
:sequential_1/random_rotation_1/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_1/random_rotation_1/rotation_matrix/zeros/mul/y?
8sequential_1/random_rotation_1/rotation_matrix/zeros/mulMulEsequential_1/random_rotation_1/rotation_matrix/strided_slice:output:0Csequential_1/random_rotation_1/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2:
8sequential_1/random_rotation_1/rotation_matrix/zeros/mul?
;sequential_1/random_rotation_1/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2=
;sequential_1/random_rotation_1/rotation_matrix/zeros/Less/y?
9sequential_1/random_rotation_1/rotation_matrix/zeros/LessLess<sequential_1/random_rotation_1/rotation_matrix/zeros/mul:z:0Dsequential_1/random_rotation_1/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2;
9sequential_1/random_rotation_1/rotation_matrix/zeros/Less?
=sequential_1/random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
=sequential_1/random_rotation_1/rotation_matrix/zeros/packed/1?
;sequential_1/random_rotation_1/rotation_matrix/zeros/packedPackEsequential_1/random_rotation_1/rotation_matrix/strided_slice:output:0Fsequential_1/random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2=
;sequential_1/random_rotation_1/rotation_matrix/zeros/packed?
:sequential_1/random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2<
:sequential_1/random_rotation_1/rotation_matrix/zeros/Const?
4sequential_1/random_rotation_1/rotation_matrix/zerosFillDsequential_1/random_rotation_1/rotation_matrix/zeros/packed:output:0Csequential_1/random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????26
4sequential_1/random_rotation_1/rotation_matrix/zeros?
:sequential_1/random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_1/random_rotation_1/rotation_matrix/concat/axis?
5sequential_1/random_rotation_1/rotation_matrix/concatConcatV2Gsequential_1/random_rotation_1/rotation_matrix/strided_slice_1:output:06sequential_1/random_rotation_1/rotation_matrix/Neg:y:0Gsequential_1/random_rotation_1/rotation_matrix/strided_slice_3:output:0Gsequential_1/random_rotation_1/rotation_matrix/strided_slice_4:output:0Gsequential_1/random_rotation_1/rotation_matrix/strided_slice_5:output:0Gsequential_1/random_rotation_1/rotation_matrix/strided_slice_6:output:0=sequential_1/random_rotation_1/rotation_matrix/zeros:output:0Csequential_1/random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????27
5sequential_1/random_rotation_1/rotation_matrix/concat?
.sequential_1/random_rotation_1/transform/ShapeShape6sequential_1/random_flip_1/random_flip_up_down/add:z:0*
T0*
_output_shapes
:20
.sequential_1/random_rotation_1/transform/Shape?
<sequential_1/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_1/random_rotation_1/transform/strided_slice/stack?
>sequential_1/random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_1/random_rotation_1/transform/strided_slice/stack_1?
>sequential_1/random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_1/random_rotation_1/transform/strided_slice/stack_2?
6sequential_1/random_rotation_1/transform/strided_sliceStridedSlice7sequential_1/random_rotation_1/transform/Shape:output:0Esequential_1/random_rotation_1/transform/strided_slice/stack:output:0Gsequential_1/random_rotation_1/transform/strided_slice/stack_1:output:0Gsequential_1/random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:28
6sequential_1/random_rotation_1/transform/strided_slice?
3sequential_1/random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3sequential_1/random_rotation_1/transform/fill_value?
Csequential_1/random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV36sequential_1/random_flip_1/random_flip_up_down/add:z:0>sequential_1/random_rotation_1/rotation_matrix/concat:output:0?sequential_1/random_rotation_1/transform/strided_slice:output:0<sequential_1/random_rotation_1/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2E
Csequential_1/random_rotation_1/transform/ImageProjectiveTransformV3?
 sequential_1/random_zoom_1/ShapeShapeXsequential_1/random_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2"
 sequential_1/random_zoom_1/Shape?
.sequential_1/random_zoom_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_1/random_zoom_1/strided_slice/stack?
0sequential_1/random_zoom_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_1/random_zoom_1/strided_slice/stack_1?
0sequential_1/random_zoom_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_1/random_zoom_1/strided_slice/stack_2?
(sequential_1/random_zoom_1/strided_sliceStridedSlice)sequential_1/random_zoom_1/Shape:output:07sequential_1/random_zoom_1/strided_slice/stack:output:09sequential_1/random_zoom_1/strided_slice/stack_1:output:09sequential_1/random_zoom_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_1/random_zoom_1/strided_slice?
0sequential_1/random_zoom_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_1/random_zoom_1/strided_slice_1/stack?
2sequential_1/random_zoom_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_1/random_zoom_1/strided_slice_1/stack_1?
2sequential_1/random_zoom_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_1/random_zoom_1/strided_slice_1/stack_2?
*sequential_1/random_zoom_1/strided_slice_1StridedSlice)sequential_1/random_zoom_1/Shape:output:09sequential_1/random_zoom_1/strided_slice_1/stack:output:0;sequential_1/random_zoom_1/strided_slice_1/stack_1:output:0;sequential_1/random_zoom_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_1/random_zoom_1/strided_slice_1?
sequential_1/random_zoom_1/CastCast3sequential_1/random_zoom_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
sequential_1/random_zoom_1/Cast?
0sequential_1/random_zoom_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_1/random_zoom_1/strided_slice_2/stack?
2sequential_1/random_zoom_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_1/random_zoom_1/strided_slice_2/stack_1?
2sequential_1/random_zoom_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_1/random_zoom_1/strided_slice_2/stack_2?
*sequential_1/random_zoom_1/strided_slice_2StridedSlice)sequential_1/random_zoom_1/Shape:output:09sequential_1/random_zoom_1/strided_slice_2/stack:output:0;sequential_1/random_zoom_1/strided_slice_2/stack_1:output:0;sequential_1/random_zoom_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_1/random_zoom_1/strided_slice_2?
!sequential_1/random_zoom_1/Cast_1Cast3sequential_1/random_zoom_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!sequential_1/random_zoom_1/Cast_1?
3sequential_1/random_zoom_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :25
3sequential_1/random_zoom_1/stateful_uniform/shape/1?
1sequential_1/random_zoom_1/stateful_uniform/shapePack1sequential_1/random_zoom_1/strided_slice:output:0<sequential_1/random_zoom_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:23
1sequential_1/random_zoom_1/stateful_uniform/shape?
/sequential_1/random_zoom_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?21
/sequential_1/random_zoom_1/stateful_uniform/min?
/sequential_1/random_zoom_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????21
/sequential_1/random_zoom_1/stateful_uniform/max?
Esequential_1/random_zoom_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2G
Esequential_1/random_zoom_1/stateful_uniform/StatefulUniform/algorithm?
;sequential_1/random_zoom_1/stateful_uniform/StatefulUniformStatefulUniformDsequential_1_random_zoom_1_stateful_uniform_statefuluniform_resourceNsequential_1/random_zoom_1/stateful_uniform/StatefulUniform/algorithm:output:0:sequential_1/random_zoom_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype02=
;sequential_1/random_zoom_1/stateful_uniform/StatefulUniform?
/sequential_1/random_zoom_1/stateful_uniform/subSub8sequential_1/random_zoom_1/stateful_uniform/max:output:08sequential_1/random_zoom_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 21
/sequential_1/random_zoom_1/stateful_uniform/sub?
/sequential_1/random_zoom_1/stateful_uniform/mulMulDsequential_1/random_zoom_1/stateful_uniform/StatefulUniform:output:03sequential_1/random_zoom_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????21
/sequential_1/random_zoom_1/stateful_uniform/mul?
+sequential_1/random_zoom_1/stateful_uniformAdd3sequential_1/random_zoom_1/stateful_uniform/mul:z:08sequential_1/random_zoom_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2-
+sequential_1/random_zoom_1/stateful_uniform?
&sequential_1/random_zoom_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_1/random_zoom_1/concat/axis?
!sequential_1/random_zoom_1/concatConcatV2/sequential_1/random_zoom_1/stateful_uniform:z:0/sequential_1/random_zoom_1/stateful_uniform:z:0/sequential_1/random_zoom_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2#
!sequential_1/random_zoom_1/concat?
,sequential_1/random_zoom_1/zoom_matrix/ShapeShape*sequential_1/random_zoom_1/concat:output:0*
T0*
_output_shapes
:2.
,sequential_1/random_zoom_1/zoom_matrix/Shape?
:sequential_1/random_zoom_1/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential_1/random_zoom_1/zoom_matrix/strided_slice/stack?
<sequential_1/random_zoom_1/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_1/random_zoom_1/zoom_matrix/strided_slice/stack_1?
<sequential_1/random_zoom_1/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_1/random_zoom_1/zoom_matrix/strided_slice/stack_2?
4sequential_1/random_zoom_1/zoom_matrix/strided_sliceStridedSlice5sequential_1/random_zoom_1/zoom_matrix/Shape:output:0Csequential_1/random_zoom_1/zoom_matrix/strided_slice/stack:output:0Esequential_1/random_zoom_1/zoom_matrix/strided_slice/stack_1:output:0Esequential_1/random_zoom_1/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4sequential_1/random_zoom_1/zoom_matrix/strided_slice?
,sequential_1/random_zoom_1/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,sequential_1/random_zoom_1/zoom_matrix/sub/y?
*sequential_1/random_zoom_1/zoom_matrix/subSub%sequential_1/random_zoom_1/Cast_1:y:05sequential_1/random_zoom_1/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2,
*sequential_1/random_zoom_1/zoom_matrix/sub?
0sequential_1/random_zoom_1/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @22
0sequential_1/random_zoom_1/zoom_matrix/truediv/y?
.sequential_1/random_zoom_1/zoom_matrix/truedivRealDiv.sequential_1/random_zoom_1/zoom_matrix/sub:z:09sequential_1/random_zoom_1/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 20
.sequential_1/random_zoom_1/zoom_matrix/truediv?
<sequential_1/random_zoom_1/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_1/random_zoom_1/zoom_matrix/strided_slice_1/stack?
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_1/stack_1?
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_1/stack_2?
6sequential_1/random_zoom_1/zoom_matrix/strided_slice_1StridedSlice*sequential_1/random_zoom_1/concat:output:0Esequential_1/random_zoom_1/zoom_matrix/strided_slice_1/stack:output:0Gsequential_1/random_zoom_1/zoom_matrix/strided_slice_1/stack_1:output:0Gsequential_1/random_zoom_1/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_1/random_zoom_1/zoom_matrix/strided_slice_1?
.sequential_1/random_zoom_1/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_1/random_zoom_1/zoom_matrix/sub_1/x?
,sequential_1/random_zoom_1/zoom_matrix/sub_1Sub7sequential_1/random_zoom_1/zoom_matrix/sub_1/x:output:0?sequential_1/random_zoom_1/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_1/random_zoom_1/zoom_matrix/sub_1?
*sequential_1/random_zoom_1/zoom_matrix/mulMul2sequential_1/random_zoom_1/zoom_matrix/truediv:z:00sequential_1/random_zoom_1/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2,
*sequential_1/random_zoom_1/zoom_matrix/mul?
.sequential_1/random_zoom_1/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_1/random_zoom_1/zoom_matrix/sub_2/y?
,sequential_1/random_zoom_1/zoom_matrix/sub_2Sub#sequential_1/random_zoom_1/Cast:y:07sequential_1/random_zoom_1/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2.
,sequential_1/random_zoom_1/zoom_matrix/sub_2?
2sequential_1/random_zoom_1/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @24
2sequential_1/random_zoom_1/zoom_matrix/truediv_1/y?
0sequential_1/random_zoom_1/zoom_matrix/truediv_1RealDiv0sequential_1/random_zoom_1/zoom_matrix/sub_2:z:0;sequential_1/random_zoom_1/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 22
0sequential_1/random_zoom_1/zoom_matrix/truediv_1?
<sequential_1/random_zoom_1/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_1/random_zoom_1/zoom_matrix/strided_slice_2/stack?
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_2/stack_1?
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_2/stack_2?
6sequential_1/random_zoom_1/zoom_matrix/strided_slice_2StridedSlice*sequential_1/random_zoom_1/concat:output:0Esequential_1/random_zoom_1/zoom_matrix/strided_slice_2/stack:output:0Gsequential_1/random_zoom_1/zoom_matrix/strided_slice_2/stack_1:output:0Gsequential_1/random_zoom_1/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_1/random_zoom_1/zoom_matrix/strided_slice_2?
.sequential_1/random_zoom_1/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_1/random_zoom_1/zoom_matrix/sub_3/x?
,sequential_1/random_zoom_1/zoom_matrix/sub_3Sub7sequential_1/random_zoom_1/zoom_matrix/sub_3/x:output:0?sequential_1/random_zoom_1/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_1/random_zoom_1/zoom_matrix/sub_3?
,sequential_1/random_zoom_1/zoom_matrix/mul_1Mul4sequential_1/random_zoom_1/zoom_matrix/truediv_1:z:00sequential_1/random_zoom_1/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2.
,sequential_1/random_zoom_1/zoom_matrix/mul_1?
<sequential_1/random_zoom_1/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_1/random_zoom_1/zoom_matrix/strided_slice_3/stack?
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_3/stack_1?
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_3/stack_2?
6sequential_1/random_zoom_1/zoom_matrix/strided_slice_3StridedSlice*sequential_1/random_zoom_1/concat:output:0Esequential_1/random_zoom_1/zoom_matrix/strided_slice_3/stack:output:0Gsequential_1/random_zoom_1/zoom_matrix/strided_slice_3/stack_1:output:0Gsequential_1/random_zoom_1/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_1/random_zoom_1/zoom_matrix/strided_slice_3?
2sequential_1/random_zoom_1/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_1/random_zoom_1/zoom_matrix/zeros/mul/y?
0sequential_1/random_zoom_1/zoom_matrix/zeros/mulMul=sequential_1/random_zoom_1/zoom_matrix/strided_slice:output:0;sequential_1/random_zoom_1/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 22
0sequential_1/random_zoom_1/zoom_matrix/zeros/mul?
3sequential_1/random_zoom_1/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3sequential_1/random_zoom_1/zoom_matrix/zeros/Less/y?
1sequential_1/random_zoom_1/zoom_matrix/zeros/LessLess4sequential_1/random_zoom_1/zoom_matrix/zeros/mul:z:0<sequential_1/random_zoom_1/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 23
1sequential_1/random_zoom_1/zoom_matrix/zeros/Less?
5sequential_1/random_zoom_1/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/random_zoom_1/zoom_matrix/zeros/packed/1?
3sequential_1/random_zoom_1/zoom_matrix/zeros/packedPack=sequential_1/random_zoom_1/zoom_matrix/strided_slice:output:0>sequential_1/random_zoom_1/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:25
3sequential_1/random_zoom_1/zoom_matrix/zeros/packed?
2sequential_1/random_zoom_1/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential_1/random_zoom_1/zoom_matrix/zeros/Const?
,sequential_1/random_zoom_1/zoom_matrix/zerosFill<sequential_1/random_zoom_1/zoom_matrix/zeros/packed:output:0;sequential_1/random_zoom_1/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_1/random_zoom_1/zoom_matrix/zeros?
4sequential_1/random_zoom_1/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_1/random_zoom_1/zoom_matrix/zeros_1/mul/y?
2sequential_1/random_zoom_1/zoom_matrix/zeros_1/mulMul=sequential_1/random_zoom_1/zoom_matrix/strided_slice:output:0=sequential_1/random_zoom_1/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 24
2sequential_1/random_zoom_1/zoom_matrix/zeros_1/mul?
5sequential_1/random_zoom_1/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5sequential_1/random_zoom_1/zoom_matrix/zeros_1/Less/y?
3sequential_1/random_zoom_1/zoom_matrix/zeros_1/LessLess6sequential_1/random_zoom_1/zoom_matrix/zeros_1/mul:z:0>sequential_1/random_zoom_1/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 25
3sequential_1/random_zoom_1/zoom_matrix/zeros_1/Less?
7sequential_1/random_zoom_1/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_1/random_zoom_1/zoom_matrix/zeros_1/packed/1?
5sequential_1/random_zoom_1/zoom_matrix/zeros_1/packedPack=sequential_1/random_zoom_1/zoom_matrix/strided_slice:output:0@sequential_1/random_zoom_1/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_1/random_zoom_1/zoom_matrix/zeros_1/packed?
4sequential_1/random_zoom_1/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_1/random_zoom_1/zoom_matrix/zeros_1/Const?
.sequential_1/random_zoom_1/zoom_matrix/zeros_1Fill>sequential_1/random_zoom_1/zoom_matrix/zeros_1/packed:output:0=sequential_1/random_zoom_1/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.sequential_1/random_zoom_1/zoom_matrix/zeros_1?
<sequential_1/random_zoom_1/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_1/random_zoom_1/zoom_matrix/strided_slice_4/stack?
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_4/stack_1?
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_1/random_zoom_1/zoom_matrix/strided_slice_4/stack_2?
6sequential_1/random_zoom_1/zoom_matrix/strided_slice_4StridedSlice*sequential_1/random_zoom_1/concat:output:0Esequential_1/random_zoom_1/zoom_matrix/strided_slice_4/stack:output:0Gsequential_1/random_zoom_1/zoom_matrix/strided_slice_4/stack_1:output:0Gsequential_1/random_zoom_1/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_1/random_zoom_1/zoom_matrix/strided_slice_4?
4sequential_1/random_zoom_1/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_1/random_zoom_1/zoom_matrix/zeros_2/mul/y?
2sequential_1/random_zoom_1/zoom_matrix/zeros_2/mulMul=sequential_1/random_zoom_1/zoom_matrix/strided_slice:output:0=sequential_1/random_zoom_1/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 24
2sequential_1/random_zoom_1/zoom_matrix/zeros_2/mul?
5sequential_1/random_zoom_1/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5sequential_1/random_zoom_1/zoom_matrix/zeros_2/Less/y?
3sequential_1/random_zoom_1/zoom_matrix/zeros_2/LessLess6sequential_1/random_zoom_1/zoom_matrix/zeros_2/mul:z:0>sequential_1/random_zoom_1/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 25
3sequential_1/random_zoom_1/zoom_matrix/zeros_2/Less?
7sequential_1/random_zoom_1/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_1/random_zoom_1/zoom_matrix/zeros_2/packed/1?
5sequential_1/random_zoom_1/zoom_matrix/zeros_2/packedPack=sequential_1/random_zoom_1/zoom_matrix/strided_slice:output:0@sequential_1/random_zoom_1/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_1/random_zoom_1/zoom_matrix/zeros_2/packed?
4sequential_1/random_zoom_1/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_1/random_zoom_1/zoom_matrix/zeros_2/Const?
.sequential_1/random_zoom_1/zoom_matrix/zeros_2Fill>sequential_1/random_zoom_1/zoom_matrix/zeros_2/packed:output:0=sequential_1/random_zoom_1/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????20
.sequential_1/random_zoom_1/zoom_matrix/zeros_2?
2sequential_1/random_zoom_1/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_1/random_zoom_1/zoom_matrix/concat/axis?
-sequential_1/random_zoom_1/zoom_matrix/concatConcatV2?sequential_1/random_zoom_1/zoom_matrix/strided_slice_3:output:05sequential_1/random_zoom_1/zoom_matrix/zeros:output:0.sequential_1/random_zoom_1/zoom_matrix/mul:z:07sequential_1/random_zoom_1/zoom_matrix/zeros_1:output:0?sequential_1/random_zoom_1/zoom_matrix/strided_slice_4:output:00sequential_1/random_zoom_1/zoom_matrix/mul_1:z:07sequential_1/random_zoom_1/zoom_matrix/zeros_2:output:0;sequential_1/random_zoom_1/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2/
-sequential_1/random_zoom_1/zoom_matrix/concat?
*sequential_1/random_zoom_1/transform/ShapeShapeXsequential_1/random_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2,
*sequential_1/random_zoom_1/transform/Shape?
8sequential_1/random_zoom_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_1/random_zoom_1/transform/strided_slice/stack?
:sequential_1/random_zoom_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_1/random_zoom_1/transform/strided_slice/stack_1?
:sequential_1/random_zoom_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_1/random_zoom_1/transform/strided_slice/stack_2?
2sequential_1/random_zoom_1/transform/strided_sliceStridedSlice3sequential_1/random_zoom_1/transform/Shape:output:0Asequential_1/random_zoom_1/transform/strided_slice/stack:output:0Csequential_1/random_zoom_1/transform/strided_slice/stack_1:output:0Csequential_1/random_zoom_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:24
2sequential_1/random_zoom_1/transform/strided_slice?
/sequential_1/random_zoom_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/sequential_1/random_zoom_1/transform/fill_value?
?sequential_1/random_zoom_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Xsequential_1/random_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:06sequential_1/random_zoom_1/zoom_matrix/concat:output:0;sequential_1/random_zoom_1/transform/strided_slice:output:08sequential_1/random_zoom_1/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2A
?sequential_1/random_zoom_1/transform/ImageProjectiveTransformV3i
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMulTsequential_1/random_zoom_1/transform/ImageProjectiveTransformV3:transformed_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Drescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
conv2d/BiasAdd
activation/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
activation/Relu?
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@2
conv2d_1/BiasAdd?
activation_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@2
activation_1/Relu?
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@2
conv2d_2/BiasAdd?
activation_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@2
activation_2/Relu?
max_pooling2d_2/MaxPoolMaxPoolactivation_2/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_3/BiasAdd?
activation_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_3/Relu?
max_pooling2d_3/MaxPoolMaxPoolactivation_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_4/Conv2D?
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_4/BiasAdd?
activation_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_4/Relu?
max_pooling2d_4/MaxPoolMaxPoolactivation_4/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/dropout/Const?
dropout/dropout/MulMul max_pooling2d_4/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/Mul~
dropout/dropout/ShapeShape max_pooling2d_4/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2
flatten/Const?
flatten/ReshapeReshapedropout/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp@^sequential_1/random_rotation_1/stateful_uniform/StatefulUniform<^sequential_1/random_zoom_1/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2?
?sequential_1/random_rotation_1/stateful_uniform/StatefulUniform?sequential_1/random_rotation_1/stateful_uniform/StatefulUniform2z
;sequential_1/random_zoom_1/stateful_uniform/StatefulUniform;sequential_1/random_zoom_1/stateful_uniform/StatefulUniform:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1723341

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????}}@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
,__inference_sequential_layer_call_fn_1724329

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_17238022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:???????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?S
?
G__inference_sequential_layer_call_and_return_conditional_losses_1723802

inputs
conv2d_1723754
conv2d_1723756
conv2d_1_1723761
conv2d_1_1723763
conv2d_2_1723768
conv2d_2_1723770
conv2d_3_1723775
conv2d_3_1723777
conv2d_4_1723782
conv2d_4_1723784
dense_1723791
dense_1723793
dense_1_1723796
dense_1_1723798
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
sequential_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_17232012
sequential_1/PartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul%sequential_1/PartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
conv2d/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_1723754conv2d_1723756*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_17233012 
conv2d/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_17233222
activation/PartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_17232102
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_1723761conv2d_1_1723763*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_17233412"
 conv2d_1/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_17233622
activation_1/PartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17232222!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_1723768conv2d_2_1723770*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_17233812"
 conv2d_2/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_17234022
activation_2/PartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17232342!
max_pooling2d_2/PartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_1723775conv2d_3_1723777*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_17234212"
 conv2d_3/StatefulPartitionedCall?
activation_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_17234422
activation_3/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_17232462!
max_pooling2d_3/PartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_1723782conv2d_4_1723784*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_17234612"
 conv2d_4/StatefulPartitionedCall?
activation_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_17234822
activation_4/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_17232582!
max_pooling2d_4/PartitionedCall?
dropout/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_17235082
dropout/PartitionedCall?
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_17235272
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1723791dense_1723793*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_17235462
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1723796dense_1_1723798*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_17235732!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:???????????::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
~
)__inference_dense_1_layer_call_fn_1724820

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_17235732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_conv2d_1_layer_call_fn_1724645

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_17233412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????}}@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
r
I__inference_sequential_1_layer_call_and_return_conditional_losses_1722935
random_flip_1_input
identityq
IdentityIdentityrandom_flip_1_input*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????:f b
1
_output_shapes
:???????????
-
_user_specified_namerandom_flip_1_input
?g
?
"__inference__wrapped_model_1722680
sequential_1_input4
0sequential_conv2d_conv2d_readvariableop_resource5
1sequential_conv2d_biasadd_readvariableop_resource6
2sequential_conv2d_1_conv2d_readvariableop_resource7
3sequential_conv2d_1_biasadd_readvariableop_resource6
2sequential_conv2d_2_conv2d_readvariableop_resource7
3sequential_conv2d_2_biasadd_readvariableop_resource6
2sequential_conv2d_3_conv2d_readvariableop_resource7
3sequential_conv2d_3_biasadd_readvariableop_resource6
2sequential_conv2d_4_conv2d_readvariableop_resource7
3sequential_conv2d_4_biasadd_readvariableop_resource3
/sequential_dense_matmul_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resource5
1sequential_dense_1_matmul_readvariableop_resource6
2sequential_dense_1_biasadd_readvariableop_resource
identity??(sequential/conv2d/BiasAdd/ReadVariableOp?'sequential/conv2d/Conv2D/ReadVariableOp?*sequential/conv2d_1/BiasAdd/ReadVariableOp?)sequential/conv2d_1/Conv2D/ReadVariableOp?*sequential/conv2d_2/BiasAdd/ReadVariableOp?)sequential/conv2d_2/Conv2D/ReadVariableOp?*sequential/conv2d_3/BiasAdd/ReadVariableOp?)sequential/conv2d_3/Conv2D/ReadVariableOp?*sequential/conv2d_4/BiasAdd/ReadVariableOp?)sequential/conv2d_4/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
sequential/rescaling/Cast/x?
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/rescaling/Cast_1/x?
sequential/rescaling/mulMulsequential_1_input$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
sequential/rescaling/mul?
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
sequential/rescaling/add?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp?
sequential/conv2d/Conv2DConv2Dsequential/rescaling/add:z:0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
sequential/conv2d/Conv2D?
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp?
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
sequential/conv2d/BiasAdd?
sequential/activation/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
sequential/activation/Relu?
 sequential/max_pooling2d/MaxPoolMaxPool(sequential/activation/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2"
 sequential/max_pooling2d/MaxPool?
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp?
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2D?
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp?
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@2
sequential/conv2d_1/BiasAdd?
sequential/activation_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@2
sequential/activation_1/Relu?
"sequential/max_pooling2d_1/MaxPoolMaxPool*sequential/activation_1/Relu:activations:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_1/MaxPool?
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp?
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2D?
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp?
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@2
sequential/conv2d_2/BiasAdd?
sequential/activation_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@2
sequential/activation_2/Relu?
"sequential/max_pooling2d_2/MaxPoolMaxPool*sequential/activation_2/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_2/MaxPool?
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp?
sequential/conv2d_3/Conv2DConv2D+sequential/max_pooling2d_2/MaxPool:output:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2D?
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp?
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
sequential/conv2d_3/BiasAdd?
sequential/activation_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential/activation_3/Relu?
"sequential/max_pooling2d_3/MaxPoolMaxPool*sequential/activation_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_3/MaxPool?
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02+
)sequential/conv2d_4/Conv2D/ReadVariableOp?
sequential/conv2d_4/Conv2DConv2D+sequential/max_pooling2d_3/MaxPool:output:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
sequential/conv2d_4/Conv2D?
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_4/BiasAdd/ReadVariableOp?
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
sequential/conv2d_4/BiasAdd?
sequential/activation_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential/activation_4/Relu?
"sequential/max_pooling2d_4/MaxPoolMaxPool*sequential/activation_4/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_4/MaxPool?
sequential/dropout/IdentityIdentity+sequential/max_pooling2d_4/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
sequential/dropout/Identity?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape$sequential/dropout/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense/BiasAdd?
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential/dense/Relu?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential/dense_1/BiasAdd?
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
sequential/dense_1/Softmax?
IdentityIdentity$sequential/dense_1/Softmax:softmax:0)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:???????????::::::::::::::2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:e a
1
_output_shapes
:???????????
,
_user_specified_namesequential_1_input
?
e
I__inference_activation_4_layer_call_and_return_conditional_losses_1723482

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
I__inference_sequential_1_layer_call_and_return_conditional_losses_1723201

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

*__inference_conv2d_2_layer_call_fn_1724674

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_17233812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????<<@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????>>@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs
?
J
.__inference_activation_2_layer_call_fn_1724684

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_17234022
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<<@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????<<@:W S
/
_output_shapes
:?????????<<@
 
_user_specified_nameinputs
?	
?
B__inference_dense_layer_call_and_return_conditional_losses_1724791

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
E
)__inference_flatten_layer_call_fn_1724780

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_17235272
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
,__inference_sequential_layer_call_fn_1723744
sequential_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_17237092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:???????????
,
_user_specified_namesequential_1_input
?
e
I__inference_activation_2_layer_call_and_return_conditional_losses_1724679

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????<<@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????<<@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????<<@:W S
/
_output_shapes
:?????????<<@
 
_user_specified_nameinputs
?	
?
C__inference_conv2d_layer_call_and_return_conditional_losses_1723301

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1723222

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

*__inference_conv2d_4_layer_call_fn_1724732

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_17234612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_4_layer_call_fn_1723264

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_17232582
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_1_layer_call_fn_1724592

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_17231882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1724636

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????}}@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_1723508

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1724665

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????<<@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????>>@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs
?
J
.__inference_activation_4_layer_call_fn_1724742

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_17234822
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

*__inference_conv2d_3_layer_call_fn_1724703

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_17234212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1722931
random_flip_1_input?
;random_rotation_1_stateful_uniform_statefuluniform_resource;
7random_zoom_1_stateful_uniform_statefuluniform_resource
identity??2random_rotation_1/stateful_uniform/StatefulUniform?.random_zoom_1/stateful_uniform/StatefulUniform?
7random_flip_1/random_flip_left_right/control_dependencyIdentityrandom_flip_1_input*
T0*&
_class
loc:@random_flip_1_input*1
_output_shapes
:???????????29
7random_flip_1/random_flip_left_right/control_dependency?
*random_flip_1/random_flip_left_right/ShapeShape@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_1/random_flip_left_right/Shape?
8random_flip_1/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_1/random_flip_left_right/strided_slice/stack?
:random_flip_1/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_1?
:random_flip_1/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_2?
2random_flip_1/random_flip_left_right/strided_sliceStridedSlice3random_flip_1/random_flip_left_right/Shape:output:0Arandom_flip_1/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_1/random_flip_left_right/strided_slice?
9random_flip_1/random_flip_left_right/random_uniform/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_1/random_flip_left_right/random_uniform/shape?
7random_flip_1/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_1/random_flip_left_right/random_uniform/min?
7random_flip_1/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7random_flip_1/random_flip_left_right/random_uniform/max?
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_1/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02C
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniform?
7random_flip_1/random_flip_left_right/random_uniform/MulMulJrandom_flip_1/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_1/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????29
7random_flip_1/random_flip_left_right/random_uniform/Mul?
4random_flip_1/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/1?
4random_flip_1/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/2?
4random_flip_1/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/3?
2random_flip_1/random_flip_left_right/Reshape/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0=random_flip_1/random_flip_left_right/Reshape/shape/1:output:0=random_flip_1/random_flip_left_right/Reshape/shape/2:output:0=random_flip_1/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_1/random_flip_left_right/Reshape/shape?
,random_flip_1/random_flip_left_right/ReshapeReshape;random_flip_1/random_flip_left_right/random_uniform/Mul:z:0;random_flip_1/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2.
,random_flip_1/random_flip_left_right/Reshape?
*random_flip_1/random_flip_left_right/RoundRound5random_flip_1/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2,
*random_flip_1/random_flip_left_right/Round?
3random_flip_1/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_1/random_flip_left_right/ReverseV2/axis?
.random_flip_1/random_flip_left_right/ReverseV2	ReverseV2@random_flip_1/random_flip_left_right/control_dependency:output:0<random_flip_1/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????20
.random_flip_1/random_flip_left_right/ReverseV2?
(random_flip_1/random_flip_left_right/mulMul.random_flip_1/random_flip_left_right/Round:y:07random_flip_1/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2*
(random_flip_1/random_flip_left_right/mul?
*random_flip_1/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_flip_1/random_flip_left_right/sub/x?
(random_flip_1/random_flip_left_right/subSub3random_flip_1/random_flip_left_right/sub/x:output:0.random_flip_1/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2*
(random_flip_1/random_flip_left_right/sub?
*random_flip_1/random_flip_left_right/mul_1Mul,random_flip_1/random_flip_left_right/sub:z:0@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????2,
*random_flip_1/random_flip_left_right/mul_1?
(random_flip_1/random_flip_left_right/addAddV2,random_flip_1/random_flip_left_right/mul:z:0.random_flip_1/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????2*
(random_flip_1/random_flip_left_right/add?
4random_flip_1/random_flip_up_down/control_dependencyIdentity,random_flip_1/random_flip_left_right/add:z:0*
T0*;
_class1
/-loc:@random_flip_1/random_flip_left_right/add*1
_output_shapes
:???????????26
4random_flip_1/random_flip_up_down/control_dependency?
'random_flip_1/random_flip_up_down/ShapeShape=random_flip_1/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_1/random_flip_up_down/Shape?
5random_flip_1/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_1/random_flip_up_down/strided_slice/stack?
7random_flip_1/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_1/random_flip_up_down/strided_slice/stack_1?
7random_flip_1/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_1/random_flip_up_down/strided_slice/stack_2?
/random_flip_1/random_flip_up_down/strided_sliceStridedSlice0random_flip_1/random_flip_up_down/Shape:output:0>random_flip_1/random_flip_up_down/strided_slice/stack:output:0@random_flip_1/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_1/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_1/random_flip_up_down/strided_slice?
6random_flip_1/random_flip_up_down/random_uniform/shapePack8random_flip_1/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_1/random_flip_up_down/random_uniform/shape?
4random_flip_1/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_1/random_flip_up_down/random_uniform/min?
4random_flip_1/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_flip_1/random_flip_up_down/random_uniform/max?
>random_flip_1/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_1/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02@
>random_flip_1/random_flip_up_down/random_uniform/RandomUniform?
4random_flip_1/random_flip_up_down/random_uniform/MulMulGrandom_flip_1/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_1/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????26
4random_flip_1/random_flip_up_down/random_uniform/Mul?
1random_flip_1/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_1/random_flip_up_down/Reshape/shape/1?
1random_flip_1/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_1/random_flip_up_down/Reshape/shape/2?
1random_flip_1/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_1/random_flip_up_down/Reshape/shape/3?
/random_flip_1/random_flip_up_down/Reshape/shapePack8random_flip_1/random_flip_up_down/strided_slice:output:0:random_flip_1/random_flip_up_down/Reshape/shape/1:output:0:random_flip_1/random_flip_up_down/Reshape/shape/2:output:0:random_flip_1/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_1/random_flip_up_down/Reshape/shape?
)random_flip_1/random_flip_up_down/ReshapeReshape8random_flip_1/random_flip_up_down/random_uniform/Mul:z:08random_flip_1/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2+
)random_flip_1/random_flip_up_down/Reshape?
'random_flip_1/random_flip_up_down/RoundRound2random_flip_1/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????2)
'random_flip_1/random_flip_up_down/Round?
0random_flip_1/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_1/random_flip_up_down/ReverseV2/axis?
+random_flip_1/random_flip_up_down/ReverseV2	ReverseV2=random_flip_1/random_flip_up_down/control_dependency:output:09random_flip_1/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????2-
+random_flip_1/random_flip_up_down/ReverseV2?
%random_flip_1/random_flip_up_down/mulMul+random_flip_1/random_flip_up_down/Round:y:04random_flip_1/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2'
%random_flip_1/random_flip_up_down/mul?
'random_flip_1/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_flip_1/random_flip_up_down/sub/x?
%random_flip_1/random_flip_up_down/subSub0random_flip_1/random_flip_up_down/sub/x:output:0+random_flip_1/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????2'
%random_flip_1/random_flip_up_down/sub?
'random_flip_1/random_flip_up_down/mul_1Mul)random_flip_1/random_flip_up_down/sub:z:0=random_flip_1/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:???????????2)
'random_flip_1/random_flip_up_down/mul_1?
%random_flip_1/random_flip_up_down/addAddV2)random_flip_1/random_flip_up_down/mul:z:0+random_flip_1/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:???????????2'
%random_flip_1/random_flip_up_down/add?
random_rotation_1/ShapeShape)random_flip_1/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_1/Shape?
%random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_1/strided_slice/stack?
'random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_1?
'random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_2?
random_rotation_1/strided_sliceStridedSlice random_rotation_1/Shape:output:0.random_rotation_1/strided_slice/stack:output:00random_rotation_1/strided_slice/stack_1:output:00random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_1/strided_slice?
'random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_1/stack?
)random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_1?
)random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_2?
!random_rotation_1/strided_slice_1StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_1/stack:output:02random_rotation_1/strided_slice_1/stack_1:output:02random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_1?
random_rotation_1/CastCast*random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast?
'random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_2/stack?
)random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_1?
)random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_2?
!random_rotation_1/strided_slice_2StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_2/stack:output:02random_rotation_1/strided_slice_2/stack_1:output:02random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_2?
random_rotation_1/Cast_1Cast*random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast_1?
(random_rotation_1/stateful_uniform/shapePack(random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_1/stateful_uniform/shape?
&random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?2(
&random_rotation_1/stateful_uniform/min?
&random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?2(
&random_rotation_1/stateful_uniform/max?
<random_rotation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_1/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_1/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_1_stateful_uniform_statefuluniform_resourceErandom_rotation_1/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_1/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_1/stateful_uniform/StatefulUniform?
&random_rotation_1/stateful_uniform/subSub/random_rotation_1/stateful_uniform/max:output:0/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_1/stateful_uniform/sub?
&random_rotation_1/stateful_uniform/mulMul;random_rotation_1/stateful_uniform/StatefulUniform:output:0*random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_1/stateful_uniform/mul?
"random_rotation_1/stateful_uniformAdd*random_rotation_1/stateful_uniform/mul:z:0/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_1/stateful_uniform?
'random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_1/rotation_matrix/sub/y?
%random_rotation_1/rotation_matrix/subSubrandom_rotation_1/Cast_1:y:00random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_1/rotation_matrix/sub?
%random_rotation_1/rotation_matrix/CosCos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Cos?
)random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_1/y?
'random_rotation_1/rotation_matrix/sub_1Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_1?
%random_rotation_1/rotation_matrix/mulMul)random_rotation_1/rotation_matrix/Cos:y:0+random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/mul?
%random_rotation_1/rotation_matrix/SinSin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Sin?
)random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_2/y?
'random_rotation_1/rotation_matrix/sub_2Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_2?
'random_rotation_1/rotation_matrix/mul_1Mul)random_rotation_1/rotation_matrix/Sin:y:0+random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_1?
'random_rotation_1/rotation_matrix/sub_3Sub)random_rotation_1/rotation_matrix/mul:z:0+random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_3?
'random_rotation_1/rotation_matrix/sub_4Sub)random_rotation_1/rotation_matrix/sub:z:0+random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_4?
+random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_1/rotation_matrix/truediv/y?
)random_rotation_1/rotation_matrix/truedivRealDiv+random_rotation_1/rotation_matrix/sub_4:z:04random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_1/rotation_matrix/truediv?
)random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_5/y?
'random_rotation_1/rotation_matrix/sub_5Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_5?
'random_rotation_1/rotation_matrix/Sin_1Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_1?
)random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_6/y?
'random_rotation_1/rotation_matrix/sub_6Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_6?
'random_rotation_1/rotation_matrix/mul_2Mul+random_rotation_1/rotation_matrix/Sin_1:y:0+random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_2?
'random_rotation_1/rotation_matrix/Cos_1Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_1?
)random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_7/y?
'random_rotation_1/rotation_matrix/sub_7Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_7?
'random_rotation_1/rotation_matrix/mul_3Mul+random_rotation_1/rotation_matrix/Cos_1:y:0+random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_3?
%random_rotation_1/rotation_matrix/addAddV2+random_rotation_1/rotation_matrix/mul_2:z:0+random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/add?
'random_rotation_1/rotation_matrix/sub_8Sub+random_rotation_1/rotation_matrix/sub_5:z:0)random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_8?
-random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_1/rotation_matrix/truediv_1/y?
+random_rotation_1/rotation_matrix/truediv_1RealDiv+random_rotation_1/rotation_matrix/sub_8:z:06random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_1/rotation_matrix/truediv_1?
'random_rotation_1/rotation_matrix/ShapeShape&random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_1/rotation_matrix/Shape?
5random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_1/rotation_matrix/strided_slice/stack?
7random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_1?
7random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_2?
/random_rotation_1/rotation_matrix/strided_sliceStridedSlice0random_rotation_1/rotation_matrix/Shape:output:0>random_rotation_1/rotation_matrix/strided_slice/stack:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_1/rotation_matrix/strided_slice?
'random_rotation_1/rotation_matrix/Cos_2Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_2?
7random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_1/stack?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_1StridedSlice+random_rotation_1/rotation_matrix/Cos_2:y:0@random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_1?
'random_rotation_1/rotation_matrix/Sin_2Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_2?
7random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_2/stack?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_2StridedSlice+random_rotation_1/rotation_matrix/Sin_2:y:0@random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_2?
%random_rotation_1/rotation_matrix/NegNeg:random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Neg?
7random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_3/stack?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_3StridedSlice-random_rotation_1/rotation_matrix/truediv:z:0@random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_3?
'random_rotation_1/rotation_matrix/Sin_3Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_3?
7random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_4/stack?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_4StridedSlice+random_rotation_1/rotation_matrix/Sin_3:y:0@random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_4?
'random_rotation_1/rotation_matrix/Cos_3Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_3?
7random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_5/stack?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_5StridedSlice+random_rotation_1/rotation_matrix/Cos_3:y:0@random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_5?
7random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_6/stack?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_6StridedSlice/random_rotation_1/rotation_matrix/truediv_1:z:0@random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_6?
-random_rotation_1/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/zeros/mul/y?
+random_rotation_1/rotation_matrix/zeros/mulMul8random_rotation_1/rotation_matrix/strided_slice:output:06random_rotation_1/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_1/rotation_matrix/zeros/mul?
.random_rotation_1/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_1/rotation_matrix/zeros/Less/y?
,random_rotation_1/rotation_matrix/zeros/LessLess/random_rotation_1/rotation_matrix/zeros/mul:z:07random_rotation_1/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_1/rotation_matrix/zeros/Less?
0random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_1/rotation_matrix/zeros/packed/1?
.random_rotation_1/rotation_matrix/zeros/packedPack8random_rotation_1/rotation_matrix/strided_slice:output:09random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_1/rotation_matrix/zeros/packed?
-random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_1/rotation_matrix/zeros/Const?
'random_rotation_1/rotation_matrix/zerosFill7random_rotation_1/rotation_matrix/zeros/packed:output:06random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/zeros?
-random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/concat/axis?
(random_rotation_1/rotation_matrix/concatConcatV2:random_rotation_1/rotation_matrix/strided_slice_1:output:0)random_rotation_1/rotation_matrix/Neg:y:0:random_rotation_1/rotation_matrix/strided_slice_3:output:0:random_rotation_1/rotation_matrix/strided_slice_4:output:0:random_rotation_1/rotation_matrix/strided_slice_5:output:0:random_rotation_1/rotation_matrix/strided_slice_6:output:00random_rotation_1/rotation_matrix/zeros:output:06random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_1/rotation_matrix/concat?
!random_rotation_1/transform/ShapeShape)random_flip_1/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_1/transform/Shape?
/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_1/transform/strided_slice/stack?
1random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_1?
1random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_2?
)random_rotation_1/transform/strided_sliceStridedSlice*random_rotation_1/transform/Shape:output:08random_rotation_1/transform/strided_slice/stack:output:0:random_rotation_1/transform/strided_slice/stack_1:output:0:random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_1/transform/strided_slice?
&random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_1/transform/fill_value?
6random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_1/random_flip_up_down/add:z:01random_rotation_1/rotation_matrix/concat:output:02random_rotation_1/transform/strided_slice:output:0/random_rotation_1/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_1/transform/ImageProjectiveTransformV3?
random_zoom_1/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_1/Shape?
!random_zoom_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_1/strided_slice/stack?
#random_zoom_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_1?
#random_zoom_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_2?
random_zoom_1/strided_sliceStridedSlicerandom_zoom_1/Shape:output:0*random_zoom_1/strided_slice/stack:output:0,random_zoom_1/strided_slice/stack_1:output:0,random_zoom_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice?
#random_zoom_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_1/stack?
%random_zoom_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_1?
%random_zoom_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_2?
random_zoom_1/strided_slice_1StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_1/stack:output:0.random_zoom_1/strided_slice_1/stack_1:output:0.random_zoom_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_1?
random_zoom_1/CastCast&random_zoom_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast?
#random_zoom_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_2/stack?
%random_zoom_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_1?
%random_zoom_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_2?
random_zoom_1/strided_slice_2StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_2/stack:output:0.random_zoom_1/strided_slice_2/stack_1:output:0.random_zoom_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_2?
random_zoom_1/Cast_1Cast&random_zoom_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast_1?
&random_zoom_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_1/stateful_uniform/shape/1?
$random_zoom_1/stateful_uniform/shapePack$random_zoom_1/strided_slice:output:0/random_zoom_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_1/stateful_uniform/shape?
"random_zoom_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_1/stateful_uniform/min?
"random_zoom_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_1/stateful_uniform/max?
8random_zoom_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_1/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_1/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_1_stateful_uniform_statefuluniform_resourceArandom_zoom_1/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_1/stateful_uniform/StatefulUniform?
"random_zoom_1/stateful_uniform/subSub+random_zoom_1/stateful_uniform/max:output:0+random_zoom_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_1/stateful_uniform/sub?
"random_zoom_1/stateful_uniform/mulMul7random_zoom_1/stateful_uniform/StatefulUniform:output:0&random_zoom_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_1/stateful_uniform/mul?
random_zoom_1/stateful_uniformAdd&random_zoom_1/stateful_uniform/mul:z:0+random_zoom_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_1/stateful_uniformx
random_zoom_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_1/concat/axis?
random_zoom_1/concatConcatV2"random_zoom_1/stateful_uniform:z:0"random_zoom_1/stateful_uniform:z:0"random_zoom_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_1/concat?
random_zoom_1/zoom_matrix/ShapeShaperandom_zoom_1/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_1/zoom_matrix/Shape?
-random_zoom_1/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_1/zoom_matrix/strided_slice/stack?
/random_zoom_1/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_1?
/random_zoom_1/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_2?
'random_zoom_1/zoom_matrix/strided_sliceStridedSlice(random_zoom_1/zoom_matrix/Shape:output:06random_zoom_1/zoom_matrix/strided_slice/stack:output:08random_zoom_1/zoom_matrix/strided_slice/stack_1:output:08random_zoom_1/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_1/zoom_matrix/strided_slice?
random_zoom_1/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_1/zoom_matrix/sub/y?
random_zoom_1/zoom_matrix/subSubrandom_zoom_1/Cast_1:y:0(random_zoom_1/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_1/zoom_matrix/sub?
#random_zoom_1/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_1/zoom_matrix/truediv/y?
!random_zoom_1/zoom_matrix/truedivRealDiv!random_zoom_1/zoom_matrix/sub:z:0,random_zoom_1/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_1/zoom_matrix/truediv?
/random_zoom_1/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_1/stack?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_1?
!random_zoom_1/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_1/x?
random_zoom_1/zoom_matrix/sub_1Sub*random_zoom_1/zoom_matrix/sub_1/x:output:02random_zoom_1/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_1?
random_zoom_1/zoom_matrix/mulMul%random_zoom_1/zoom_matrix/truediv:z:0#random_zoom_1/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_1/zoom_matrix/mul?
!random_zoom_1/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_2/y?
random_zoom_1/zoom_matrix/sub_2Subrandom_zoom_1/Cast:y:0*random_zoom_1/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_1/zoom_matrix/sub_2?
%random_zoom_1/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_1/zoom_matrix/truediv_1/y?
#random_zoom_1/zoom_matrix/truediv_1RealDiv#random_zoom_1/zoom_matrix/sub_2:z:0.random_zoom_1/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/truediv_1?
/random_zoom_1/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_2/stack?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_2?
!random_zoom_1/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_3/x?
random_zoom_1/zoom_matrix/sub_3Sub*random_zoom_1/zoom_matrix/sub_3/x:output:02random_zoom_1/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_3?
random_zoom_1/zoom_matrix/mul_1Mul'random_zoom_1/zoom_matrix/truediv_1:z:0#random_zoom_1/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/mul_1?
/random_zoom_1/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_3/stack?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_3?
%random_zoom_1/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/zeros/mul/y?
#random_zoom_1/zoom_matrix/zeros/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:0.random_zoom_1/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/zeros/mul?
&random_zoom_1/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_1/zoom_matrix/zeros/Less/y?
$random_zoom_1/zoom_matrix/zeros/LessLess'random_zoom_1/zoom_matrix/zeros/mul:z:0/random_zoom_1/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_1/zoom_matrix/zeros/Less?
(random_zoom_1/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_1/zoom_matrix/zeros/packed/1?
&random_zoom_1/zoom_matrix/zeros/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:01random_zoom_1/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_1/zoom_matrix/zeros/packed?
%random_zoom_1/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_1/zoom_matrix/zeros/Const?
random_zoom_1/zoom_matrix/zerosFill/random_zoom_1/zoom_matrix/zeros/packed:output:0.random_zoom_1/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/zeros?
'random_zoom_1/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_1/mul/y?
%random_zoom_1/zoom_matrix/zeros_1/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_1/mul?
(random_zoom_1/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_1/Less/y?
&random_zoom_1/zoom_matrix/zeros_1/LessLess)random_zoom_1/zoom_matrix/zeros_1/mul:z:01random_zoom_1/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_1/Less?
*random_zoom_1/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_1/packed/1?
(random_zoom_1/zoom_matrix/zeros_1/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_1/packed?
'random_zoom_1/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_1/Const?
!random_zoom_1/zoom_matrix/zeros_1Fill1random_zoom_1/zoom_matrix/zeros_1/packed:output:00random_zoom_1/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_1?
/random_zoom_1/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_4/stack?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_4?
'random_zoom_1/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_2/mul/y?
%random_zoom_1/zoom_matrix/zeros_2/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_2/mul?
(random_zoom_1/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_2/Less/y?
&random_zoom_1/zoom_matrix/zeros_2/LessLess)random_zoom_1/zoom_matrix/zeros_2/mul:z:01random_zoom_1/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_2/Less?
*random_zoom_1/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_2/packed/1?
(random_zoom_1/zoom_matrix/zeros_2/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_2/packed?
'random_zoom_1/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_2/Const?
!random_zoom_1/zoom_matrix/zeros_2Fill1random_zoom_1/zoom_matrix/zeros_2/packed:output:00random_zoom_1/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_2?
%random_zoom_1/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/concat/axis?
 random_zoom_1/zoom_matrix/concatConcatV22random_zoom_1/zoom_matrix/strided_slice_3:output:0(random_zoom_1/zoom_matrix/zeros:output:0!random_zoom_1/zoom_matrix/mul:z:0*random_zoom_1/zoom_matrix/zeros_1:output:02random_zoom_1/zoom_matrix/strided_slice_4:output:0#random_zoom_1/zoom_matrix/mul_1:z:0*random_zoom_1/zoom_matrix/zeros_2:output:0.random_zoom_1/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_1/zoom_matrix/concat?
random_zoom_1/transform/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_1/transform/Shape?
+random_zoom_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_1/transform/strided_slice/stack?
-random_zoom_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_1?
-random_zoom_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_2?
%random_zoom_1/transform/strided_sliceStridedSlice&random_zoom_1/transform/Shape:output:04random_zoom_1/transform/strided_slice/stack:output:06random_zoom_1/transform/strided_slice/stack_1:output:06random_zoom_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_1/transform/strided_slice?
"random_zoom_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_1/transform/fill_value?
2random_zoom_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_1/zoom_matrix/concat:output:0.random_zoom_1/transform/strided_slice:output:0+random_zoom_1/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_1/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_1/transform/ImageProjectiveTransformV3:transformed_images:03^random_rotation_1/stateful_uniform/StatefulUniform/^random_zoom_1/stateful_uniform/StatefulUniform*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::2h
2random_rotation_1/stateful_uniform/StatefulUniform2random_rotation_1/stateful_uniform/StatefulUniform2`
.random_zoom_1/stateful_uniform/StatefulUniform.random_zoom_1/stateful_uniform/StatefulUniform:f b
1
_output_shapes
:???????????
-
_user_specified_namerandom_flip_1_input
?
J
.__inference_sequential_1_layer_call_fn_1724597

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_17232012
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1723421

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?S
?
G__inference_sequential_layer_call_and_return_conditional_losses_1723646
sequential_1_input
conv2d_1723598
conv2d_1723600
conv2d_1_1723605
conv2d_1_1723607
conv2d_2_1723612
conv2d_2_1723614
conv2d_3_1723619
conv2d_3_1723621
conv2d_4_1723626
conv2d_4_1723628
dense_1723635
dense_1723637
dense_1_1723640
dense_1_1723642
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
sequential_1/PartitionedCallPartitionedCallsequential_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_17232012
sequential_1/PartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul%sequential_1/PartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
conv2d/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_1723598conv2d_1723600*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_17233012 
conv2d/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_17233222
activation/PartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_17232102
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_1723605conv2d_1_1723607*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_17233412"
 conv2d_1/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_17233622
activation_1/PartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17232222!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_1723612conv2d_2_1723614*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_17233812"
 conv2d_2/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_17234022
activation_2/PartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17232342!
max_pooling2d_2/PartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_1723619conv2d_3_1723621*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_17234212"
 conv2d_3/StatefulPartitionedCall?
activation_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_17234422
activation_3/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_17232462!
max_pooling2d_3/PartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_1723626conv2d_4_1723628*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_17234612"
 conv2d_4/StatefulPartitionedCall?
activation_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_17234822
activation_4/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_17232582!
max_pooling2d_4/PartitionedCall?
dropout/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_17235082
dropout/PartitionedCall?
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_17235272
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1723635dense_1723637*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_17235462
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1723640dense_1_1723642*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_17235732!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:???????????::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:e a
1
_output_shapes
:???????????
,
_user_specified_namesequential_1_input
?	
?
D__inference_dense_1_layer_call_and_return_conditional_losses_1723573

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_1723527

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
ū
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1723188

inputs?
;random_rotation_1_stateful_uniform_statefuluniform_resource;
7random_zoom_1_stateful_uniform_statefuluniform_resource
identity??2random_rotation_1/stateful_uniform/StatefulUniform?.random_zoom_1/stateful_uniform/StatefulUniform?
7random_flip_1/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:???????????29
7random_flip_1/random_flip_left_right/control_dependency?
*random_flip_1/random_flip_left_right/ShapeShape@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_1/random_flip_left_right/Shape?
8random_flip_1/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_1/random_flip_left_right/strided_slice/stack?
:random_flip_1/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_1?
:random_flip_1/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_2?
2random_flip_1/random_flip_left_right/strided_sliceStridedSlice3random_flip_1/random_flip_left_right/Shape:output:0Arandom_flip_1/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_1/random_flip_left_right/strided_slice?
9random_flip_1/random_flip_left_right/random_uniform/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_1/random_flip_left_right/random_uniform/shape?
7random_flip_1/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_1/random_flip_left_right/random_uniform/min?
7random_flip_1/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7random_flip_1/random_flip_left_right/random_uniform/max?
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_1/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02C
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniform?
7random_flip_1/random_flip_left_right/random_uniform/MulMulJrandom_flip_1/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_1/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????29
7random_flip_1/random_flip_left_right/random_uniform/Mul?
4random_flip_1/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/1?
4random_flip_1/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/2?
4random_flip_1/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/3?
2random_flip_1/random_flip_left_right/Reshape/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0=random_flip_1/random_flip_left_right/Reshape/shape/1:output:0=random_flip_1/random_flip_left_right/Reshape/shape/2:output:0=random_flip_1/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_1/random_flip_left_right/Reshape/shape?
,random_flip_1/random_flip_left_right/ReshapeReshape;random_flip_1/random_flip_left_right/random_uniform/Mul:z:0;random_flip_1/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2.
,random_flip_1/random_flip_left_right/Reshape?
*random_flip_1/random_flip_left_right/RoundRound5random_flip_1/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2,
*random_flip_1/random_flip_left_right/Round?
3random_flip_1/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_1/random_flip_left_right/ReverseV2/axis?
.random_flip_1/random_flip_left_right/ReverseV2	ReverseV2@random_flip_1/random_flip_left_right/control_dependency:output:0<random_flip_1/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????20
.random_flip_1/random_flip_left_right/ReverseV2?
(random_flip_1/random_flip_left_right/mulMul.random_flip_1/random_flip_left_right/Round:y:07random_flip_1/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2*
(random_flip_1/random_flip_left_right/mul?
*random_flip_1/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_flip_1/random_flip_left_right/sub/x?
(random_flip_1/random_flip_left_right/subSub3random_flip_1/random_flip_left_right/sub/x:output:0.random_flip_1/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2*
(random_flip_1/random_flip_left_right/sub?
*random_flip_1/random_flip_left_right/mul_1Mul,random_flip_1/random_flip_left_right/sub:z:0@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????2,
*random_flip_1/random_flip_left_right/mul_1?
(random_flip_1/random_flip_left_right/addAddV2,random_flip_1/random_flip_left_right/mul:z:0.random_flip_1/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????2*
(random_flip_1/random_flip_left_right/add?
4random_flip_1/random_flip_up_down/control_dependencyIdentity,random_flip_1/random_flip_left_right/add:z:0*
T0*;
_class1
/-loc:@random_flip_1/random_flip_left_right/add*1
_output_shapes
:???????????26
4random_flip_1/random_flip_up_down/control_dependency?
'random_flip_1/random_flip_up_down/ShapeShape=random_flip_1/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_1/random_flip_up_down/Shape?
5random_flip_1/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_1/random_flip_up_down/strided_slice/stack?
7random_flip_1/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_1/random_flip_up_down/strided_slice/stack_1?
7random_flip_1/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_1/random_flip_up_down/strided_slice/stack_2?
/random_flip_1/random_flip_up_down/strided_sliceStridedSlice0random_flip_1/random_flip_up_down/Shape:output:0>random_flip_1/random_flip_up_down/strided_slice/stack:output:0@random_flip_1/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_1/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_1/random_flip_up_down/strided_slice?
6random_flip_1/random_flip_up_down/random_uniform/shapePack8random_flip_1/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_1/random_flip_up_down/random_uniform/shape?
4random_flip_1/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_1/random_flip_up_down/random_uniform/min?
4random_flip_1/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_flip_1/random_flip_up_down/random_uniform/max?
>random_flip_1/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_1/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02@
>random_flip_1/random_flip_up_down/random_uniform/RandomUniform?
4random_flip_1/random_flip_up_down/random_uniform/MulMulGrandom_flip_1/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_1/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????26
4random_flip_1/random_flip_up_down/random_uniform/Mul?
1random_flip_1/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_1/random_flip_up_down/Reshape/shape/1?
1random_flip_1/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_1/random_flip_up_down/Reshape/shape/2?
1random_flip_1/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_1/random_flip_up_down/Reshape/shape/3?
/random_flip_1/random_flip_up_down/Reshape/shapePack8random_flip_1/random_flip_up_down/strided_slice:output:0:random_flip_1/random_flip_up_down/Reshape/shape/1:output:0:random_flip_1/random_flip_up_down/Reshape/shape/2:output:0:random_flip_1/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_1/random_flip_up_down/Reshape/shape?
)random_flip_1/random_flip_up_down/ReshapeReshape8random_flip_1/random_flip_up_down/random_uniform/Mul:z:08random_flip_1/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2+
)random_flip_1/random_flip_up_down/Reshape?
'random_flip_1/random_flip_up_down/RoundRound2random_flip_1/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????2)
'random_flip_1/random_flip_up_down/Round?
0random_flip_1/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_1/random_flip_up_down/ReverseV2/axis?
+random_flip_1/random_flip_up_down/ReverseV2	ReverseV2=random_flip_1/random_flip_up_down/control_dependency:output:09random_flip_1/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????2-
+random_flip_1/random_flip_up_down/ReverseV2?
%random_flip_1/random_flip_up_down/mulMul+random_flip_1/random_flip_up_down/Round:y:04random_flip_1/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2'
%random_flip_1/random_flip_up_down/mul?
'random_flip_1/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_flip_1/random_flip_up_down/sub/x?
%random_flip_1/random_flip_up_down/subSub0random_flip_1/random_flip_up_down/sub/x:output:0+random_flip_1/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????2'
%random_flip_1/random_flip_up_down/sub?
'random_flip_1/random_flip_up_down/mul_1Mul)random_flip_1/random_flip_up_down/sub:z:0=random_flip_1/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:???????????2)
'random_flip_1/random_flip_up_down/mul_1?
%random_flip_1/random_flip_up_down/addAddV2)random_flip_1/random_flip_up_down/mul:z:0+random_flip_1/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:???????????2'
%random_flip_1/random_flip_up_down/add?
random_rotation_1/ShapeShape)random_flip_1/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_1/Shape?
%random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_1/strided_slice/stack?
'random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_1?
'random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_2?
random_rotation_1/strided_sliceStridedSlice random_rotation_1/Shape:output:0.random_rotation_1/strided_slice/stack:output:00random_rotation_1/strided_slice/stack_1:output:00random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_1/strided_slice?
'random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_1/stack?
)random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_1?
)random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_2?
!random_rotation_1/strided_slice_1StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_1/stack:output:02random_rotation_1/strided_slice_1/stack_1:output:02random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_1?
random_rotation_1/CastCast*random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast?
'random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_2/stack?
)random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_1?
)random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_2?
!random_rotation_1/strided_slice_2StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_2/stack:output:02random_rotation_1/strided_slice_2/stack_1:output:02random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_2?
random_rotation_1/Cast_1Cast*random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast_1?
(random_rotation_1/stateful_uniform/shapePack(random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_1/stateful_uniform/shape?
&random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?2(
&random_rotation_1/stateful_uniform/min?
&random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?2(
&random_rotation_1/stateful_uniform/max?
<random_rotation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_1/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_1/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_1_stateful_uniform_statefuluniform_resourceErandom_rotation_1/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_1/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_1/stateful_uniform/StatefulUniform?
&random_rotation_1/stateful_uniform/subSub/random_rotation_1/stateful_uniform/max:output:0/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_1/stateful_uniform/sub?
&random_rotation_1/stateful_uniform/mulMul;random_rotation_1/stateful_uniform/StatefulUniform:output:0*random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_1/stateful_uniform/mul?
"random_rotation_1/stateful_uniformAdd*random_rotation_1/stateful_uniform/mul:z:0/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_1/stateful_uniform?
'random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_1/rotation_matrix/sub/y?
%random_rotation_1/rotation_matrix/subSubrandom_rotation_1/Cast_1:y:00random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_1/rotation_matrix/sub?
%random_rotation_1/rotation_matrix/CosCos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Cos?
)random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_1/y?
'random_rotation_1/rotation_matrix/sub_1Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_1?
%random_rotation_1/rotation_matrix/mulMul)random_rotation_1/rotation_matrix/Cos:y:0+random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/mul?
%random_rotation_1/rotation_matrix/SinSin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Sin?
)random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_2/y?
'random_rotation_1/rotation_matrix/sub_2Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_2?
'random_rotation_1/rotation_matrix/mul_1Mul)random_rotation_1/rotation_matrix/Sin:y:0+random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_1?
'random_rotation_1/rotation_matrix/sub_3Sub)random_rotation_1/rotation_matrix/mul:z:0+random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_3?
'random_rotation_1/rotation_matrix/sub_4Sub)random_rotation_1/rotation_matrix/sub:z:0+random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_4?
+random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_1/rotation_matrix/truediv/y?
)random_rotation_1/rotation_matrix/truedivRealDiv+random_rotation_1/rotation_matrix/sub_4:z:04random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_1/rotation_matrix/truediv?
)random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_5/y?
'random_rotation_1/rotation_matrix/sub_5Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_5?
'random_rotation_1/rotation_matrix/Sin_1Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_1?
)random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_6/y?
'random_rotation_1/rotation_matrix/sub_6Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_6?
'random_rotation_1/rotation_matrix/mul_2Mul+random_rotation_1/rotation_matrix/Sin_1:y:0+random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_2?
'random_rotation_1/rotation_matrix/Cos_1Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_1?
)random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_7/y?
'random_rotation_1/rotation_matrix/sub_7Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_7?
'random_rotation_1/rotation_matrix/mul_3Mul+random_rotation_1/rotation_matrix/Cos_1:y:0+random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_3?
%random_rotation_1/rotation_matrix/addAddV2+random_rotation_1/rotation_matrix/mul_2:z:0+random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/add?
'random_rotation_1/rotation_matrix/sub_8Sub+random_rotation_1/rotation_matrix/sub_5:z:0)random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_8?
-random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_1/rotation_matrix/truediv_1/y?
+random_rotation_1/rotation_matrix/truediv_1RealDiv+random_rotation_1/rotation_matrix/sub_8:z:06random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_1/rotation_matrix/truediv_1?
'random_rotation_1/rotation_matrix/ShapeShape&random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_1/rotation_matrix/Shape?
5random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_1/rotation_matrix/strided_slice/stack?
7random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_1?
7random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_2?
/random_rotation_1/rotation_matrix/strided_sliceStridedSlice0random_rotation_1/rotation_matrix/Shape:output:0>random_rotation_1/rotation_matrix/strided_slice/stack:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_1/rotation_matrix/strided_slice?
'random_rotation_1/rotation_matrix/Cos_2Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_2?
7random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_1/stack?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_1StridedSlice+random_rotation_1/rotation_matrix/Cos_2:y:0@random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_1?
'random_rotation_1/rotation_matrix/Sin_2Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_2?
7random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_2/stack?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_2StridedSlice+random_rotation_1/rotation_matrix/Sin_2:y:0@random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_2?
%random_rotation_1/rotation_matrix/NegNeg:random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Neg?
7random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_3/stack?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_3StridedSlice-random_rotation_1/rotation_matrix/truediv:z:0@random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_3?
'random_rotation_1/rotation_matrix/Sin_3Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_3?
7random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_4/stack?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_4StridedSlice+random_rotation_1/rotation_matrix/Sin_3:y:0@random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_4?
'random_rotation_1/rotation_matrix/Cos_3Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_3?
7random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_5/stack?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_5StridedSlice+random_rotation_1/rotation_matrix/Cos_3:y:0@random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_5?
7random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_6/stack?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_6StridedSlice/random_rotation_1/rotation_matrix/truediv_1:z:0@random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_6?
-random_rotation_1/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/zeros/mul/y?
+random_rotation_1/rotation_matrix/zeros/mulMul8random_rotation_1/rotation_matrix/strided_slice:output:06random_rotation_1/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_1/rotation_matrix/zeros/mul?
.random_rotation_1/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_1/rotation_matrix/zeros/Less/y?
,random_rotation_1/rotation_matrix/zeros/LessLess/random_rotation_1/rotation_matrix/zeros/mul:z:07random_rotation_1/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_1/rotation_matrix/zeros/Less?
0random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_1/rotation_matrix/zeros/packed/1?
.random_rotation_1/rotation_matrix/zeros/packedPack8random_rotation_1/rotation_matrix/strided_slice:output:09random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_1/rotation_matrix/zeros/packed?
-random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_1/rotation_matrix/zeros/Const?
'random_rotation_1/rotation_matrix/zerosFill7random_rotation_1/rotation_matrix/zeros/packed:output:06random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/zeros?
-random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/concat/axis?
(random_rotation_1/rotation_matrix/concatConcatV2:random_rotation_1/rotation_matrix/strided_slice_1:output:0)random_rotation_1/rotation_matrix/Neg:y:0:random_rotation_1/rotation_matrix/strided_slice_3:output:0:random_rotation_1/rotation_matrix/strided_slice_4:output:0:random_rotation_1/rotation_matrix/strided_slice_5:output:0:random_rotation_1/rotation_matrix/strided_slice_6:output:00random_rotation_1/rotation_matrix/zeros:output:06random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_1/rotation_matrix/concat?
!random_rotation_1/transform/ShapeShape)random_flip_1/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_1/transform/Shape?
/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_1/transform/strided_slice/stack?
1random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_1?
1random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_2?
)random_rotation_1/transform/strided_sliceStridedSlice*random_rotation_1/transform/Shape:output:08random_rotation_1/transform/strided_slice/stack:output:0:random_rotation_1/transform/strided_slice/stack_1:output:0:random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_1/transform/strided_slice?
&random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_1/transform/fill_value?
6random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_1/random_flip_up_down/add:z:01random_rotation_1/rotation_matrix/concat:output:02random_rotation_1/transform/strided_slice:output:0/random_rotation_1/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_1/transform/ImageProjectiveTransformV3?
random_zoom_1/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_1/Shape?
!random_zoom_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_1/strided_slice/stack?
#random_zoom_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_1?
#random_zoom_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_2?
random_zoom_1/strided_sliceStridedSlicerandom_zoom_1/Shape:output:0*random_zoom_1/strided_slice/stack:output:0,random_zoom_1/strided_slice/stack_1:output:0,random_zoom_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice?
#random_zoom_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_1/stack?
%random_zoom_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_1?
%random_zoom_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_2?
random_zoom_1/strided_slice_1StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_1/stack:output:0.random_zoom_1/strided_slice_1/stack_1:output:0.random_zoom_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_1?
random_zoom_1/CastCast&random_zoom_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast?
#random_zoom_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_2/stack?
%random_zoom_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_1?
%random_zoom_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_2?
random_zoom_1/strided_slice_2StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_2/stack:output:0.random_zoom_1/strided_slice_2/stack_1:output:0.random_zoom_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_2?
random_zoom_1/Cast_1Cast&random_zoom_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast_1?
&random_zoom_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_1/stateful_uniform/shape/1?
$random_zoom_1/stateful_uniform/shapePack$random_zoom_1/strided_slice:output:0/random_zoom_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_1/stateful_uniform/shape?
"random_zoom_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_1/stateful_uniform/min?
"random_zoom_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_1/stateful_uniform/max?
8random_zoom_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_1/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_1/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_1_stateful_uniform_statefuluniform_resourceArandom_zoom_1/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_1/stateful_uniform/StatefulUniform?
"random_zoom_1/stateful_uniform/subSub+random_zoom_1/stateful_uniform/max:output:0+random_zoom_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_1/stateful_uniform/sub?
"random_zoom_1/stateful_uniform/mulMul7random_zoom_1/stateful_uniform/StatefulUniform:output:0&random_zoom_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_1/stateful_uniform/mul?
random_zoom_1/stateful_uniformAdd&random_zoom_1/stateful_uniform/mul:z:0+random_zoom_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_1/stateful_uniformx
random_zoom_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_1/concat/axis?
random_zoom_1/concatConcatV2"random_zoom_1/stateful_uniform:z:0"random_zoom_1/stateful_uniform:z:0"random_zoom_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_1/concat?
random_zoom_1/zoom_matrix/ShapeShaperandom_zoom_1/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_1/zoom_matrix/Shape?
-random_zoom_1/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_1/zoom_matrix/strided_slice/stack?
/random_zoom_1/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_1?
/random_zoom_1/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_2?
'random_zoom_1/zoom_matrix/strided_sliceStridedSlice(random_zoom_1/zoom_matrix/Shape:output:06random_zoom_1/zoom_matrix/strided_slice/stack:output:08random_zoom_1/zoom_matrix/strided_slice/stack_1:output:08random_zoom_1/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_1/zoom_matrix/strided_slice?
random_zoom_1/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_1/zoom_matrix/sub/y?
random_zoom_1/zoom_matrix/subSubrandom_zoom_1/Cast_1:y:0(random_zoom_1/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_1/zoom_matrix/sub?
#random_zoom_1/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_1/zoom_matrix/truediv/y?
!random_zoom_1/zoom_matrix/truedivRealDiv!random_zoom_1/zoom_matrix/sub:z:0,random_zoom_1/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_1/zoom_matrix/truediv?
/random_zoom_1/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_1/stack?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_1?
!random_zoom_1/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_1/x?
random_zoom_1/zoom_matrix/sub_1Sub*random_zoom_1/zoom_matrix/sub_1/x:output:02random_zoom_1/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_1?
random_zoom_1/zoom_matrix/mulMul%random_zoom_1/zoom_matrix/truediv:z:0#random_zoom_1/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_1/zoom_matrix/mul?
!random_zoom_1/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_2/y?
random_zoom_1/zoom_matrix/sub_2Subrandom_zoom_1/Cast:y:0*random_zoom_1/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_1/zoom_matrix/sub_2?
%random_zoom_1/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_1/zoom_matrix/truediv_1/y?
#random_zoom_1/zoom_matrix/truediv_1RealDiv#random_zoom_1/zoom_matrix/sub_2:z:0.random_zoom_1/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/truediv_1?
/random_zoom_1/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_2/stack?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_2?
!random_zoom_1/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_3/x?
random_zoom_1/zoom_matrix/sub_3Sub*random_zoom_1/zoom_matrix/sub_3/x:output:02random_zoom_1/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_3?
random_zoom_1/zoom_matrix/mul_1Mul'random_zoom_1/zoom_matrix/truediv_1:z:0#random_zoom_1/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/mul_1?
/random_zoom_1/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_3/stack?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_3?
%random_zoom_1/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/zeros/mul/y?
#random_zoom_1/zoom_matrix/zeros/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:0.random_zoom_1/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/zeros/mul?
&random_zoom_1/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_1/zoom_matrix/zeros/Less/y?
$random_zoom_1/zoom_matrix/zeros/LessLess'random_zoom_1/zoom_matrix/zeros/mul:z:0/random_zoom_1/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_1/zoom_matrix/zeros/Less?
(random_zoom_1/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_1/zoom_matrix/zeros/packed/1?
&random_zoom_1/zoom_matrix/zeros/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:01random_zoom_1/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_1/zoom_matrix/zeros/packed?
%random_zoom_1/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_1/zoom_matrix/zeros/Const?
random_zoom_1/zoom_matrix/zerosFill/random_zoom_1/zoom_matrix/zeros/packed:output:0.random_zoom_1/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/zeros?
'random_zoom_1/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_1/mul/y?
%random_zoom_1/zoom_matrix/zeros_1/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_1/mul?
(random_zoom_1/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_1/Less/y?
&random_zoom_1/zoom_matrix/zeros_1/LessLess)random_zoom_1/zoom_matrix/zeros_1/mul:z:01random_zoom_1/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_1/Less?
*random_zoom_1/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_1/packed/1?
(random_zoom_1/zoom_matrix/zeros_1/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_1/packed?
'random_zoom_1/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_1/Const?
!random_zoom_1/zoom_matrix/zeros_1Fill1random_zoom_1/zoom_matrix/zeros_1/packed:output:00random_zoom_1/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_1?
/random_zoom_1/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_4/stack?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_4?
'random_zoom_1/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_2/mul/y?
%random_zoom_1/zoom_matrix/zeros_2/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_2/mul?
(random_zoom_1/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_2/Less/y?
&random_zoom_1/zoom_matrix/zeros_2/LessLess)random_zoom_1/zoom_matrix/zeros_2/mul:z:01random_zoom_1/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_2/Less?
*random_zoom_1/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_2/packed/1?
(random_zoom_1/zoom_matrix/zeros_2/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_2/packed?
'random_zoom_1/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_2/Const?
!random_zoom_1/zoom_matrix/zeros_2Fill1random_zoom_1/zoom_matrix/zeros_2/packed:output:00random_zoom_1/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_2?
%random_zoom_1/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/concat/axis?
 random_zoom_1/zoom_matrix/concatConcatV22random_zoom_1/zoom_matrix/strided_slice_3:output:0(random_zoom_1/zoom_matrix/zeros:output:0!random_zoom_1/zoom_matrix/mul:z:0*random_zoom_1/zoom_matrix/zeros_1:output:02random_zoom_1/zoom_matrix/strided_slice_4:output:0#random_zoom_1/zoom_matrix/mul_1:z:0*random_zoom_1/zoom_matrix/zeros_2:output:0.random_zoom_1/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_1/zoom_matrix/concat?
random_zoom_1/transform/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_1/transform/Shape?
+random_zoom_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_1/transform/strided_slice/stack?
-random_zoom_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_1?
-random_zoom_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_2?
%random_zoom_1/transform/strided_sliceStridedSlice&random_zoom_1/transform/Shape:output:04random_zoom_1/transform/strided_slice/stack:output:06random_zoom_1/transform/strided_slice/stack_1:output:06random_zoom_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_1/transform/strided_slice?
"random_zoom_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_1/transform/fill_value?
2random_zoom_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_1/zoom_matrix/concat:output:0.random_zoom_1/transform/strided_slice:output:0+random_zoom_1/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_1/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_1/transform/ImageProjectiveTransformV3:transformed_images:03^random_rotation_1/stateful_uniform/StatefulUniform/^random_zoom_1/stateful_uniform/StatefulUniform*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::2h
2random_rotation_1/stateful_uniform/StatefulUniform2random_rotation_1/stateful_uniform/StatefulUniform2`
.random_zoom_1/stateful_uniform/StatefulUniform.random_zoom_1/stateful_uniform/StatefulUniform:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1723246

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
}
(__inference_conv2d_layer_call_fn_1724616

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_17233012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
W
.__inference_sequential_1_layer_call_fn_1723204
random_flip_1_input
identity?
PartitionedCallPartitionedCallrandom_flip_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_17232012
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????:f b
1
_output_shapes
:???????????
-
_user_specified_namerandom_flip_1_input
?
|
'__inference_dense_layer_call_fn_1724800

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_17235462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1723210

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_layer_call_and_return_conditional_losses_1723546

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
I__inference_activation_4_layer_call_and_return_conditional_losses_1724737

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
,__inference_sequential_layer_call_fn_1724296

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_17237092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?S
?	
G__inference_sequential_layer_call_and_return_conditional_losses_1724259

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?conv2d_4/BiasAdd/ReadVariableOp?conv2d_4/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOpi
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMulinputsrescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Drescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
conv2d/BiasAdd
activation/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
activation/Relu?
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@2
conv2d_1/BiasAdd?
activation_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@2
activation_1/Relu?
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@2
conv2d_2/BiasAdd?
activation_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@2
activation_2/Relu?
max_pooling2d_2/MaxPoolMaxPoolactivation_2/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_3/BiasAdd?
activation_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_3/Relu?
max_pooling2d_3/MaxPoolMaxPoolactivation_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_4/Conv2D?
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_4/BiasAdd?
activation_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_4/Relu?
max_pooling2d_4/MaxPoolMaxPoolactivation_4/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPool?
dropout/IdentityIdentity max_pooling2d_4/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2
flatten/Const?
flatten/ReshapeReshapedropout/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:???????????::::::::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_layer_call_fn_1723216

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_17232102
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
G__inference_activation_layer_call_and_return_conditional_losses_1724621

inputs
identityX
ReluReluinputs*
T0*1
_output_shapes
:???????????@2
Relup
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????@:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_1724759

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_1_layer_call_fn_1723228

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_17232222
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_1_layer_call_and_return_conditional_losses_1724811

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_1723876
sequential_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *+
f&R$
"__inference__wrapped_model_17226802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:???????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:???????????
,
_user_specified_namesequential_1_input
?
M
1__inference_max_pooling2d_2_layer_call_fn_1723240

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_17232342
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
,__inference_sequential_layer_call_fn_1723833
sequential_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

 ??E8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_17238022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*h
_input_shapesW
U:???????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:???????????
,
_user_specified_namesequential_1_input
?
?
.__inference_sequential_1_layer_call_fn_1723195
random_flip_1_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_1_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

 ??E8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_17231882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:???????????
-
_user_specified_namerandom_flip_1_input
?
c
D__inference_dropout_layer_call_and_return_conditional_losses_1724754

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
C__inference_conv2d_layer_call_and_return_conditional_losses_1724607

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1723258

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1723461

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
[
sequential_1_inputE
$serving_default_sequential_1_input:0???????????;
dense_10
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
??
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
layer-16
layer-17
layer-18
layer_with_weights-5
layer-19
layer_with_weights-6
layer-20
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"??
_tf_keras_sequentialĆ{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_1_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_1_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_1", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_1", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_4", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_1_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_1_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_1", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_1", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_4", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
layer-1
layer-2
trainable_variables
 regularization_losses
!	variables
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_1_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_1", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_1", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_1_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_1", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_1", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
?
#	keras_api"?
_tf_keras_layer?{"class_name": "Rescaling", "name": "rescaling", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "rescaling", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}
?


$kernel
%bias
&trainable_variables
'regularization_losses
(	variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}
?
*trainable_variables
+regularization_losses
,	variables
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
.trainable_variables
/regularization_losses
0	variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

2kernel
3bias
4trainable_variables
5regularization_losses
6	variables
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 127, 127, 64]}}
?
8trainable_variables
9regularization_losses
:	variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
<trainable_variables
=regularization_losses
>	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

@kernel
Abias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 62, 62, 64]}}
?
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Nkernel
Obias
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 64]}}
?
Ttrainable_variables
Uregularization_losses
V	variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

\kernel
]bias
^trainable_variables
_regularization_losses
`	variables
a	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
?
btrainable_variables
cregularization_losses
d	variables
e	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_4", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
ftrainable_variables
gregularization_losses
h	variables
i	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

rkernel
sbias
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2304}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2304]}}
?

xkernel
ybias
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
~iter

beta_1
?beta_2

?decay
?learning_rate$m?%m?2m?3m?@m?Am?Nm?Om?\m?]m?rm?sm?xm?ym?$v?%v?2v?3v?@v?Av?Nv?Ov?\v?]v?rv?sv?xv?yv?"
	optimizer
?
$0
%1
22
33
@4
A5
N6
O7
\8
]9
r10
s11
x12
y13"
trackable_list_wrapper
 "
trackable_list_wrapper
?
$0
%1
22
33
@4
A5
N6
O7
\8
]9
r10
s11
x12
y13"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
trainable_variables
?layers
regularization_losses
	variables
?non_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"class_name": "RandomFlip", "name": "random_flip_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_flip_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"class_name": "RandomRotation", "name": "random_rotation_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_rotation_1", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"class_name": "RandomZoom", "name": "random_zoom_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_1", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
trainable_variables
?layers
 regularization_losses
!	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
':%@2conv2d/kernel
:@2conv2d/bias
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
&trainable_variables
?layers
'regularization_losses
(	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
*trainable_variables
?layers
+regularization_losses
,	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
.trainable_variables
?layers
/regularization_losses
0	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_1/kernel
:@2conv2d_1/bias
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
4trainable_variables
?layers
5regularization_losses
6	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
8trainable_variables
?layers
9regularization_losses
:	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
<trainable_variables
?layers
=regularization_losses
>	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_2/kernel
:@2conv2d_2/bias
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Btrainable_variables
?layers
Cregularization_losses
D	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Ftrainable_variables
?layers
Gregularization_losses
H	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Jtrainable_variables
?layers
Kregularization_losses
L	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_3/kernel
:@2conv2d_3/bias
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Ptrainable_variables
?layers
Qregularization_losses
R	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Ttrainable_variables
?layers
Uregularization_losses
V	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
Xtrainable_variables
?layers
Yregularization_losses
Z	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_4/kernel
:@2conv2d_4/bias
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
^trainable_variables
?layers
_regularization_losses
`	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
btrainable_variables
?layers
cregularization_losses
d	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
ftrainable_variables
?layers
gregularization_losses
h	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
jtrainable_variables
?layers
kregularization_losses
l	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
ntrainable_variables
?layers
oregularization_losses
p	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :
??2dense/kernel
:?2
dense/bias
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
ttrainable_variables
?layers
uregularization_losses
v	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?
2dense_1/kernel
:
2dense_1/bias
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?layer_metrics
ztrainable_variables
?layers
{regularization_losses
|	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20"
trackable_list_wrapper
 "
trackable_list_wrapper
/
?
_state_var"
_generic_user_object
"
_generic_user_object
/
?
_state_var"
_generic_user_object
"
_generic_user_object
/
?
_state_var"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:	2Variable
:	2Variable
:	2Variable
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
,:*@2Adam/conv2d/kernel/m
:@2Adam/conv2d/bias/m
.:,@@2Adam/conv2d_1/kernel/m
 :@2Adam/conv2d_1/bias/m
.:,@@2Adam/conv2d_2/kernel/m
 :@2Adam/conv2d_2/bias/m
.:,@@2Adam/conv2d_3/kernel/m
 :@2Adam/conv2d_3/bias/m
.:,@@2Adam/conv2d_4/kernel/m
 :@2Adam/conv2d_4/bias/m
%:#
??2Adam/dense/kernel/m
:?2Adam/dense/bias/m
&:$	?
2Adam/dense_1/kernel/m
:
2Adam/dense_1/bias/m
,:*@2Adam/conv2d/kernel/v
:@2Adam/conv2d/bias/v
.:,@@2Adam/conv2d_1/kernel/v
 :@2Adam/conv2d_1/bias/v
.:,@@2Adam/conv2d_2/kernel/v
 :@2Adam/conv2d_2/bias/v
.:,@@2Adam/conv2d_3/kernel/v
 :@2Adam/conv2d_3/bias/v
.:,@@2Adam/conv2d_4/kernel/v
 :@2Adam/conv2d_4/bias/v
%:#
??2Adam/dense/kernel/v
:?2Adam/dense/bias/v
&:$	?
2Adam/dense_1/kernel/v
:
2Adam/dense_1/bias/v
?2?
,__inference_sequential_layer_call_fn_1724296
,__inference_sequential_layer_call_fn_1723744
,__inference_sequential_layer_call_fn_1723833
,__inference_sequential_layer_call_fn_1724329?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_1722680?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *;?8
6?3
sequential_1_input???????????
?2?
G__inference_sequential_layer_call_and_return_conditional_losses_1723646
G__inference_sequential_layer_call_and_return_conditional_losses_1724259
G__inference_sequential_layer_call_and_return_conditional_losses_1724194
G__inference_sequential_layer_call_and_return_conditional_losses_1723590?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_sequential_1_layer_call_fn_1724597
.__inference_sequential_1_layer_call_fn_1723195
.__inference_sequential_1_layer_call_fn_1723204
.__inference_sequential_1_layer_call_fn_1724592?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1722935
I__inference_sequential_1_layer_call_and_return_conditional_losses_1724583
I__inference_sequential_1_layer_call_and_return_conditional_losses_1724579
I__inference_sequential_1_layer_call_and_return_conditional_losses_1722931?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_conv2d_layer_call_fn_1724616?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_layer_call_and_return_conditional_losses_1724607?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_activation_layer_call_fn_1724626?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_activation_layer_call_and_return_conditional_losses_1724621?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_max_pooling2d_layer_call_fn_1723216?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1723210?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_1_layer_call_fn_1724645?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1724636?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_1_layer_call_fn_1724655?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_1_layer_call_and_return_conditional_losses_1724650?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_1_layer_call_fn_1723228?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1723222?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_2_layer_call_fn_1724674?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1724665?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_2_layer_call_fn_1724684?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_2_layer_call_and_return_conditional_losses_1724679?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_2_layer_call_fn_1723240?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1723234?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_3_layer_call_fn_1724703?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1724694?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_3_layer_call_fn_1724713?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_3_layer_call_and_return_conditional_losses_1724708?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_3_layer_call_fn_1723252?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1723246?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_4_layer_call_fn_1724732?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1724723?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_4_layer_call_fn_1724742?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_4_layer_call_and_return_conditional_losses_1724737?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_4_layer_call_fn_1723264?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1723258?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
)__inference_dropout_layer_call_fn_1724764
)__inference_dropout_layer_call_fn_1724769?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_layer_call_and_return_conditional_losses_1724759
D__inference_dropout_layer_call_and_return_conditional_losses_1724754?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_flatten_layer_call_fn_1724780?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_flatten_layer_call_and_return_conditional_losses_1724775?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_layer_call_fn_1724800?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_layer_call_and_return_conditional_losses_1724791?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_1_layer_call_fn_1724820?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_1_layer_call_and_return_conditional_losses_1724811?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_1723876sequential_1_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_1722680?$%23@ANO\]rsxyE?B
;?8
6?3
sequential_1_input???????????
? "1?.
,
dense_1!?
dense_1?????????
?
I__inference_activation_1_layer_call_and_return_conditional_losses_1724650h7?4
-?*
(?%
inputs?????????}}@
? "-?*
#? 
0?????????}}@
? ?
.__inference_activation_1_layer_call_fn_1724655[7?4
-?*
(?%
inputs?????????}}@
? " ??????????}}@?
I__inference_activation_2_layer_call_and_return_conditional_losses_1724679h7?4
-?*
(?%
inputs?????????<<@
? "-?*
#? 
0?????????<<@
? ?
.__inference_activation_2_layer_call_fn_1724684[7?4
-?*
(?%
inputs?????????<<@
? " ??????????<<@?
I__inference_activation_3_layer_call_and_return_conditional_losses_1724708h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_activation_3_layer_call_fn_1724713[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
I__inference_activation_4_layer_call_and_return_conditional_losses_1724737h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_activation_4_layer_call_fn_1724742[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
G__inference_activation_layer_call_and_return_conditional_losses_1724621l9?6
/?,
*?'
inputs???????????@
? "/?,
%?"
0???????????@
? ?
,__inference_activation_layer_call_fn_1724626_9?6
/?,
*?'
inputs???????????@
? ""????????????@?
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1724636l237?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????}}@
? ?
*__inference_conv2d_1_layer_call_fn_1724645_237?4
-?*
(?%
inputs?????????@
? " ??????????}}@?
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1724665l@A7?4
-?*
(?%
inputs?????????>>@
? "-?*
#? 
0?????????<<@
? ?
*__inference_conv2d_2_layer_call_fn_1724674_@A7?4
-?*
(?%
inputs?????????>>@
? " ??????????<<@?
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1724694lNO7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_3_layer_call_fn_1724703_NO7?4
-?*
(?%
inputs?????????@
? " ??????????@?
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1724723l\]7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_4_layer_call_fn_1724732_\]7?4
-?*
(?%
inputs?????????@
? " ??????????@?
C__inference_conv2d_layer_call_and_return_conditional_losses_1724607p$%9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????@
? ?
(__inference_conv2d_layer_call_fn_1724616c$%9?6
/?,
*?'
inputs???????????
? ""????????????@?
D__inference_dense_1_layer_call_and_return_conditional_losses_1724811]xy0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? }
)__inference_dense_1_layer_call_fn_1724820Pxy0?-
&?#
!?
inputs??????????
? "??????????
?
B__inference_dense_layer_call_and_return_conditional_losses_1724791^rs0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? |
'__inference_dense_layer_call_fn_1724800Qrs0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dropout_layer_call_and_return_conditional_losses_1724754l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
D__inference_dropout_layer_call_and_return_conditional_losses_1724759l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
)__inference_dropout_layer_call_fn_1724764_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
)__inference_dropout_layer_call_fn_1724769_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
D__inference_flatten_layer_call_and_return_conditional_losses_1724775a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
)__inference_flatten_layer_call_fn_1724780T7?4
-?*
(?%
inputs?????????@
? "????????????
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1723222?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_1_layer_call_fn_1723228?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1723234?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_2_layer_call_fn_1723240?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1723246?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_3_layer_call_fn_1723252?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1723258?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_4_layer_call_fn_1723264?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1723210?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_layer_call_fn_1723216?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_1_layer_call_and_return_conditional_losses_1722931???N?K
D?A
7?4
random_flip_1_input???????????
p

 
? "/?,
%?"
0???????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1722935?N?K
D?A
7?4
random_flip_1_input???????????
p 

 
? "/?,
%?"
0???????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1724579z??A?>
7?4
*?'
inputs???????????
p

 
? "/?,
%?"
0???????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1724583tA?>
7?4
*?'
inputs???????????
p 

 
? "/?,
%?"
0???????????
? ?
.__inference_sequential_1_layer_call_fn_1723195z??N?K
D?A
7?4
random_flip_1_input???????????
p

 
? ""?????????????
.__inference_sequential_1_layer_call_fn_1723204tN?K
D?A
7?4
random_flip_1_input???????????
p 

 
? ""?????????????
.__inference_sequential_1_layer_call_fn_1724592m??A?>
7?4
*?'
inputs???????????
p

 
? ""?????????????
.__inference_sequential_1_layer_call_fn_1724597gA?>
7?4
*?'
inputs???????????
p 

 
? ""?????????????
G__inference_sequential_layer_call_and_return_conditional_losses_1723590???$%23@ANO\]rsxyM?J
C?@
6?3
sequential_1_input???????????
p

 
? "%?"
?
0?????????

? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1723646?$%23@ANO\]rsxyM?J
C?@
6?3
sequential_1_input???????????
p 

 
? "%?"
?
0?????????

? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1724194~??$%23@ANO\]rsxyA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????

? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1724259z$%23@ANO\]rsxyA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????

? ?
,__inference_sequential_layer_call_fn_1723744}??$%23@ANO\]rsxyM?J
C?@
6?3
sequential_1_input???????????
p

 
? "??????????
?
,__inference_sequential_layer_call_fn_1723833y$%23@ANO\]rsxyM?J
C?@
6?3
sequential_1_input???????????
p 

 
? "??????????
?
,__inference_sequential_layer_call_fn_1724296q??$%23@ANO\]rsxyA?>
7?4
*?'
inputs???????????
p

 
? "??????????
?
,__inference_sequential_layer_call_fn_1724329m$%23@ANO\]rsxyA?>
7?4
*?'
inputs???????????
p 

 
? "??????????
?
%__inference_signature_wrapper_1723876?$%23@ANO\]rsxy[?X
? 
Q?N
L
sequential_1_input6?3
sequential_1_input???????????"1?.
,
dense_1!?
dense_1?????????
