Рб
ќ3°3
:
Add
x"T
y"T
z"T"
Ttype:
2	
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
м
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Т
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

С
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

є
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtypeА
is_initialized
"
dtypetypeШ
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
а
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.12.02v1.12.0-rc2-3-ga6d8ffae09ЫО
~
Conv1_inputPlaceholder*$
shape:€€€€€€€€€*
dtype0*/
_output_shapes
:€€€€€€€€€
І
-Conv1/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *
_class
loc:@Conv1/kernel*
dtype0*
_output_shapes
:
С
+Conv1/kernel/Initializer/random_uniform/minConst*
valueB
 *HYЛЊ*
_class
loc:@Conv1/kernel*
dtype0*
_output_shapes
: 
С
+Conv1/kernel/Initializer/random_uniform/maxConst*
valueB
 *HYЛ>*
_class
loc:@Conv1/kernel*
dtype0*
_output_shapes
: 
н
5Conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform-Conv1/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@Conv1/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
ќ
+Conv1/kernel/Initializer/random_uniform/subSub+Conv1/kernel/Initializer/random_uniform/max+Conv1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@Conv1/kernel*
_output_shapes
: 
и
+Conv1/kernel/Initializer/random_uniform/mulMul5Conv1/kernel/Initializer/random_uniform/RandomUniform+Conv1/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv1/kernel*&
_output_shapes
:
Џ
'Conv1/kernel/Initializer/random_uniformAdd+Conv1/kernel/Initializer/random_uniform/mul+Conv1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@Conv1/kernel*&
_output_shapes
:
Ѓ
Conv1/kernelVarHandleOp*
shared_nameConv1/kernel*
_class
loc:@Conv1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
i
-Conv1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel*
_output_shapes
: 
М
Conv1/kernel/AssignAssignVariableOpConv1/kernel'Conv1/kernel/Initializer/random_uniform*
_class
loc:@Conv1/kernel*
dtype0
Ц
 Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*
_class
loc:@Conv1/kernel*
dtype0*&
_output_shapes
:
И
Conv1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@Conv1/bias*
dtype0*
_output_shapes
:
Ь

Conv1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
Conv1/bias*
_class
loc:@Conv1/bias*
	container *
shape:
e
+Conv1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Conv1/bias*
_output_shapes
: 
{
Conv1/bias/AssignAssignVariableOp
Conv1/biasConv1/bias/Initializer/zeros*
_class
loc:@Conv1/bias*
dtype0
Д
Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
_class
loc:@Conv1/bias*
dtype0*
_output_shapes
:
d
Conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
p
Conv1/Conv2D/ReadVariableOpReadVariableOpConv1/kernel*
dtype0*&
_output_shapes
:
й
Conv1/Conv2DConv2DConv1_inputConv1/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:€€€€€€€€€*
	dilations
*
T0
c
Conv1/BiasAdd/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
Х
Conv1/BiasAddBiasAddConv1/Conv2DConv1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€
[

Conv1/ReluReluConv1/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€
W
flatten/ShapeShape
Conv1/Relu*
T0*
out_type0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
°
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
b
flatten/Reshape/shape/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
З
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
~
flatten/ReshapeReshape
Conv1/Reluflatten/Reshape/shape*(
_output_shapes
:€€€€€€€€€»
*
T0*
Tshape0
£
/Softmax/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"H  
   *!
_class
loc:@Softmax/kernel
Х
-Softmax/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *7оЗљ*!
_class
loc:@Softmax/kernel
Х
-Softmax/kernel/Initializer/random_uniform/maxConst*
valueB
 *7оЗ=*!
_class
loc:@Softmax/kernel*
dtype0*
_output_shapes
: 
м
7Softmax/kernel/Initializer/random_uniform/RandomUniformRandomUniform/Softmax/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	»

*

seed *
T0*!
_class
loc:@Softmax/kernel*
seed2 
÷
-Softmax/kernel/Initializer/random_uniform/subSub-Softmax/kernel/Initializer/random_uniform/max-Softmax/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@Softmax/kernel
й
-Softmax/kernel/Initializer/random_uniform/mulMul7Softmax/kernel/Initializer/random_uniform/RandomUniform-Softmax/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@Softmax/kernel*
_output_shapes
:	»


џ
)Softmax/kernel/Initializer/random_uniformAdd-Softmax/kernel/Initializer/random_uniform/mul-Softmax/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@Softmax/kernel*
_output_shapes
:	»


≠
Softmax/kernelVarHandleOp*!
_class
loc:@Softmax/kernel*
	container *
shape:	»

*
dtype0*
_output_shapes
: *
shared_nameSoftmax/kernel
m
/Softmax/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/kernel*
_output_shapes
: 
Ф
Softmax/kernel/AssignAssignVariableOpSoftmax/kernel)Softmax/kernel/Initializer/random_uniform*!
_class
loc:@Softmax/kernel*
dtype0
Х
"Softmax/kernel/Read/ReadVariableOpReadVariableOpSoftmax/kernel*
dtype0*
_output_shapes
:	»

*!
_class
loc:@Softmax/kernel
М
Softmax/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@Softmax/bias*
dtype0*
_output_shapes
:

Ґ
Softmax/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameSoftmax/bias*
_class
loc:@Softmax/bias*
	container *
shape:

i
-Softmax/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/bias*
_output_shapes
: 
Г
Softmax/bias/AssignAssignVariableOpSoftmax/biasSoftmax/bias/Initializer/zeros*
_class
loc:@Softmax/bias*
dtype0
К
 Softmax/bias/Read/ReadVariableOpReadVariableOpSoftmax/bias*
_class
loc:@Softmax/bias*
dtype0*
_output_shapes
:

m
Softmax/MatMul/ReadVariableOpReadVariableOpSoftmax/kernel*
dtype0*
_output_shapes
:	»


†
Softmax/MatMulMatMulflatten/ReshapeSoftmax/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b( 
g
Softmax/BiasAdd/ReadVariableOpReadVariableOpSoftmax/bias*
dtype0*
_output_shapes
:

У
Softmax/BiasAddBiasAddSoftmax/MatMulSoftmax/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€

]
Softmax/SoftmaxSoftmaxSoftmax/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€

Э
0TFOptimizer/iterations/Initializer/initial_valueConst*
dtype0	*
_output_shapes
: *
value	B	 R *)
_class
loc:@TFOptimizer/iterations
Љ
TFOptimizer/iterationsVarHandleOp*
_output_shapes
: *'
shared_nameTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
	container *
shape: *
dtype0	
}
7TFOptimizer/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
≥
TFOptimizer/iterations/AssignAssignVariableOpTFOptimizer/iterations0TFOptimizer/iterations/Initializer/initial_value*)
_class
loc:@TFOptimizer/iterations*
dtype0	
§
*TFOptimizer/iterations/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
dtype0	*
_output_shapes
: 
Г
Softmax_targetPlaceholder*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*%
shape:€€€€€€€€€€€€€€€€€€*
dtype0
R
ConstConst*
dtype0*
_output_shapes
:*
valueB*  А?
Г
Softmax_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
\
loss/Softmax_loss/ConstConst*
_output_shapes
: *
valueB
 *Хњ÷3*
dtype0
\
loss/Softmax_loss/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
o
loss/Softmax_loss/subSubloss/Softmax_loss/sub/xloss/Softmax_loss/Const*
_output_shapes
: *
T0
М
'loss/Softmax_loss/clip_by_value/MinimumMinimumSoftmax/Softmaxloss/Softmax_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€

Ю
loss/Softmax_loss/clip_by_valueMaximum'loss/Softmax_loss/clip_by_value/Minimumloss/Softmax_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€

o
loss/Softmax_loss/LogLogloss/Softmax_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
*
T0
r
loss/Softmax_loss/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
С
loss/Softmax_loss/ReshapeReshapeSoftmax_targetloss/Softmax_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ж
loss/Softmax_loss/CastCastloss/Softmax_loss/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:€€€€€€€€€
r
!loss/Softmax_loss/Reshape_1/shapeConst*
_output_shapes
:*
valueB"€€€€
   *
dtype0
†
loss/Softmax_loss/Reshape_1Reshapeloss/Softmax_loss/Log!loss/Softmax_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

С
;loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/Softmax_loss/Cast*
_output_shapes
:*
T0	*
out_type0
Е
Yloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/Softmax_loss/Reshape_1loss/Softmax_loss/Cast*
T0*
Tlabels0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€

Ь
Floss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeSoftmax_sample_weights*
_output_shapes
:*
T0*
out_type0
З
Eloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
ё
Eloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeShapeYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
Ж
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Ж
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
щ
Bloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarEqualDloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar/xEloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
Г
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
ѕ
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityPloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Ќ
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityNloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
ј
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

й
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*U
_classK
IGloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
И
nloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualuloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchwloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
Т
uloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchDloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rankOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*W
_classM
KIloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 
Ц
wloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchEloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rankOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
х
hloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchnloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranknloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
Г
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityjloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
Б
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityhloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
Ж
iloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitynloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

Ї
Бloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
ѕ
}loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsИloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Бloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
ђ
Дloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchEloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
И
Жloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1SwitchДloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchiloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::*
T0
Ѕ
Вloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
≤
Вloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
…
|loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillВloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeВloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
≠
~loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
value	B :*
dtype0
ј
yloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2}loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims|loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like~loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*

Tidx0*
T0*
N*
_output_shapes

:
Љ
Гloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
’
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsКloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Гloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
_output_shapes

:*

Tdim0*
T0
∞
Жloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchFloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
Н
Иloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1SwitchЖloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchiloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*Y
_classO
MKloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0
Ы
Лloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1yloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
set_operationa-b*
T0*
validate_indices(*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:
Ќ
Гloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeНloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
out_type0*
_output_shapes
: *
T0
£
tloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
Ш
rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualtloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xГloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
ц
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchnloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankiloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*Б
_classw
usloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
ь
gloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergejloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
њ
Mloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergegloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeRloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
_output_shapes
: : *
T0

¶
>loss/Softmax_loss/broadcast_weights/assert_broadcastable/ConstConst*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.*
dtype0
П
@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Щ
@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_2Const*
dtype0*
_output_shapes
: *)
value B BSoftmax_sample_weights:0
О
@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
№
@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_4Const*
dtype0*
_output_shapes
: *l
valuecBa B[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0
Л
@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Ц
Kloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

…
Mloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
«
Mloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityKloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
»
Lloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
°
Iloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
Б
Wloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tJ^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*`
_classV
TRloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
К
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
с
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
ы
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B BSoftmax_sample_weights:0*
dtype0*
_output_shapes
: 
р
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Њ
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *l
valuecBa B[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0
н
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
»
Kloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertRloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchRloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
ю
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*`
_classV
TRloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ъ
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchFloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ш
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchEloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
к
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*U
_classK
IGloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
Е
Yloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fL^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*`
_classV
TRloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
≥
Jloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeYloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Wloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Щ
3loss/Softmax_loss/broadcast_weights/ones_like/ShapeShapeYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsK^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
≈
3loss/Softmax_loss/broadcast_weights/ones_like/ConstConstK^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
я
-loss/Softmax_loss/broadcast_weights/ones_likeFill3loss/Softmax_loss/broadcast_weights/ones_like/Shape3loss/Softmax_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:€€€€€€€€€
Я
#loss/Softmax_loss/broadcast_weightsMulSoftmax_sample_weights-loss/Softmax_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:€€€€€€€€€
 
loss/Softmax_loss/MulMulYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#loss/Softmax_loss/broadcast_weights*
T0*#
_output_shapes
:€€€€€€€€€
c
loss/Softmax_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
М
loss/Softmax_loss/SumSumloss/Softmax_loss/Mulloss/Softmax_loss/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
c
loss/Softmax_loss/Const_2Const*
_output_shapes
:*
valueB: *
dtype0
Ь
loss/Softmax_loss/Sum_1Sum#loss/Softmax_loss/broadcast_weightsloss/Softmax_loss/Const_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
u
loss/Softmax_loss/truedivRealDivloss/Softmax_loss/Sumloss/Softmax_loss/Sum_1*
T0*
_output_shapes
: 
a
loss/Softmax_loss/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
|
loss/Softmax_loss/GreaterGreaterloss/Softmax_loss/Sum_1loss/Softmax_loss/zeros_like*
_output_shapes
: *
T0
Ч
loss/Softmax_loss/SelectSelectloss/Softmax_loss/Greaterloss/Softmax_loss/truedivloss/Softmax_loss/zeros_like*
_output_shapes
: *
T0
\
loss/Softmax_loss/Const_3Const*
_output_shapes
: *
valueB *
dtype0
С
loss/Softmax_loss/MeanMeanloss/Softmax_loss/Selectloss/Softmax_loss/Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
T
loss/mulMul
loss/mul/xloss/Softmax_loss/Mean*
_output_shapes
: *
T0
l
!metrics/acc/Max/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ф
metrics/acc/MaxMaxSoftmax_target!metrics/acc/Max/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( 
g
metrics/acc/ArgMax/dimensionConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ш
metrics/acc/ArgMaxArgMaxSoftmax/Softmaxmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€
y
metrics/acc/CastCastmetrics/acc/ArgMax*

SrcT0	*
Truncate( *

DstT0*#
_output_shapes
:€€€€€€€€€
k
metrics/acc/EqualEqualmetrics/acc/Maxmetrics/acc/Cast*#
_output_shapes
:€€€€€€€€€*
T0
z
metrics/acc/Cast_1Castmetrics/acc/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:€€€€€€€€€
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
metrics/acc/MeanMeanmetrics/acc/Cast_1metrics/acc/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
g
$training/TFOptimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
m
(training/TFOptimizer/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ѓ
#training/TFOptimizer/gradients/FillFill$training/TFOptimizer/gradients/Shape(training/TFOptimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
Х
0training/TFOptimizer/gradients/loss/mul_grad/MulMul#training/TFOptimizer/gradients/Fillloss/Softmax_loss/Mean*
T0*
_output_shapes
: 
Л
2training/TFOptimizer/gradients/loss/mul_grad/Mul_1Mul#training/TFOptimizer/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
≠
=training/TFOptimizer/gradients/loss/mul_grad/tuple/group_depsNoOp1^training/TFOptimizer/gradients/loss/mul_grad/Mul3^training/TFOptimizer/gradients/loss/mul_grad/Mul_1
©
Etraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependencyIdentity0training/TFOptimizer/gradients/loss/mul_grad/Mul>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*C
_class9
75loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul*
_output_shapes
: *
T0
ѓ
Gtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Identity2training/TFOptimizer/gradients/loss/mul_grad/Mul_1>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*E
_class;
97loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul_1
Л
Htraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
П
Btraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/ReshapeReshapeGtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Htraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
Г
@training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
А
?training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/TileTileBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Reshape@training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 
З
Btraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  А?
у
Btraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/truedivRealDiv?training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/TileBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Const_1*
_output_shapes
: *
T0
М
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ц
Ctraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/SelectSelectloss/Softmax_loss/GreaterBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/truedivGtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 
Ш
Etraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/Select_1Selectloss/Softmax_loss/GreaterGtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/zeros_likeBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/truediv*
_output_shapes
: *
T0
г
Mtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/group_depsNoOpD^training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/SelectF^training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/Select_1
п
Utraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/control_dependencyIdentityCtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/SelectN^training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/Select*
_output_shapes
: 
х
Wtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/control_dependency_1IdentityEtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/Select_1N^training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/group_deps*X
_classN
LJloc:@training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/Select_1*
_output_shapes
: *
T0
Ж
Ctraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
И
Etraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
µ
Straining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/ShapeEtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
б
Etraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDivRealDivUtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/control_dependencyloss/Softmax_loss/Sum_1*
_output_shapes
: *
T0
Ґ
Atraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/SumSumEtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDivStraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
З
Etraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/ReshapeReshapeAtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/SumCtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
А
Atraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/NegNegloss/Softmax_loss/Sum*
_output_shapes
: *
T0
ѕ
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDiv_1RealDivAtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Negloss/Softmax_loss/Sum_1*
T0*
_output_shapes
: 
’
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDiv_2RealDivGtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDiv_1loss/Softmax_loss/Sum_1*
T0*
_output_shapes
: 
Й
Atraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/mulMulUtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/control_dependencyGtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDiv_2*
_output_shapes
: *
T0
Ґ
Ctraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Sum_1SumAtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/mulUtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Н
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Reshape_1ReshapeCtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Sum_1Etraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
и
Ntraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/group_depsNoOpF^training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/ReshapeH^training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Reshape_1
х
Vtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/control_dependencyIdentityEtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/ReshapeO^training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/group_deps*X
_classN
LJloc:@training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Reshape*
_output_shapes
: *
T0
ы
Xtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/control_dependency_1IdentityGtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Reshape_1O^training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Reshape_1*
_output_shapes
: 
С
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
†
Atraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/ReshapeReshapeVtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/control_dependencyGtraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
Ф
?training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/ShapeShapeloss/Softmax_loss/Mul*
T0*
out_type0*
_output_shapes
:
К
>training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/TileTileAtraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Reshape?training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
Ў
?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ShapeShapeYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
§
Atraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape_1Shape#loss/Softmax_loss/broadcast_weights*
T0*
out_type0*
_output_shapes
:
©
Otraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ShapeAtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
„
=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/MulMul>training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Tile#loss/Softmax_loss/broadcast_weights*
T0*#
_output_shapes
:€€€€€€€€€
Ф
=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/SumSum=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/MulOtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
И
Atraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ReshapeReshape=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Sum?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
П
?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Mul_1MulYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits>training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Tile*#
_output_shapes
:€€€€€€€€€*
T0
Ъ
?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Sum_1Sum?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Mul_1Qtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
О
Ctraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1Reshape?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Sum_1Atraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
№
Jtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/group_depsNoOpB^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ReshapeD^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1
т
Rtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/control_dependencyIdentityAtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ReshapeK^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*T
_classJ
HFloc:@training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape
ш
Ttraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/control_dependency_1IdentityCtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1K^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
≈
)training/TFOptimizer/gradients/zeros_like	ZerosLike[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:€€€€€€€€€

з
Нtraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:€€€€€€€€€
*і
message®•Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
Ў
Мtraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Є
Иtraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsRtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/control_dependencyМtraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
÷
Бtraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulИtraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsНtraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:€€€€€€€€€
*
T0
Ъ
Etraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/ShapeShapeloss/Softmax_loss/Log*
_output_shapes
:*
T0*
out_type0
Ё
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/ReshapeReshapeБtraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulEtraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/Shape*'
_output_shapes
:€€€€€€€€€
*
T0*
Tshape0
п
Dtraining/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/Reciprocal
Reciprocalloss/Softmax_loss/clip_by_valueH^training/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€

Е
=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mulMulGtraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/ReshapeDtraining/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/Reciprocal*
T0*'
_output_shapes
:€€€€€€€€€

∞
Itraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ShapeShape'loss/Softmax_loss/clip_by_value/Minimum*
out_type0*
_output_shapes
:*
T0
О
Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
»
Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_2Shape=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mul*
T0*
out_type0*
_output_shapes
:
Ф
Otraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
≥
Itraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zerosFillKtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_2Otraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€

‘
Ptraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/Softmax_loss/clip_by_value/Minimumloss/Softmax_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€

«
Ytraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ShapeKtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
в
Jtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SelectSelectPtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/GreaterEqual=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mulItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros*
T0*'
_output_shapes
:€€€€€€€€€

д
Ltraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Select_1SelectPtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/GreaterEqualItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mul*
T0*'
_output_shapes
:€€€€€€€€€

µ
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SumSumJtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SelectYtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
™
Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ReshapeReshapeGtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SumItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape*'
_output_shapes
:€€€€€€€€€
*
T0*
Tshape0
ї
Itraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Sum_1SumLtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Select_1[training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Я
Mtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1ReshapeItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Sum_1Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ъ
Ttraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/group_depsNoOpL^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ReshapeN^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1
Ю
\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependencyIdentityKtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ReshapeU^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/group_deps*
T0*^
_classT
RPloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape*'
_output_shapes
:€€€€€€€€€

У
^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependency_1IdentityMtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1U^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/group_deps*
_output_shapes
: *
T0*`
_classV
TRloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1
†
Qtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ShapeShapeSoftmax/Softmax*
_output_shapes
:*
T0*
out_type0
Ц
Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
п
Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_2Shape\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:
Ь
Wtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ћ
Qtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zerosFillStraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_2Wtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€

Љ
Utraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualSoftmax/Softmaxloss/Softmax_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€

я
atraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ShapeStraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Ц
Rtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/SelectSelectUtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/LessEqual\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependencyQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:€€€€€€€€€

Ш
Ttraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Select_1SelectUtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/LessEqualQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€
*
T0
Ќ
Otraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/SumSumRtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Selectatraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
¬
Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ReshapeReshapeOtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/SumQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:€€€€€€€€€
*
T0*
Tshape0
”
Qtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Sum_1SumTtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Select_1ctraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ј
Utraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Sum_1Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Т
\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_depsNoOpT^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ReshapeV^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1
Њ
dtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependencyIdentityStraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape]^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€
*
T0*f
_class\
ZXloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape
≥
ftraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependency_1IdentityUtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1]^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: 
з
7training/TFOptimizer/gradients/Softmax/Softmax_grad/mulMuldtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependencySoftmax/Softmax*'
_output_shapes
:€€€€€€€€€
*
T0
Ф
Itraining/TFOptimizer/gradients/Softmax/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
С
7training/TFOptimizer/gradients/Softmax/Softmax_grad/SumSum7training/TFOptimizer/gradients/Softmax/Softmax_grad/mulItraining/TFOptimizer/gradients/Softmax/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0*'
_output_shapes
:€€€€€€€€€
П
7training/TFOptimizer/gradients/Softmax/Softmax_grad/subSubdtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependency7training/TFOptimizer/gradients/Softmax/Softmax_grad/Sum*
T0*'
_output_shapes
:€€€€€€€€€

Љ
9training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1Mul7training/TFOptimizer/gradients/Softmax/Softmax_grad/subSoftmax/Softmax*
T0*'
_output_shapes
:€€€€€€€€€

≈
?training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGradBiasAddGrad9training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:

 
Dtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/group_depsNoOp@^training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGrad:^training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1
Џ
Ltraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependencyIdentity9training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1E^training/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1*'
_output_shapes
:€€€€€€€€€

џ
Ntraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependency_1Identity?training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGradE^training/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/group_deps*
T0*R
_classH
FDloc:@training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

Й
9training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMulMatMulLtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependencySoftmax/MatMul/ReadVariableOp*
transpose_a( *(
_output_shapes
:€€€€€€€€€»
*
transpose_b(*
T0
ф
;training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1MatMulflatten/ReshapeLtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	»

*
transpose_b( 
≈
Ctraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/group_depsNoOp:^training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul<^training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1
ў
Ktraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependencyIdentity9training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMulD^training/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€»

÷
Mtraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependency_1Identity;training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1D^training/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/group_deps*
_output_shapes
:	»

*
T0*N
_classD
B@loc:@training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1
Г
9training/TFOptimizer/gradients/flatten/Reshape_grad/ShapeShape
Conv1/Relu*
_output_shapes
:*
T0*
out_type0
Ц
;training/TFOptimizer/gradients/flatten/Reshape_grad/ReshapeReshapeKtraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependency9training/TFOptimizer/gradients/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€
∆
7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGradReluGrad;training/TFOptimizer/gradients/flatten/Reshape_grad/Reshape
Conv1/Relu*
T0*/
_output_shapes
:€€€€€€€€€
Ѕ
=training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGradBiasAddGrad7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0
ƒ
Btraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_depsNoOp>^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad8^training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad
Џ
Jtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependencyIdentity7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGradC^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€
”
Ltraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency_1Identity=training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGradC^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_deps*
T0*P
_classF
DBloc:@training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
ѓ
7training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeNShapeNConv1_inputConv1/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
¶
Dtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput7training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeNConv1/Conv2D/ReadVariableOpJtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*/
_output_shapes
:€€€€€€€€€*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
С
Etraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterConv1_input9training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeN:1Jtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ў
Atraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_depsNoOpF^training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilterE^training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput
т
Itraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependencyIdentityDtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInputB^training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_deps*
T0*W
_classM
KIloc:@training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:€€€€€€€€€
н
Ktraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependency_1IdentityEtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilterB^training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_deps*
T0*X
_classN
LJloc:@training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
o
(training/TFOptimizer/Read/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
x
training/TFOptimizer/IdentityIdentity(training/TFOptimizer/Read/ReadVariableOp*
T0*
_output_shapes
:
∞
.training/TFOptimizer/beta1_power/initial_valueConst*
valueB
 *fff?*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
dtype0*
_output_shapes
: 
Ѕ
 training/TFOptimizer/beta1_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
	container 
К
'training/TFOptimizer/beta1_power/AssignAssign training/TFOptimizer/beta1_power.training/TFOptimizer/beta1_power/initial_value*
use_locking(*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: 
±
%training/TFOptimizer/beta1_power/readIdentity training/TFOptimizer/beta1_power*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
_output_shapes
: 
q
*training/TFOptimizer/Read_1/ReadVariableOpReadVariableOp
Conv1/bias*
_output_shapes
:*
dtype0
|
training/TFOptimizer/Identity_1Identity*training/TFOptimizer/Read_1/ReadVariableOp*
T0*
_output_shapes
:
≤
.training/TFOptimizer/beta2_power/initial_valueConst*
valueB
 *wЊ?*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
dtype0*
_output_shapes
: 
√
 training/TFOptimizer/beta2_power
VariableV2*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
М
'training/TFOptimizer/beta2_power/AssignAssign training/TFOptimizer/beta2_power.training/TFOptimizer/beta2_power/initial_value*
use_locking(*
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
validate_shape(*
_output_shapes
: 
≥
%training/TFOptimizer/beta2_power/readIdentity training/TFOptimizer/beta2_power*
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
_output_shapes
: 
П
:training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOpReadVariableOpConv1/kernel*
dtype0*&
_output_shapes
:
®
/training/TFOptimizer/Conv1/kernel/Adam/IdentityIdentity:training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp*
T0*&
_output_shapes
:
„
#Conv1/kernel/Adam/Initializer/zerosConst*&
_output_shapes
:*%
valueB*    *M
_classC
A?loc:@training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp*
dtype0
ж
Conv1/kernel/AdamVarHandleOp*"
shared_nameConv1/kernel/Adam*M
_classC
A?loc:@training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp*
	container *
shape:*
dtype0*
_output_shapes
: 
¬
2Conv1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel/Adam*M
_classC
A?loc:@training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp*
_output_shapes
: 
ј
Conv1/kernel/Adam/AssignAssignVariableOpConv1/kernel/Adam#Conv1/kernel/Adam/Initializer/zeros*M
_classC
A?loc:@training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp*
dtype0
ќ
%Conv1/kernel/Adam/Read/ReadVariableOpReadVariableOpConv1/kernel/Adam*M
_classC
A?loc:@training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp*
dtype0*&
_output_shapes
:
С
<training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOpReadVariableOpConv1/kernel*
dtype0*&
_output_shapes
:
ђ
1training/TFOptimizer/Conv1/kernel/Adam_1/IdentityIdentity<training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOp*
T0*&
_output_shapes
:
џ
%Conv1/kernel/Adam_1/Initializer/zerosConst*%
valueB*    *O
_classE
CAloc:@training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOp*
dtype0*&
_output_shapes
:
м
Conv1/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameConv1/kernel/Adam_1*O
_classE
CAloc:@training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOp*
	container *
shape:
»
4Conv1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel/Adam_1*O
_classE
CAloc:@training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
»
Conv1/kernel/Adam_1/AssignAssignVariableOpConv1/kernel/Adam_1%Conv1/kernel/Adam_1/Initializer/zeros*O
_classE
CAloc:@training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOp*
dtype0
‘
'Conv1/kernel/Adam_1/Read/ReadVariableOpReadVariableOpConv1/kernel/Adam_1*O
_classE
CAloc:@training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOp*
dtype0*&
_output_shapes
:

8training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
Ш
-training/TFOptimizer/Conv1/bias/Adam/IdentityIdentity8training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
T0*
_output_shapes
:
ї
!Conv1/bias/Adam/Initializer/zerosConst*
valueB*    *K
_classA
?=loc:@training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:
‘
Conv1/bias/AdamVarHandleOp* 
shared_nameConv1/bias/Adam*K
_classA
?=loc:@training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
	container *
shape:*
dtype0*
_output_shapes
: 
Љ
0Conv1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/bias/Adam*K
_classA
?=loc:@training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
_output_shapes
: 
Є
Conv1/bias/Adam/AssignAssignVariableOpConv1/bias/Adam!Conv1/bias/Adam/Initializer/zeros*K
_classA
?=loc:@training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
dtype0
Љ
#Conv1/bias/Adam/Read/ReadVariableOpReadVariableOpConv1/bias/Adam*K
_classA
?=loc:@training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:
Б
:training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
Ь
/training/TFOptimizer/Conv1/bias/Adam_1/IdentityIdentity:training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
_output_shapes
:*
T0
њ
#Conv1/bias/Adam_1/Initializer/zerosConst*
valueB*    *M
_classC
A?loc:@training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:
Џ
Conv1/bias/Adam_1VarHandleOp*"
shared_nameConv1/bias/Adam_1*M
_classC
A?loc:@training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
	container *
shape:*
dtype0*
_output_shapes
: 
¬
2Conv1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/bias/Adam_1*M
_classC
A?loc:@training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
ј
Conv1/bias/Adam_1/AssignAssignVariableOpConv1/bias/Adam_1#Conv1/bias/Adam_1/Initializer/zeros*M
_classC
A?loc:@training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
dtype0
¬
%Conv1/bias/Adam_1/Read/ReadVariableOpReadVariableOpConv1/bias/Adam_1*M
_classC
A?loc:@training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:
М
<training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOpReadVariableOpSoftmax/kernel*
dtype0*
_output_shapes
:	»


•
1training/TFOptimizer/Softmax/kernel/Adam/IdentityIdentity<training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
T0*
_output_shapes
:	»


„
5Softmax/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"H  
   *O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:
Ѕ
+Softmax/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp
Ю
%Softmax/kernel/Adam/Initializer/zerosFill5Softmax/kernel/Adam/Initializer/zeros/shape_as_tensor+Softmax/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
_output_shapes
:	»


е
Softmax/kernel/AdamVarHandleOp*$
shared_nameSoftmax/kernel/Adam*O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
	container *
shape:	»

*
dtype0*
_output_shapes
: 
»
4Softmax/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/kernel/Adam*
_output_shapes
: *O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp
»
Softmax/kernel/Adam/AssignAssignVariableOpSoftmax/kernel/Adam%Softmax/kernel/Adam/Initializer/zeros*O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
dtype0
Ќ
'Softmax/kernel/Adam/Read/ReadVariableOpReadVariableOpSoftmax/kernel/Adam*O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:	»


О
>training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax/kernel*
dtype0*
_output_shapes
:	»


©
3training/TFOptimizer/Softmax/kernel/Adam_1/IdentityIdentity>training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
:	»

*
T0
џ
7Softmax/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"H  
   *Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp
≈
-Softmax/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: 
¶
'Softmax/kernel/Adam_1/Initializer/zerosFill7Softmax/kernel/Adam_1/Initializer/zeros/shape_as_tensor-Softmax/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes
:	»

*
T0*

index_type0*Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp
л
Softmax/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nameSoftmax/kernel/Adam_1*Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
	container *
shape:	»


ќ
6Softmax/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/kernel/Adam_1*Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
–
Softmax/kernel/Adam_1/AssignAssignVariableOpSoftmax/kernel/Adam_1'Softmax/kernel/Adam_1/Initializer/zeros*Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
dtype0
”
)Softmax/kernel/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax/kernel/Adam_1*
_output_shapes
:	»

*Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
dtype0
Г
:training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOpReadVariableOpSoftmax/bias*
dtype0*
_output_shapes
:

Ь
/training/TFOptimizer/Softmax/bias/Adam/IdentityIdentity:training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp*
T0*
_output_shapes
:

њ
#Softmax/bias/Adam/Initializer/zerosConst*
valueB
*    *M
_classC
A?loc:@training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:

Џ
Softmax/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *"
shared_nameSoftmax/bias/Adam*M
_classC
A?loc:@training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp*
	container *
shape:

¬
2Softmax/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/bias/Adam*M
_classC
A?loc:@training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp*
_output_shapes
: 
ј
Softmax/bias/Adam/AssignAssignVariableOpSoftmax/bias/Adam#Softmax/bias/Adam/Initializer/zeros*
dtype0*M
_classC
A?loc:@training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp
¬
%Softmax/bias/Adam/Read/ReadVariableOpReadVariableOpSoftmax/bias/Adam*M
_classC
A?loc:@training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:

Е
<training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax/bias*
dtype0*
_output_shapes
:

†
1training/TFOptimizer/Softmax/bias/Adam_1/IdentityIdentity<training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOp*
_output_shapes
:
*
T0
√
%Softmax/bias/Adam_1/Initializer/zerosConst*
valueB
*    *O
_classE
CAloc:@training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:

а
Softmax/bias/Adam_1VarHandleOp*$
shared_nameSoftmax/bias/Adam_1*O
_classE
CAloc:@training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOp*
	container *
shape:
*
dtype0*
_output_shapes
: 
»
4Softmax/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/bias/Adam_1*O
_classE
CAloc:@training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
»
Softmax/bias/Adam_1/AssignAssignVariableOpSoftmax/bias/Adam_1%Softmax/bias/Adam_1/Initializer/zeros*
dtype0*O
_classE
CAloc:@training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOp
»
'Softmax/bias/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax/bias/Adam_1*
_output_shapes
:
*O
_classE
CAloc:@training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOp*
dtype0
l
'training/TFOptimizer/Adam/learning_rateConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
d
training/TFOptimizer/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
d
training/TFOptimizer/Adam/beta2Const*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
f
!training/TFOptimizer/Adam/epsilonConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
Ц
Atraining/TFOptimizer/Adam/update_Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*
dtype0*&
_output_shapes
:
ґ
6training/TFOptimizer/Adam/update_Conv1/kernel/IdentityIdentityAtraining/TFOptimizer/Adam/update_Conv1/kernel/Read/ReadVariableOp*&
_output_shapes
:*
T0
є
?training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdamResourceApplyAdamConv1/kernelConv1/kernel/AdamConv1/kernel/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonKtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*T
_classJ
HFloc:@training/TFOptimizer/Adam/update_Conv1/kernel/Read/ReadVariableOp*
use_nesterov( 
Ж
?training/TFOptimizer/Adam/update_Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
¶
4training/TFOptimizer/Adam/update_Conv1/bias/IdentityIdentity?training/TFOptimizer/Adam/update_Conv1/bias/Read/ReadVariableOp*
_output_shapes
:*
T0
∞
=training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdamResourceApplyAdam
Conv1/biasConv1/bias/AdamConv1/bias/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonLtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*R
_classH
FDloc:@training/TFOptimizer/Adam/update_Conv1/bias/Read/ReadVariableOp*
use_nesterov( 
У
Ctraining/TFOptimizer/Adam/update_Softmax/kernel/Read/ReadVariableOpReadVariableOpSoftmax/kernel*
dtype0*
_output_shapes
:	»


≥
8training/TFOptimizer/Adam/update_Softmax/kernel/IdentityIdentityCtraining/TFOptimizer/Adam/update_Softmax/kernel/Read/ReadVariableOp*
_output_shapes
:	»

*
T0
≈
Atraining/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdamResourceApplyAdamSoftmax/kernelSoftmax/kernel/AdamSoftmax/kernel/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonMtraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*V
_classL
JHloc:@training/TFOptimizer/Adam/update_Softmax/kernel/Read/ReadVariableOp
К
Atraining/TFOptimizer/Adam/update_Softmax/bias/Read/ReadVariableOpReadVariableOpSoftmax/bias*
dtype0*
_output_shapes
:

™
6training/TFOptimizer/Adam/update_Softmax/bias/IdentityIdentityAtraining/TFOptimizer/Adam/update_Softmax/bias/Read/ReadVariableOp*
_output_shapes
:
*
T0
Љ
?training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamResourceApplyAdamSoftmax/biasSoftmax/bias/AdamSoftmax/bias/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonNtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*T
_classJ
HFloc:@training/TFOptimizer/Adam/update_Softmax/bias/Read/ReadVariableOp*
use_nesterov( 
“
training/TFOptimizer/Adam/mulMul%training/TFOptimizer/beta1_power/readtraining/TFOptimizer/Adam/beta1>^training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamB^training/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
_output_shapes
: 
т
 training/TFOptimizer/Adam/AssignAssign training/TFOptimizer/beta1_powertraining/TFOptimizer/Adam/mul*
use_locking( *
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: 
‘
training/TFOptimizer/Adam/mul_1Mul%training/TFOptimizer/beta2_power/readtraining/TFOptimizer/Adam/beta2>^training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamB^training/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
_output_shapes
: 
І
"training/TFOptimizer/Adam/Assign_1Assign training/TFOptimizer/beta2_powertraining/TFOptimizer/Adam/mul_1*
use_locking( *
T0*l
_classb
`-loc:@training/TFOptimizer/Read/ReadVariableOp/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
validate_shape(*
_output_shapes
: 
ш
 training/TFOptimizer/Adam/updateNoOp!^training/TFOptimizer/Adam/Assign#^training/TFOptimizer/Adam/Assign_1>^training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamB^training/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam
Я
-training/TFOptimizer/Adam/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations!^training/TFOptimizer/Adam/update*
dtype0	*
_output_shapes
: 
~
"training/TFOptimizer/Adam/IdentityIdentity-training/TFOptimizer/Adam/Read/ReadVariableOp*
_output_shapes
: *
T0	
∆
training/TFOptimizer/Adam/ConstConst!^training/TFOptimizer/Adam/update*
value	B	 R*@
_class6
42loc:@training/TFOptimizer/Adam/Read/ReadVariableOp*
dtype0	*
_output_shapes
: 
Є
training/TFOptimizer/AdamAssignAddVariableOpTFOptimizer/iterationstraining/TFOptimizer/Adam/Const*@
_class6
42loc:@training/TFOptimizer/Adam/Read/ReadVariableOp*
dtype0	
U
training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/TFOptimizer/Adam
S
VarIsInitializedOpVarIsInitializedOpSoftmax/bias/Adam*
_output_shapes
: 
S
VarIsInitializedOp_1VarIsInitializedOpConv1/bias/Adam*
_output_shapes
: 
W
VarIsInitializedOp_2VarIsInitializedOpConv1/kernel/Adam_1*
_output_shapes
: 
≤
IsVariableInitializedIsVariableInitialized training/TFOptimizer/beta1_power*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
dtype0*
_output_shapes
: 
R
VarIsInitializedOp_3VarIsInitializedOpSoftmax/kernel*
_output_shapes
: 
N
VarIsInitializedOp_4VarIsInitializedOp
Conv1/bias*
_output_shapes
: 
U
VarIsInitializedOp_5VarIsInitializedOpConv1/bias/Adam_1*
_output_shapes
: 
Y
VarIsInitializedOp_6VarIsInitializedOpSoftmax/kernel/Adam_1*
_output_shapes
: 
ґ
IsVariableInitialized_1IsVariableInitialized training/TFOptimizer/beta2_power*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
dtype0*
_output_shapes
: 
P
VarIsInitializedOp_7VarIsInitializedOpSoftmax/bias*
_output_shapes
: 
U
VarIsInitializedOp_8VarIsInitializedOpConv1/kernel/Adam*
_output_shapes
: 
P
VarIsInitializedOp_9VarIsInitializedOpConv1/kernel*
_output_shapes
: 
X
VarIsInitializedOp_10VarIsInitializedOpSoftmax/kernel/Adam*
_output_shapes
: 
X
VarIsInitializedOp_11VarIsInitializedOpSoftmax/bias/Adam_1*
_output_shapes
: 
[
VarIsInitializedOp_12VarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
Є
initNoOp^Conv1/bias/Adam/Assign^Conv1/bias/Adam_1/Assign^Conv1/bias/Assign^Conv1/kernel/Adam/Assign^Conv1/kernel/Adam_1/Assign^Conv1/kernel/Assign^Softmax/bias/Adam/Assign^Softmax/bias/Adam_1/Assign^Softmax/bias/Assign^Softmax/kernel/Adam/Assign^Softmax/kernel/Adam_1/Assign^Softmax/kernel/Assign^TFOptimizer/iterations/Assign(^training/TFOptimizer/beta1_power/Assign(^training/TFOptimizer/beta2_power/Assign
0

group_depsNoOp	^loss/mul^metrics/acc/Mean
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_a497204d6a8041548d73038dfe7d51fe/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ц
save/SaveV2/tensor_namesConst*
_output_shapes
:*…
valueњBЉB
Conv1/biasBConv1/bias/AdamBConv1/bias/Adam_1BConv1/kernelBConv1/kernel/AdamBConv1/kernel/Adam_1BSoftmax/biasBSoftmax/bias/AdamBSoftmax/bias/Adam_1BSoftmax/kernelBSoftmax/kernel/AdamBSoftmax/kernel/Adam_1BTFOptimizer/iterationsB training/TFOptimizer/beta1_powerB training/TFOptimizer/beta2_power*
dtype0
Б
save/SaveV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ї
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConv1/bias/Read/ReadVariableOp#Conv1/bias/Adam/Read/ReadVariableOp%Conv1/bias/Adam_1/Read/ReadVariableOp Conv1/kernel/Read/ReadVariableOp%Conv1/kernel/Adam/Read/ReadVariableOp'Conv1/kernel/Adam_1/Read/ReadVariableOp Softmax/bias/Read/ReadVariableOp%Softmax/bias/Adam/Read/ReadVariableOp'Softmax/bias/Adam_1/Read/ReadVariableOp"Softmax/kernel/Read/ReadVariableOp'Softmax/kernel/Adam/Read/ReadVariableOp)Softmax/kernel/Adam_1/Read/ReadVariableOp*TFOptimizer/iterations/Read/ReadVariableOp training/TFOptimizer/beta1_power training/TFOptimizer/beta2_power*
dtypes
2	
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
Щ
save/RestoreV2/tensor_namesConst*…
valueњBЉB
Conv1/biasBConv1/bias/AdamBConv1/bias/Adam_1BConv1/kernelBConv1/kernel/AdamBConv1/kernel/Adam_1BSoftmax/biasBSoftmax/bias/AdamBSoftmax/bias/Adam_1BSoftmax/kernelBSoftmax/kernel/AdamBSoftmax/kernel/Adam_1BTFOptimizer/iterationsB training/TFOptimizer/beta1_powerB training/TFOptimizer/beta2_power*
dtype0*
_output_shapes
:
Д
save/RestoreV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
÷
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2	*P
_output_shapes>
<:::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
S
save/AssignVariableOpAssignVariableOp
Conv1/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
Z
save/AssignVariableOp_1AssignVariableOpConv1/bias/Adamsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
\
save/AssignVariableOp_2AssignVariableOpConv1/bias/Adam_1save/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
W
save/AssignVariableOp_3AssignVariableOpConv1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
\
save/AssignVariableOp_4AssignVariableOpConv1/kernel/Adamsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
^
save/AssignVariableOp_5AssignVariableOpConv1/kernel/Adam_1save/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
_output_shapes
:*
T0
W
save/AssignVariableOp_6AssignVariableOpSoftmax/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
\
save/AssignVariableOp_7AssignVariableOpSoftmax/bias/Adamsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
_output_shapes
:*
T0
^
save/AssignVariableOp_8AssignVariableOpSoftmax/bias/Adam_1save/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
_output_shapes
:*
T0
Z
save/AssignVariableOp_9AssignVariableOpSoftmax/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0
`
save/AssignVariableOp_10AssignVariableOpSoftmax/kernel/Adamsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
_output_shapes
:*
T0
b
save/AssignVariableOp_11AssignVariableOpSoftmax/kernel/Adam_1save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0	*
_output_shapes
:
c
save/AssignVariableOp_12AssignVariableOpTFOptimizer/iterationssave/Identity_13*
dtype0	
—
save/AssignAssign training/TFOptimizer/beta1_powersave/RestoreV2:13*
_output_shapes
: *
use_locking(*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
validate_shape(
’
save/Assign_1Assign training/TFOptimizer/beta2_powersave/RestoreV2:14*
use_locking(*
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
validate_shape(*
_output_shapes
: 
Л
save/restore_shardNoOp^save/Assign^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9^save/Assign_1
-
save/restore_allNoOp^save/restore_shard
А
Conv1_input_1Placeholder*$
shape:€€€€€€€€€*
dtype0*/
_output_shapes
:€€€€€€€€€
Ђ
/Conv1_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *!
_class
loc:@Conv1_1/kernel*
dtype0*
_output_shapes
:
Х
-Conv1_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *HYЛЊ*!
_class
loc:@Conv1_1/kernel*
dtype0
Х
-Conv1_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *HYЛ>*!
_class
loc:@Conv1_1/kernel*
dtype0*
_output_shapes
: 
у
7Conv1_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/Conv1_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*!
_class
loc:@Conv1_1/kernel*
seed2 
÷
-Conv1_1/kernel/Initializer/random_uniform/subSub-Conv1_1/kernel/Initializer/random_uniform/max-Conv1_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@Conv1_1/kernel*
_output_shapes
: 
р
-Conv1_1/kernel/Initializer/random_uniform/mulMul7Conv1_1/kernel/Initializer/random_uniform/RandomUniform-Conv1_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@Conv1_1/kernel*&
_output_shapes
:*
T0
в
)Conv1_1/kernel/Initializer/random_uniformAdd-Conv1_1/kernel/Initializer/random_uniform/mul-Conv1_1/kernel/Initializer/random_uniform/min*!
_class
loc:@Conv1_1/kernel*&
_output_shapes
:*
T0
і
Conv1_1/kernelVarHandleOp*
shared_nameConv1_1/kernel*!
_class
loc:@Conv1_1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
m
/Conv1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1_1/kernel*
_output_shapes
: 
Ф
Conv1_1/kernel/AssignAssignVariableOpConv1_1/kernel)Conv1_1/kernel/Initializer/random_uniform*!
_class
loc:@Conv1_1/kernel*
dtype0
Ь
"Conv1_1/kernel/Read/ReadVariableOpReadVariableOpConv1_1/kernel*!
_class
loc:@Conv1_1/kernel*
dtype0*&
_output_shapes
:
М
Conv1_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@Conv1_1/bias
Ґ
Conv1_1/biasVarHandleOp*
shared_nameConv1_1/bias*
_class
loc:@Conv1_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
i
-Conv1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1_1/bias*
_output_shapes
: 
Г
Conv1_1/bias/AssignAssignVariableOpConv1_1/biasConv1_1/bias/Initializer/zeros*
_class
loc:@Conv1_1/bias*
dtype0
К
 Conv1_1/bias/Read/ReadVariableOpReadVariableOpConv1_1/bias*
_class
loc:@Conv1_1/bias*
dtype0*
_output_shapes
:
f
Conv1_1/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
t
Conv1_1/Conv2D/ReadVariableOpReadVariableOpConv1_1/kernel*
dtype0*&
_output_shapes
:
п
Conv1_1/Conv2DConv2DConv1_input_1Conv1_1/Conv2D/ReadVariableOp*/
_output_shapes
:€€€€€€€€€*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
g
Conv1_1/BiasAdd/ReadVariableOpReadVariableOpConv1_1/bias*
_output_shapes
:*
dtype0
Ы
Conv1_1/BiasAddBiasAddConv1_1/Conv2DConv1_1/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€*
T0
_
Conv1_1/ReluReluConv1_1/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€
[
flatten_1/ShapeShapeConv1_1/Relu*
T0*
out_type0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ђ
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
d
flatten_1/Reshape/shape/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Н
flatten_1/Reshape/shapePackflatten_1/strided_sliceflatten_1/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
Д
flatten_1/ReshapeReshapeConv1_1/Reluflatten_1/Reshape/shape*
Tshape0*(
_output_shapes
:€€€€€€€€€»
*
T0
І
1Softmax_1/kernel/Initializer/random_uniform/shapeConst*
valueB"H  
   *#
_class
loc:@Softmax_1/kernel*
dtype0*
_output_shapes
:
Щ
/Softmax_1/kernel/Initializer/random_uniform/minConst*
valueB
 *7оЗљ*#
_class
loc:@Softmax_1/kernel*
dtype0*
_output_shapes
: 
Щ
/Softmax_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *7оЗ=*#
_class
loc:@Softmax_1/kernel*
dtype0*
_output_shapes
: 
т
9Softmax_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1Softmax_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	»

*

seed *
T0*#
_class
loc:@Softmax_1/kernel*
seed2 
ё
/Softmax_1/kernel/Initializer/random_uniform/subSub/Softmax_1/kernel/Initializer/random_uniform/max/Softmax_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@Softmax_1/kernel
с
/Softmax_1/kernel/Initializer/random_uniform/mulMul9Softmax_1/kernel/Initializer/random_uniform/RandomUniform/Softmax_1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@Softmax_1/kernel*
_output_shapes
:	»


г
+Softmax_1/kernel/Initializer/random_uniformAdd/Softmax_1/kernel/Initializer/random_uniform/mul/Softmax_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@Softmax_1/kernel*
_output_shapes
:	»


≥
Softmax_1/kernelVarHandleOp*!
shared_nameSoftmax_1/kernel*#
_class
loc:@Softmax_1/kernel*
	container *
shape:	»

*
dtype0*
_output_shapes
: 
q
1Softmax_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax_1/kernel*
_output_shapes
: 
Ь
Softmax_1/kernel/AssignAssignVariableOpSoftmax_1/kernel+Softmax_1/kernel/Initializer/random_uniform*#
_class
loc:@Softmax_1/kernel*
dtype0
Ы
$Softmax_1/kernel/Read/ReadVariableOpReadVariableOpSoftmax_1/kernel*#
_class
loc:@Softmax_1/kernel*
dtype0*
_output_shapes
:	»


Р
 Softmax_1/bias/Initializer/zerosConst*
valueB
*    *!
_class
loc:@Softmax_1/bias*
dtype0*
_output_shapes
:

®
Softmax_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameSoftmax_1/bias*!
_class
loc:@Softmax_1/bias*
	container *
shape:

m
/Softmax_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax_1/bias*
_output_shapes
: 
Л
Softmax_1/bias/AssignAssignVariableOpSoftmax_1/bias Softmax_1/bias/Initializer/zeros*
dtype0*!
_class
loc:@Softmax_1/bias
Р
"Softmax_1/bias/Read/ReadVariableOpReadVariableOpSoftmax_1/bias*!
_class
loc:@Softmax_1/bias*
dtype0*
_output_shapes
:

q
Softmax_1/MatMul/ReadVariableOpReadVariableOpSoftmax_1/kernel*
dtype0*
_output_shapes
:	»


¶
Softmax_1/MatMulMatMulflatten_1/ReshapeSoftmax_1/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b( *
T0
k
 Softmax_1/BiasAdd/ReadVariableOpReadVariableOpSoftmax_1/bias*
dtype0*
_output_shapes
:

Щ
Softmax_1/BiasAddBiasAddSoftmax_1/MatMul Softmax_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€

a
Softmax_1/SoftmaxSoftmaxSoftmax_1/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€

°
2TFOptimizer_1/iterations/Initializer/initial_valueConst*
value	B	 R *+
_class!
loc:@TFOptimizer_1/iterations*
dtype0	*
_output_shapes
: 
¬
TFOptimizer_1/iterationsVarHandleOp*
	container *
shape: *
dtype0	*
_output_shapes
: *)
shared_nameTFOptimizer_1/iterations*+
_class!
loc:@TFOptimizer_1/iterations
Б
9TFOptimizer_1/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpTFOptimizer_1/iterations*
_output_shapes
: 
ї
TFOptimizer_1/iterations/AssignAssignVariableOpTFOptimizer_1/iterations2TFOptimizer_1/iterations/Initializer/initial_value*+
_class!
loc:@TFOptimizer_1/iterations*
dtype0	
™
,TFOptimizer_1/iterations/Read/ReadVariableOpReadVariableOpTFOptimizer_1/iterations*+
_class!
loc:@TFOptimizer_1/iterations*
dtype0	*
_output_shapes
: 
Е
Softmax_target_1Placeholder*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*%
shape:€€€€€€€€€€€€€€€€€€
T
Const_1Const*
_output_shapes
:*
valueB*  А?*
dtype0
З
Softmax_sample_weights_1PlaceholderWithDefaultConst_1*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
^
loss_1/Softmax_loss/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *Хњ÷3
^
loss_1/Softmax_loss/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
u
loss_1/Softmax_loss/subSubloss_1/Softmax_loss/sub/xloss_1/Softmax_loss/Const*
_output_shapes
: *
T0
Т
)loss_1/Softmax_loss/clip_by_value/MinimumMinimumSoftmax_1/Softmaxloss_1/Softmax_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€

§
!loss_1/Softmax_loss/clip_by_valueMaximum)loss_1/Softmax_loss/clip_by_value/Minimumloss_1/Softmax_loss/Const*'
_output_shapes
:€€€€€€€€€
*
T0
s
loss_1/Softmax_loss/LogLog!loss_1/Softmax_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
*
T0
t
!loss_1/Softmax_loss/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ч
loss_1/Softmax_loss/ReshapeReshapeSoftmax_target_1!loss_1/Softmax_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
К
loss_1/Softmax_loss/CastCastloss_1/Softmax_loss/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:€€€€€€€€€
t
#loss_1/Softmax_loss/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"€€€€
   
¶
loss_1/Softmax_loss/Reshape_1Reshapeloss_1/Softmax_loss/Log#loss_1/Softmax_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

Х
=loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss_1/Softmax_loss/Cast*
T0	*
out_type0*
_output_shapes
:
Л
[loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss_1/Softmax_loss/Reshape_1loss_1/Softmax_loss/Cast*
T0*
Tlabels0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€

†
Hloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeSoftmax_sample_weights_1*
T0*
out_type0*
_output_shapes
:
Й
Gloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
в
Gloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeShape[loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
И
Floss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
И
Floss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
dtype0*
_output_shapes
: *
value	B : 
€
Dloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarEqualFloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar/xGloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
Й
Ploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchDloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarDloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
”
Rloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityRloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
—
Rloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityPloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
_output_shapes
: *
T0

ƒ
Qloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityDloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
с
Rloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchDloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarQloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0
*W
_classM
KIloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar
О
ploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualwloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchyloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
_output_shapes
: *
T0
Ъ
wloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchFloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/rankQloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 
Ю
yloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchGloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rankQloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Z
_classP
NLloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
ы
jloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
З
lloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitylloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
Е
lloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityjloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
К
kloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

Њ
Гloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstm^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
’
loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsКloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Гloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
і
Жloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchGloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeQloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*Z
_classP
NLloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape
Р
Иloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1SwitchЖloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchkloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*Z
_classP
NLloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape
≈
Дloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstm^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
ґ
Дloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstm^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ѕ
~loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillДloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeДloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
≤
Аloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstm^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
…
{loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims~loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeАloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
ј
Еloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstm^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
№
Бloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsМloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Еloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
_output_shapes

:*

Tdim0*
T0
Є
Иloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchHloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeQloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*[
_classQ
OMloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
Х
Кloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1SwitchИloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchkloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*[
_classQ
OMloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape
Ґ
Нloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationБloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1{loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*
validate_indices(*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
set_operationa-b
—
Еloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeПloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
І
vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstm^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
Ю
tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualvloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xЕloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
ю
lloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankkloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*Г
_classy
wuloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
В
iloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergelloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
≈
Oloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergeiloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeTloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
®
@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
С
Bloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/Const_1Const*
dtype0*
_output_shapes
: *
valueB Bweights.shape=
Э
Bloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/Const_2Const*+
value"B  BSoftmax_sample_weights_1:0*
dtype0*
_output_shapes
: 
Р
Bloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/Const_3Const*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
а
Bloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/Const_4Const*n
valueeBc B]loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
Н
Bloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Ь
Mloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchOloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeOloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
Ќ
Oloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityOloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ћ
Oloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityMloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
ћ
Nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityOloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
•
Kloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpP^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
Й
Yloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityOloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tL^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*b
_classX
VTloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
О
Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstP^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
х
Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstP^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Б
Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstP^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*+
value"B  BSoftmax_sample_weights_1:0*
dtype0*
_output_shapes
: 
ф
Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstP^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
ƒ
Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstP^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*n
valueeBc B]loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
с
Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstP^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
ё
Mloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertTloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchTloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
Ж
Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchOloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeNloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*b
_classX
VTloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
В
Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchHloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeNloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*[
_classQ
OMloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
А
Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchGloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeNloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Z
_classP
NLloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
т
Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchDloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarNloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*W
_classM
KIloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
Н
[loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityOloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fN^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*b
_classX
VTloc:@loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
є
Lloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMerge[loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Yloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Я
5loss_1/Softmax_loss/broadcast_weights/ones_like/ShapeShape[loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsM^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
…
5loss_1/Softmax_loss/broadcast_weights/ones_like/ConstConstM^loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
е
/loss_1/Softmax_loss/broadcast_weights/ones_likeFill5loss_1/Softmax_loss/broadcast_weights/ones_like/Shape5loss_1/Softmax_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:€€€€€€€€€*
T0*

index_type0
•
%loss_1/Softmax_loss/broadcast_weightsMulSoftmax_sample_weights_1/loss_1/Softmax_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:€€€€€€€€€
–
loss_1/Softmax_loss/MulMul[loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits%loss_1/Softmax_loss/broadcast_weights*
T0*#
_output_shapes
:€€€€€€€€€
e
loss_1/Softmax_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Т
loss_1/Softmax_loss/SumSumloss_1/Softmax_loss/Mulloss_1/Softmax_loss/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
e
loss_1/Softmax_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Ґ
loss_1/Softmax_loss/Sum_1Sum%loss_1/Softmax_loss/broadcast_weightsloss_1/Softmax_loss/Const_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
{
loss_1/Softmax_loss/truedivRealDivloss_1/Softmax_loss/Sumloss_1/Softmax_loss/Sum_1*
T0*
_output_shapes
: 
c
loss_1/Softmax_loss/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
В
loss_1/Softmax_loss/GreaterGreaterloss_1/Softmax_loss/Sum_1loss_1/Softmax_loss/zeros_like*
T0*
_output_shapes
: 
Я
loss_1/Softmax_loss/SelectSelectloss_1/Softmax_loss/Greaterloss_1/Softmax_loss/truedivloss_1/Softmax_loss/zeros_like*
T0*
_output_shapes
: 
^
loss_1/Softmax_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
Ч
loss_1/Softmax_loss/MeanMeanloss_1/Softmax_loss/Selectloss_1/Softmax_loss/Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Q
loss_1/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Z

loss_1/mulMulloss_1/mul/xloss_1/Softmax_loss/Mean*
T0*
_output_shapes
: 
n
#metrics_1/acc/Max/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ъ
metrics_1/acc/MaxMaxSoftmax_target_1#metrics_1/acc/Max/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
i
metrics_1/acc/ArgMax/dimensionConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ю
metrics_1/acc/ArgMaxArgMaxSoftmax_1/Softmaxmetrics_1/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€
}
metrics_1/acc/CastCastmetrics_1/acc/ArgMax*

SrcT0	*
Truncate( *

DstT0*#
_output_shapes
:€€€€€€€€€
q
metrics_1/acc/EqualEqualmetrics_1/acc/Maxmetrics_1/acc/Cast*#
_output_shapes
:€€€€€€€€€*
T0
~
metrics_1/acc/Cast_1Castmetrics_1/acc/Equal*
Truncate( *

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0

]
metrics_1/acc/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Г
metrics_1/acc/MeanMeanmetrics_1/acc/Cast_1metrics_1/acc/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
i
&training_1/TFOptimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
o
*training_1/TFOptimizer/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
і
%training_1/TFOptimizer/gradients/FillFill&training_1/TFOptimizer/gradients/Shape*training_1/TFOptimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
Э
4training_1/TFOptimizer/gradients/loss_1/mul_grad/MulMul%training_1/TFOptimizer/gradients/Fillloss_1/Softmax_loss/Mean*
_output_shapes
: *
T0
У
6training_1/TFOptimizer/gradients/loss_1/mul_grad/Mul_1Mul%training_1/TFOptimizer/gradients/Fillloss_1/mul/x*
T0*
_output_shapes
: 
є
Atraining_1/TFOptimizer/gradients/loss_1/mul_grad/tuple/group_depsNoOp5^training_1/TFOptimizer/gradients/loss_1/mul_grad/Mul7^training_1/TFOptimizer/gradients/loss_1/mul_grad/Mul_1
є
Itraining_1/TFOptimizer/gradients/loss_1/mul_grad/tuple/control_dependencyIdentity4training_1/TFOptimizer/gradients/loss_1/mul_grad/MulB^training_1/TFOptimizer/gradients/loss_1/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@training_1/TFOptimizer/gradients/loss_1/mul_grad/Mul*
_output_shapes
: 
њ
Ktraining_1/TFOptimizer/gradients/loss_1/mul_grad/tuple/control_dependency_1Identity6training_1/TFOptimizer/gradients/loss_1/mul_grad/Mul_1B^training_1/TFOptimizer/gradients/loss_1/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@training_1/TFOptimizer/gradients/loss_1/mul_grad/Mul_1*
_output_shapes
: 
П
Ltraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
Ы
Ftraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/ReshapeReshapeKtraining_1/TFOptimizer/gradients/loss_1/mul_grad/tuple/control_dependency_1Ltraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
З
Dtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB 
М
Ctraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/TileTileFtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/ReshapeDtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/Const*
T0*
_output_shapes
: *

Tmultiples0
Л
Ftraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/Const_1Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
€
Ftraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/truedivRealDivCtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/TileFtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/Const_1*
T0*
_output_shapes
: 
Р
Ktraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
Gtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/SelectSelectloss_1/Softmax_loss/GreaterFtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/truedivKtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 
¶
Itraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/Select_1Selectloss_1/Softmax_loss/GreaterKtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/zeros_likeFtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mean_grad/truediv*
T0*
_output_shapes
: 
п
Qtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/tuple/group_depsNoOpH^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/SelectJ^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/Select_1
€
Ytraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/tuple/control_dependencyIdentityGtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/SelectR^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/Select*
_output_shapes
: 
Е
[training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/tuple/control_dependency_1IdentityItraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/Select_1R^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/tuple/group_deps*
T0*\
_classR
PNloc:@training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/Select_1*
_output_shapes
: 
К
Gtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
М
Itraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ѕ
Wtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsGtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/ShapeItraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
л
Itraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/RealDivRealDivYtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/tuple/control_dependencyloss_1/Softmax_loss/Sum_1*
T0*
_output_shapes
: 
Ѓ
Etraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/SumSumItraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/RealDivWtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
У
Itraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/ReshapeReshapeEtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/SumGtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ж
Etraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/NegNegloss_1/Softmax_loss/Sum*
T0*
_output_shapes
: 
ў
Ktraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/RealDiv_1RealDivEtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Negloss_1/Softmax_loss/Sum_1*
T0*
_output_shapes
: 
я
Ktraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/RealDiv_2RealDivKtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/RealDiv_1loss_1/Softmax_loss/Sum_1*
T0*
_output_shapes
: 
Х
Etraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/mulMulYtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Select_grad/tuple/control_dependencyKtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/RealDiv_2*
T0*
_output_shapes
: 
Ѓ
Gtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Sum_1SumEtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/mulYtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Щ
Ktraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Reshape_1ReshapeGtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Sum_1Itraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ф
Rtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/tuple/group_depsNoOpJ^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/ReshapeL^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Reshape_1
Е
Ztraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/tuple/control_dependencyIdentityItraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/ReshapeS^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/tuple/group_deps*
T0*\
_classR
PNloc:@training_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Reshape*
_output_shapes
: 
Л
\training_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/tuple/control_dependency_1IdentityKtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Reshape_1S^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@training_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/Reshape_1
Х
Ktraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ђ
Etraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Sum_grad/ReshapeReshapeZtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/truediv_grad/tuple/control_dependencyKtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Ъ
Ctraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Sum_grad/ShapeShapeloss_1/Softmax_loss/Mul*
T0*
out_type0*
_output_shapes
:
Ц
Btraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Sum_grad/TileTileEtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Sum_grad/ReshapeCtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Sum_grad/Shape*
T0*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
ё
Ctraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/ShapeShape[loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
™
Etraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Shape_1Shape%loss_1/Softmax_loss/broadcast_weights*
_output_shapes
:*
T0*
out_type0
µ
Straining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/ShapeEtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
б
Atraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/MulMulBtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Sum_grad/Tile%loss_1/Softmax_loss/broadcast_weights*
T0*#
_output_shapes
:€€€€€€€€€
†
Atraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/SumSumAtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/MulStraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ф
Etraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/ReshapeReshapeAtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/SumCtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Щ
Ctraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Mul_1Mul[loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsBtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Sum_grad/Tile*
T0*#
_output_shapes
:€€€€€€€€€
¶
Ctraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Sum_1SumCtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Mul_1Utraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ъ
Gtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Reshape_1ReshapeCtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Sum_1Etraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
и
Ntraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/tuple/group_depsNoOpF^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/ReshapeH^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Reshape_1
В
Vtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/tuple/control_dependencyIdentityEtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/ReshapeO^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*X
_classN
LJloc:@training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Reshape
И
Xtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/tuple/control_dependency_1IdentityGtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Reshape_1O^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
…
+training_1/TFOptimizer/gradients/zeros_like	ZerosLike]loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:€€€€€€€€€

н
Сtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient]loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:€€€€€€€€€
*і
message®•Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
№
Рtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ƒ
Мtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsVtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Mul_grad/tuple/control_dependencyРtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
в
Еtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulМtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsСtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:€€€€€€€€€

†
Itraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Reshape_1_grad/ShapeShapeloss_1/Softmax_loss/Log*
T0*
out_type0*
_output_shapes
:
й
Ktraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Reshape_1_grad/ReshapeReshapeЕtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulItraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

щ
Htraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Log_grad/Reciprocal
Reciprocal!loss_1/Softmax_loss/clip_by_valueL^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/Reshape_1_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€

С
Atraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Log_grad/mulMulKtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Reshape_1_grad/ReshapeHtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Log_grad/Reciprocal*
T0*'
_output_shapes
:€€€€€€€€€

ґ
Mtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/ShapeShape)loss_1/Softmax_loss/clip_by_value/Minimum*
_output_shapes
:*
T0*
out_type0
Т
Otraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
–
Otraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Shape_2ShapeAtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Log_grad/mul*
T0*
out_type0*
_output_shapes
:
Ш
Straining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
њ
Mtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/zerosFillOtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Shape_2Straining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€

№
Ttraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/GreaterEqualGreaterEqual)loss_1/Softmax_loss/clip_by_value/Minimumloss_1/Softmax_loss/Const*'
_output_shapes
:€€€€€€€€€
*
T0
”
]training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsMtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/ShapeOtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
т
Ntraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/SelectSelectTtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/GreaterEqualAtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Log_grad/mulMtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/zeros*
T0*'
_output_shapes
:€€€€€€€€€

ф
Ptraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Select_1SelectTtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/GreaterEqualMtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/zerosAtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/Log_grad/mul*
T0*'
_output_shapes
:€€€€€€€€€

Ѕ
Ktraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/SumSumNtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Select]training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ґ
Otraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/ReshapeReshapeKtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/SumMtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

«
Mtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Sum_1SumPtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Select_1_training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ђ
Qtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Reshape_1ReshapeMtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Sum_1Otraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ж
Xtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/tuple/group_depsNoOpP^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/ReshapeR^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Reshape_1
Ѓ
`training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/tuple/control_dependencyIdentityOtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/ReshapeY^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€
*
T0*b
_classX
VTloc:@training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Reshape
£
btraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/tuple/control_dependency_1IdentityQtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Reshape_1Y^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/Reshape_1*
_output_shapes
: 
¶
Utraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/ShapeShapeSoftmax_1/Softmax*
T0*
out_type0*
_output_shapes
:
Ъ
Wtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
ч
Wtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Shape_2Shape`training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/tuple/control_dependency*
_output_shapes
:*
T0*
out_type0
†
[training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
„
Utraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/zerosFillWtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Shape_2[training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:€€€€€€€€€
*
T0*

index_type0
ƒ
Ytraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualSoftmax_1/Softmaxloss_1/Softmax_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€

л
etraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsUtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/ShapeWtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
¶
Vtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/SelectSelectYtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/LessEqual`training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/tuple/control_dependencyUtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:€€€€€€€€€

®
Xtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Select_1SelectYtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/LessEqualUtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/zeros`training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€

ў
Straining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/SumSumVtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Selectetraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ќ
Wtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/ReshapeReshapeStraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/SumUtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

я
Utraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Sum_1SumXtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Select_1gtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
√
Ytraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeUtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Sum_1Wtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
Ю
`training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_depsNoOpX^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/ReshapeZ^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1
ќ
htraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependencyIdentityWtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Reshapea^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_deps*
T0*j
_class`
^\loc:@training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:€€€€€€€€€

√
jtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependency_1IdentityYtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1a^training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_deps*
_output_shapes
: *
T0*l
_classb
`^loc:@training_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1
с
;training_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/mulMulhtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependencySoftmax_1/Softmax*
T0*'
_output_shapes
:€€€€€€€€€

Ш
Mtraining_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
Э
;training_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/SumSum;training_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/mulMtraining_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/Sum/reduction_indices*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims(
Ы
;training_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/subSubhtraining_1/TFOptimizer/gradients/loss_1/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependency;training_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/Sum*
T0*'
_output_shapes
:€€€€€€€€€

∆
=training_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/mul_1Mul;training_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/subSoftmax_1/Softmax*
T0*'
_output_shapes
:€€€€€€€€€

Ќ
Ctraining_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/BiasAddGradBiasAddGrad=training_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/mul_1*
data_formatNHWC*
_output_shapes
:
*
T0
÷
Htraining_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/tuple/group_depsNoOpD^training_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/BiasAddGrad>^training_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/mul_1
к
Ptraining_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/tuple/control_dependencyIdentity=training_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/mul_1I^training_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/tuple/group_deps*
T0*P
_classF
DBloc:@training_1/TFOptimizer/gradients/Softmax_1/Softmax_grad/mul_1*'
_output_shapes
:€€€€€€€€€

л
Rtraining_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/tuple/control_dependency_1IdentityCtraining_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/BiasAddGradI^training_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

У
=training_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/MatMulMatMulPtraining_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/tuple/control_dependencySoftmax_1/MatMul/ReadVariableOp*
T0*
transpose_a( *(
_output_shapes
:€€€€€€€€€»
*
transpose_b(
ю
?training_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/MatMul_1MatMulflatten_1/ReshapePtraining_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	»

*
transpose_b( *
T0
—
Gtraining_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/tuple/group_depsNoOp>^training_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/MatMul@^training_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/MatMul_1
й
Otraining_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/tuple/control_dependencyIdentity=training_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/MatMulH^training_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/tuple/group_deps*
T0*P
_classF
DBloc:@training_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€»

ж
Qtraining_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/tuple/control_dependency_1Identity?training_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/MatMul_1H^training_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@training_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/MatMul_1*
_output_shapes
:	»


Й
=training_1/TFOptimizer/gradients/flatten_1/Reshape_grad/ShapeShapeConv1_1/Relu*
_output_shapes
:*
T0*
out_type0
Ґ
?training_1/TFOptimizer/gradients/flatten_1/Reshape_grad/ReshapeReshapeOtraining_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/tuple/control_dependency=training_1/TFOptimizer/gradients/flatten_1/Reshape_grad/Shape*/
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
–
;training_1/TFOptimizer/gradients/Conv1_1/Relu_grad/ReluGradReluGrad?training_1/TFOptimizer/gradients/flatten_1/Reshape_grad/ReshapeConv1_1/Relu*
T0*/
_output_shapes
:€€€€€€€€€
…
Atraining_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/BiasAddGradBiasAddGrad;training_1/TFOptimizer/gradients/Conv1_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
–
Ftraining_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/tuple/group_depsNoOpB^training_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/BiasAddGrad<^training_1/TFOptimizer/gradients/Conv1_1/Relu_grad/ReluGrad
к
Ntraining_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/tuple/control_dependencyIdentity;training_1/TFOptimizer/gradients/Conv1_1/Relu_grad/ReluGradG^training_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/tuple/group_deps*
T0*N
_classD
B@loc:@training_1/TFOptimizer/gradients/Conv1_1/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€
г
Ptraining_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/tuple/control_dependency_1IdentityAtraining_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/BiasAddGradG^training_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@training_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ј
;training_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/ShapeNShapeNConv1_input_1Conv1_1/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
і
Htraining_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;training_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/ShapeNConv1_1/Conv2D/ReadVariableOpNtraining_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:€€€€€€€€€
Я
Itraining_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterConv1_input_1=training_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/ShapeN:1Ntraining_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
д
Etraining_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/tuple/group_depsNoOpJ^training_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/Conv2DBackpropFilterI^training_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/Conv2DBackpropInput
В
Mtraining_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/tuple/control_dependencyIdentityHtraining_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/Conv2DBackpropInputF^training_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€*
T0*[
_classQ
OMloc:@training_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/Conv2DBackpropInput
э
Otraining_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/tuple/control_dependency_1IdentityItraining_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/Conv2DBackpropFilterF^training_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/tuple/group_deps*
T0*\
_classR
PNloc:@training_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
s
*training_1/TFOptimizer/Read/ReadVariableOpReadVariableOpConv1_1/bias*
dtype0*
_output_shapes
:
|
training_1/TFOptimizer/IdentityIdentity*training_1/TFOptimizer/Read/ReadVariableOp*
_output_shapes
:*
T0
і
0training_1/TFOptimizer/beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*=
_class3
1/loc:@training_1/TFOptimizer/Read/ReadVariableOp
≈
"training_1/TFOptimizer/beta1_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *=
_class3
1/loc:@training_1/TFOptimizer/Read/ReadVariableOp
Т
)training_1/TFOptimizer/beta1_power/AssignAssign"training_1/TFOptimizer/beta1_power0training_1/TFOptimizer/beta1_power/initial_value*
use_locking(*
T0*=
_class3
1/loc:@training_1/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: 
Ј
'training_1/TFOptimizer/beta1_power/readIdentity"training_1/TFOptimizer/beta1_power*
T0*=
_class3
1/loc:@training_1/TFOptimizer/Read/ReadVariableOp*
_output_shapes
: 
u
,training_1/TFOptimizer/Read_1/ReadVariableOpReadVariableOpConv1_1/bias*
dtype0*
_output_shapes
:
А
!training_1/TFOptimizer/Identity_1Identity,training_1/TFOptimizer/Read_1/ReadVariableOp*
T0*
_output_shapes
:
ґ
0training_1/TFOptimizer/beta2_power/initial_valueConst*
valueB
 *wЊ?*?
_class5
31loc:@training_1/TFOptimizer/Read_1/ReadVariableOp*
dtype0*
_output_shapes
: 
«
"training_1/TFOptimizer/beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *?
_class5
31loc:@training_1/TFOptimizer/Read_1/ReadVariableOp*
	container *
shape: 
Ф
)training_1/TFOptimizer/beta2_power/AssignAssign"training_1/TFOptimizer/beta2_power0training_1/TFOptimizer/beta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*?
_class5
31loc:@training_1/TFOptimizer/Read_1/ReadVariableOp
є
'training_1/TFOptimizer/beta2_power/readIdentity"training_1/TFOptimizer/beta2_power*
_output_shapes
: *
T0*?
_class5
31loc:@training_1/TFOptimizer/Read_1/ReadVariableOp
Х
>training_1/TFOptimizer/Conv1_1/kernel/Adam/Read/ReadVariableOpReadVariableOpConv1_1/kernel*
dtype0*&
_output_shapes
:
∞
3training_1/TFOptimizer/Conv1_1/kernel/Adam/IdentityIdentity>training_1/TFOptimizer/Conv1_1/kernel/Adam/Read/ReadVariableOp*&
_output_shapes
:*
T0
Ё
%Conv1_1/kernel/Adam/Initializer/zerosConst*%
valueB*    *Q
_classG
ECloc:@training_1/TFOptimizer/Conv1_1/kernel/Adam/Read/ReadVariableOp*
dtype0*&
_output_shapes
:
о
Conv1_1/kernel/AdamVarHandleOp*$
shared_nameConv1_1/kernel/Adam*Q
_classG
ECloc:@training_1/TFOptimizer/Conv1_1/kernel/Adam/Read/ReadVariableOp*
	container *
shape:*
dtype0*
_output_shapes
: 
 
4Conv1_1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1_1/kernel/Adam*
_output_shapes
: *Q
_classG
ECloc:@training_1/TFOptimizer/Conv1_1/kernel/Adam/Read/ReadVariableOp
 
Conv1_1/kernel/Adam/AssignAssignVariableOpConv1_1/kernel/Adam%Conv1_1/kernel/Adam/Initializer/zeros*Q
_classG
ECloc:@training_1/TFOptimizer/Conv1_1/kernel/Adam/Read/ReadVariableOp*
dtype0
÷
'Conv1_1/kernel/Adam/Read/ReadVariableOpReadVariableOpConv1_1/kernel/Adam*Q
_classG
ECloc:@training_1/TFOptimizer/Conv1_1/kernel/Adam/Read/ReadVariableOp*
dtype0*&
_output_shapes
:
Ч
@training_1/TFOptimizer/Conv1_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOpConv1_1/kernel*
dtype0*&
_output_shapes
:
і
5training_1/TFOptimizer/Conv1_1/kernel/Adam_1/IdentityIdentity@training_1/TFOptimizer/Conv1_1/kernel/Adam_1/Read/ReadVariableOp*
T0*&
_output_shapes
:
б
'Conv1_1/kernel/Adam_1/Initializer/zerosConst*
dtype0*&
_output_shapes
:*%
valueB*    *S
_classI
GEloc:@training_1/TFOptimizer/Conv1_1/kernel/Adam_1/Read/ReadVariableOp
ф
Conv1_1/kernel/Adam_1VarHandleOp*&
shared_nameConv1_1/kernel/Adam_1*S
_classI
GEloc:@training_1/TFOptimizer/Conv1_1/kernel/Adam_1/Read/ReadVariableOp*
	container *
shape:*
dtype0*
_output_shapes
: 
–
6Conv1_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1_1/kernel/Adam_1*S
_classI
GEloc:@training_1/TFOptimizer/Conv1_1/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
“
Conv1_1/kernel/Adam_1/AssignAssignVariableOpConv1_1/kernel/Adam_1'Conv1_1/kernel/Adam_1/Initializer/zeros*S
_classI
GEloc:@training_1/TFOptimizer/Conv1_1/kernel/Adam_1/Read/ReadVariableOp*
dtype0
№
)Conv1_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOpConv1_1/kernel/Adam_1*S
_classI
GEloc:@training_1/TFOptimizer/Conv1_1/kernel/Adam_1/Read/ReadVariableOp*
dtype0*&
_output_shapes
:
Е
<training_1/TFOptimizer/Conv1_1/bias/Adam/Read/ReadVariableOpReadVariableOpConv1_1/bias*
dtype0*
_output_shapes
:
†
1training_1/TFOptimizer/Conv1_1/bias/Adam/IdentityIdentity<training_1/TFOptimizer/Conv1_1/bias/Adam/Read/ReadVariableOp*
T0*
_output_shapes
:
Ѕ
#Conv1_1/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *O
_classE
CAloc:@training_1/TFOptimizer/Conv1_1/bias/Adam/Read/ReadVariableOp
№
Conv1_1/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *"
shared_nameConv1_1/bias/Adam*O
_classE
CAloc:@training_1/TFOptimizer/Conv1_1/bias/Adam/Read/ReadVariableOp*
	container *
shape:
ƒ
2Conv1_1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1_1/bias/Adam*O
_classE
CAloc:@training_1/TFOptimizer/Conv1_1/bias/Adam/Read/ReadVariableOp*
_output_shapes
: 
¬
Conv1_1/bias/Adam/AssignAssignVariableOpConv1_1/bias/Adam#Conv1_1/bias/Adam/Initializer/zeros*
dtype0*O
_classE
CAloc:@training_1/TFOptimizer/Conv1_1/bias/Adam/Read/ReadVariableOp
ƒ
%Conv1_1/bias/Adam/Read/ReadVariableOpReadVariableOpConv1_1/bias/Adam*
dtype0*
_output_shapes
:*O
_classE
CAloc:@training_1/TFOptimizer/Conv1_1/bias/Adam/Read/ReadVariableOp
З
>training_1/TFOptimizer/Conv1_1/bias/Adam_1/Read/ReadVariableOpReadVariableOpConv1_1/bias*
dtype0*
_output_shapes
:
§
3training_1/TFOptimizer/Conv1_1/bias/Adam_1/IdentityIdentity>training_1/TFOptimizer/Conv1_1/bias/Adam_1/Read/ReadVariableOp*
T0*
_output_shapes
:
≈
%Conv1_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *Q
_classG
ECloc:@training_1/TFOptimizer/Conv1_1/bias/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:
в
Conv1_1/bias/Adam_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *$
shared_nameConv1_1/bias/Adam_1*Q
_classG
ECloc:@training_1/TFOptimizer/Conv1_1/bias/Adam_1/Read/ReadVariableOp
 
4Conv1_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1_1/bias/Adam_1*Q
_classG
ECloc:@training_1/TFOptimizer/Conv1_1/bias/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
 
Conv1_1/bias/Adam_1/AssignAssignVariableOpConv1_1/bias/Adam_1%Conv1_1/bias/Adam_1/Initializer/zeros*
dtype0*Q
_classG
ECloc:@training_1/TFOptimizer/Conv1_1/bias/Adam_1/Read/ReadVariableOp
 
'Conv1_1/bias/Adam_1/Read/ReadVariableOpReadVariableOpConv1_1/bias/Adam_1*Q
_classG
ECloc:@training_1/TFOptimizer/Conv1_1/bias/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:
Т
@training_1/TFOptimizer/Softmax_1/kernel/Adam/Read/ReadVariableOpReadVariableOpSoftmax_1/kernel*
dtype0*
_output_shapes
:	»


≠
5training_1/TFOptimizer/Softmax_1/kernel/Adam/IdentityIdentity@training_1/TFOptimizer/Softmax_1/kernel/Adam/Read/ReadVariableOp*
T0*
_output_shapes
:	»


Ё
7Softmax_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"H  
   *S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:
«
-Softmax_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
: 
®
'Softmax_1/kernel/Adam/Initializer/zerosFill7Softmax_1/kernel/Adam/Initializer/zeros/shape_as_tensor-Softmax_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam/Read/ReadVariableOp*
_output_shapes
:	»


н
Softmax_1/kernel/AdamVarHandleOp*&
shared_nameSoftmax_1/kernel/Adam*S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam/Read/ReadVariableOp*
	container *
shape:	»

*
dtype0*
_output_shapes
: 
–
6Softmax_1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax_1/kernel/Adam*
_output_shapes
: *S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam/Read/ReadVariableOp
“
Softmax_1/kernel/Adam/AssignAssignVariableOpSoftmax_1/kernel/Adam'Softmax_1/kernel/Adam/Initializer/zeros*S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam/Read/ReadVariableOp*
dtype0
’
)Softmax_1/kernel/Adam/Read/ReadVariableOpReadVariableOpSoftmax_1/kernel/Adam*
dtype0*
_output_shapes
:	»

*S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam/Read/ReadVariableOp
Ф
Btraining_1/TFOptimizer/Softmax_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax_1/kernel*
dtype0*
_output_shapes
:	»


±
7training_1/TFOptimizer/Softmax_1/kernel/Adam_1/IdentityIdentityBtraining_1/TFOptimizer/Softmax_1/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
:	»

*
T0
б
9Softmax_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"H  
   *U
_classK
IGloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam_1/Read/ReadVariableOp
Ћ
/Softmax_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *U
_classK
IGloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: 
∞
)Softmax_1/kernel/Adam_1/Initializer/zerosFill9Softmax_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/Softmax_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*U
_classK
IGloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
:	»


у
Softmax_1/kernel/Adam_1VarHandleOp*(
shared_nameSoftmax_1/kernel/Adam_1*U
_classK
IGloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam_1/Read/ReadVariableOp*
	container *
shape:	»

*
dtype0*
_output_shapes
: 
÷
8Softmax_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax_1/kernel/Adam_1*U
_classK
IGloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
Џ
Softmax_1/kernel/Adam_1/AssignAssignVariableOpSoftmax_1/kernel/Adam_1)Softmax_1/kernel/Adam_1/Initializer/zeros*U
_classK
IGloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam_1/Read/ReadVariableOp*
dtype0
џ
+Softmax_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax_1/kernel/Adam_1*U
_classK
IGloc:@training_1/TFOptimizer/Softmax_1/kernel/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:	»


Й
>training_1/TFOptimizer/Softmax_1/bias/Adam/Read/ReadVariableOpReadVariableOpSoftmax_1/bias*
dtype0*
_output_shapes
:

§
3training_1/TFOptimizer/Softmax_1/bias/Adam/IdentityIdentity>training_1/TFOptimizer/Softmax_1/bias/Adam/Read/ReadVariableOp*
T0*
_output_shapes
:

≈
%Softmax_1/bias/Adam/Initializer/zerosConst*
valueB
*    *Q
_classG
ECloc:@training_1/TFOptimizer/Softmax_1/bias/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:

в
Softmax_1/bias/AdamVarHandleOp*Q
_classG
ECloc:@training_1/TFOptimizer/Softmax_1/bias/Adam/Read/ReadVariableOp*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_nameSoftmax_1/bias/Adam
 
4Softmax_1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax_1/bias/Adam*
_output_shapes
: *Q
_classG
ECloc:@training_1/TFOptimizer/Softmax_1/bias/Adam/Read/ReadVariableOp
 
Softmax_1/bias/Adam/AssignAssignVariableOpSoftmax_1/bias/Adam%Softmax_1/bias/Adam/Initializer/zeros*Q
_classG
ECloc:@training_1/TFOptimizer/Softmax_1/bias/Adam/Read/ReadVariableOp*
dtype0
 
'Softmax_1/bias/Adam/Read/ReadVariableOpReadVariableOpSoftmax_1/bias/Adam*Q
_classG
ECloc:@training_1/TFOptimizer/Softmax_1/bias/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:

Л
@training_1/TFOptimizer/Softmax_1/bias/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax_1/bias*
dtype0*
_output_shapes
:

®
5training_1/TFOptimizer/Softmax_1/bias/Adam_1/IdentityIdentity@training_1/TFOptimizer/Softmax_1/bias/Adam_1/Read/ReadVariableOp*
T0*
_output_shapes
:

…
'Softmax_1/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:
*
valueB
*    *S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/bias/Adam_1/Read/ReadVariableOp
и
Softmax_1/bias/Adam_1VarHandleOp*S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/bias/Adam_1/Read/ReadVariableOp*
	container *
shape:
*
dtype0*
_output_shapes
: *&
shared_nameSoftmax_1/bias/Adam_1
–
6Softmax_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax_1/bias/Adam_1*
_output_shapes
: *S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/bias/Adam_1/Read/ReadVariableOp
“
Softmax_1/bias/Adam_1/AssignAssignVariableOpSoftmax_1/bias/Adam_1'Softmax_1/bias/Adam_1/Initializer/zeros*S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/bias/Adam_1/Read/ReadVariableOp*
dtype0
–
)Softmax_1/bias/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax_1/bias/Adam_1*S
_classI
GEloc:@training_1/TFOptimizer/Softmax_1/bias/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:

n
)training_1/TFOptimizer/Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *oГ:
f
!training_1/TFOptimizer/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
f
!training_1/TFOptimizer/Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *wЊ?
h
#training_1/TFOptimizer/Adam/epsilonConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
Ь
Etraining_1/TFOptimizer/Adam/update_Conv1_1/kernel/Read/ReadVariableOpReadVariableOpConv1_1/kernel*
dtype0*&
_output_shapes
:
Њ
:training_1/TFOptimizer/Adam/update_Conv1_1/kernel/IdentityIdentityEtraining_1/TFOptimizer/Adam/update_Conv1_1/kernel/Read/ReadVariableOp*
T0*&
_output_shapes
:
„
Ctraining_1/TFOptimizer/Adam/update_Conv1_1/kernel/ResourceApplyAdamResourceApplyAdamConv1_1/kernelConv1_1/kernel/AdamConv1_1/kernel/Adam_1'training_1/TFOptimizer/beta1_power/read'training_1/TFOptimizer/beta2_power/read)training_1/TFOptimizer/Adam/learning_rate!training_1/TFOptimizer/Adam/beta1!training_1/TFOptimizer/Adam/beta2#training_1/TFOptimizer/Adam/epsilonOtraining_1/TFOptimizer/gradients/Conv1_1/Conv2D_grad/tuple/control_dependency_1*
T0*X
_classN
LJloc:@training_1/TFOptimizer/Adam/update_Conv1_1/kernel/Read/ReadVariableOp*
use_nesterov( *
use_locking( 
М
Ctraining_1/TFOptimizer/Adam/update_Conv1_1/bias/Read/ReadVariableOpReadVariableOpConv1_1/bias*
dtype0*
_output_shapes
:
Ѓ
8training_1/TFOptimizer/Adam/update_Conv1_1/bias/IdentityIdentityCtraining_1/TFOptimizer/Adam/update_Conv1_1/bias/Read/ReadVariableOp*
_output_shapes
:*
T0
ќ
Atraining_1/TFOptimizer/Adam/update_Conv1_1/bias/ResourceApplyAdamResourceApplyAdamConv1_1/biasConv1_1/bias/AdamConv1_1/bias/Adam_1'training_1/TFOptimizer/beta1_power/read'training_1/TFOptimizer/beta2_power/read)training_1/TFOptimizer/Adam/learning_rate!training_1/TFOptimizer/Adam/beta1!training_1/TFOptimizer/Adam/beta2#training_1/TFOptimizer/Adam/epsilonPtraining_1/TFOptimizer/gradients/Conv1_1/BiasAdd_grad/tuple/control_dependency_1*
T0*V
_classL
JHloc:@training_1/TFOptimizer/Adam/update_Conv1_1/bias/Read/ReadVariableOp*
use_nesterov( *
use_locking( 
Щ
Gtraining_1/TFOptimizer/Adam/update_Softmax_1/kernel/Read/ReadVariableOpReadVariableOpSoftmax_1/kernel*
dtype0*
_output_shapes
:	»


ї
<training_1/TFOptimizer/Adam/update_Softmax_1/kernel/IdentityIdentityGtraining_1/TFOptimizer/Adam/update_Softmax_1/kernel/Read/ReadVariableOp*
_output_shapes
:	»

*
T0
г
Etraining_1/TFOptimizer/Adam/update_Softmax_1/kernel/ResourceApplyAdamResourceApplyAdamSoftmax_1/kernelSoftmax_1/kernel/AdamSoftmax_1/kernel/Adam_1'training_1/TFOptimizer/beta1_power/read'training_1/TFOptimizer/beta2_power/read)training_1/TFOptimizer/Adam/learning_rate!training_1/TFOptimizer/Adam/beta1!training_1/TFOptimizer/Adam/beta2#training_1/TFOptimizer/Adam/epsilonQtraining_1/TFOptimizer/gradients/Softmax_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*Z
_classP
NLloc:@training_1/TFOptimizer/Adam/update_Softmax_1/kernel/Read/ReadVariableOp*
use_nesterov( 
Р
Etraining_1/TFOptimizer/Adam/update_Softmax_1/bias/Read/ReadVariableOpReadVariableOpSoftmax_1/bias*
dtype0*
_output_shapes
:

≤
:training_1/TFOptimizer/Adam/update_Softmax_1/bias/IdentityIdentityEtraining_1/TFOptimizer/Adam/update_Softmax_1/bias/Read/ReadVariableOp*
T0*
_output_shapes
:

Џ
Ctraining_1/TFOptimizer/Adam/update_Softmax_1/bias/ResourceApplyAdamResourceApplyAdamSoftmax_1/biasSoftmax_1/bias/AdamSoftmax_1/bias/Adam_1'training_1/TFOptimizer/beta1_power/read'training_1/TFOptimizer/beta2_power/read)training_1/TFOptimizer/Adam/learning_rate!training_1/TFOptimizer/Adam/beta1!training_1/TFOptimizer/Adam/beta2#training_1/TFOptimizer/Adam/epsilonRtraining_1/TFOptimizer/gradients/Softmax_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*X
_classN
LJloc:@training_1/TFOptimizer/Adam/update_Softmax_1/bias/Read/ReadVariableOp*
use_nesterov( 
к
training_1/TFOptimizer/Adam/mulMul'training_1/TFOptimizer/beta1_power/read!training_1/TFOptimizer/Adam/beta1B^training_1/TFOptimizer/Adam/update_Conv1_1/bias/ResourceApplyAdamD^training_1/TFOptimizer/Adam/update_Conv1_1/kernel/ResourceApplyAdamD^training_1/TFOptimizer/Adam/update_Softmax_1/bias/ResourceApplyAdamF^training_1/TFOptimizer/Adam/update_Softmax_1/kernel/ResourceApplyAdam*
_output_shapes
: *
T0*=
_class3
1/loc:@training_1/TFOptimizer/Read/ReadVariableOp
ъ
"training_1/TFOptimizer/Adam/AssignAssign"training_1/TFOptimizer/beta1_powertraining_1/TFOptimizer/Adam/mul*
T0*=
_class3
1/loc:@training_1/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: *
use_locking( 
м
!training_1/TFOptimizer/Adam/mul_1Mul'training_1/TFOptimizer/beta2_power/read!training_1/TFOptimizer/Adam/beta2B^training_1/TFOptimizer/Adam/update_Conv1_1/bias/ResourceApplyAdamD^training_1/TFOptimizer/Adam/update_Conv1_1/kernel/ResourceApplyAdamD^training_1/TFOptimizer/Adam/update_Softmax_1/bias/ResourceApplyAdamF^training_1/TFOptimizer/Adam/update_Softmax_1/kernel/ResourceApplyAdam*
T0*=
_class3
1/loc:@training_1/TFOptimizer/Read/ReadVariableOp*
_output_shapes
: 
±
$training_1/TFOptimizer/Adam/Assign_1Assign"training_1/TFOptimizer/beta2_power!training_1/TFOptimizer/Adam/mul_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*p
_classf
d/loc:@training_1/TFOptimizer/Read/ReadVariableOp1loc:@training_1/TFOptimizer/Read_1/ReadVariableOp
О
"training_1/TFOptimizer/Adam/updateNoOp#^training_1/TFOptimizer/Adam/Assign%^training_1/TFOptimizer/Adam/Assign_1B^training_1/TFOptimizer/Adam/update_Conv1_1/bias/ResourceApplyAdamD^training_1/TFOptimizer/Adam/update_Conv1_1/kernel/ResourceApplyAdamD^training_1/TFOptimizer/Adam/update_Softmax_1/bias/ResourceApplyAdamF^training_1/TFOptimizer/Adam/update_Softmax_1/kernel/ResourceApplyAdam
•
/training_1/TFOptimizer/Adam/Read/ReadVariableOpReadVariableOpTFOptimizer_1/iterations#^training_1/TFOptimizer/Adam/update*
dtype0	*
_output_shapes
: 
В
$training_1/TFOptimizer/Adam/IdentityIdentity/training_1/TFOptimizer/Adam/Read/ReadVariableOp*
T0	*
_output_shapes
: 
ћ
!training_1/TFOptimizer/Adam/ConstConst#^training_1/TFOptimizer/Adam/update*
value	B	 R*B
_class8
64loc:@training_1/TFOptimizer/Adam/Read/ReadVariableOp*
dtype0	*
_output_shapes
: 
ј
training_1/TFOptimizer/AdamAssignAddVariableOpTFOptimizer_1/iterations!training_1/TFOptimizer/Adam/Const*B
_class8
64loc:@training_1/TFOptimizer/Adam/Read/ReadVariableOp*
dtype0	
]
training_1/group_depsNoOp^loss_1/mul^metrics_1/acc/Mean^training_1/TFOptimizer/Adam
V
VarIsInitializedOp_13VarIsInitializedOpConv1_1/bias/Adam*
_output_shapes
: 
S
VarIsInitializedOp_14VarIsInitializedOpConv1_1/kernel*
_output_shapes
: 
]
VarIsInitializedOp_15VarIsInitializedOpTFOptimizer_1/iterations*
_output_shapes
: 
X
VarIsInitializedOp_16VarIsInitializedOpConv1_1/bias/Adam_1*
_output_shapes
: 
Z
VarIsInitializedOp_17VarIsInitializedOpSoftmax_1/bias/Adam_1*
_output_shapes
: 
Ї
IsVariableInitialized_2IsVariableInitialized"training_1/TFOptimizer/beta2_power*
dtype0*
_output_shapes
: *?
_class5
31loc:@training_1/TFOptimizer/Read_1/ReadVariableOp
Z
VarIsInitializedOp_18VarIsInitializedOpSoftmax_1/kernel/Adam*
_output_shapes
: 
Є
IsVariableInitialized_3IsVariableInitialized"training_1/TFOptimizer/beta1_power*=
_class3
1/loc:@training_1/TFOptimizer/Read/ReadVariableOp*
dtype0*
_output_shapes
: 
\
VarIsInitializedOp_19VarIsInitializedOpSoftmax_1/kernel/Adam_1*
_output_shapes
: 
X
VarIsInitializedOp_20VarIsInitializedOpConv1_1/kernel/Adam*
_output_shapes
: 
Q
VarIsInitializedOp_21VarIsInitializedOpConv1_1/bias*
_output_shapes
: 
S
VarIsInitializedOp_22VarIsInitializedOpSoftmax_1/bias*
_output_shapes
: 
U
VarIsInitializedOp_23VarIsInitializedOpSoftmax_1/kernel*
_output_shapes
: 
X
VarIsInitializedOp_24VarIsInitializedOpSoftmax_1/bias/Adam*
_output_shapes
: 
Z
VarIsInitializedOp_25VarIsInitializedOpConv1_1/kernel/Adam_1*
_output_shapes
: 
Ў
init_1NoOp^Conv1_1/bias/Adam/Assign^Conv1_1/bias/Adam_1/Assign^Conv1_1/bias/Assign^Conv1_1/kernel/Adam/Assign^Conv1_1/kernel/Adam_1/Assign^Conv1_1/kernel/Assign^Softmax_1/bias/Adam/Assign^Softmax_1/bias/Adam_1/Assign^Softmax_1/bias/Assign^Softmax_1/kernel/Adam/Assign^Softmax_1/kernel/Adam_1/Assign^Softmax_1/kernel/Assign ^TFOptimizer_1/iterations/Assign*^training_1/TFOptimizer/beta1_power/Assign*^training_1/TFOptimizer/beta2_power/Assign
6
group_deps_1NoOp^loss_1/mul^metrics_1/acc/Mean
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_ad5450da4ee0409e9eeb68d125683d3e/part
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
к
save_1/SaveV2/tensor_namesConst*Ы
valueСBОB
Conv1/biasBConv1/bias/AdamBConv1/bias/Adam_1BConv1/kernelBConv1/kernel/AdamBConv1/kernel/Adam_1BConv1_1/biasBConv1_1/bias/AdamBConv1_1/bias/Adam_1BConv1_1/kernelBConv1_1/kernel/AdamBConv1_1/kernel/Adam_1BSoftmax/biasBSoftmax/bias/AdamBSoftmax/bias/Adam_1BSoftmax/kernelBSoftmax/kernel/AdamBSoftmax/kernel/Adam_1BSoftmax_1/biasBSoftmax_1/bias/AdamBSoftmax_1/bias/Adam_1BSoftmax_1/kernelBSoftmax_1/kernel/AdamBSoftmax_1/kernel/Adam_1BTFOptimizer/iterationsBTFOptimizer_1/iterationsB training/TFOptimizer/beta1_powerB training/TFOptimizer/beta2_powerB"training_1/TFOptimizer/beta1_powerB"training_1/TFOptimizer/beta2_power*
dtype0*
_output_shapes
:
°
save_1/SaveV2/shape_and_slicesConst*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
І

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesConv1/bias/Read/ReadVariableOp#Conv1/bias/Adam/Read/ReadVariableOp%Conv1/bias/Adam_1/Read/ReadVariableOp Conv1/kernel/Read/ReadVariableOp%Conv1/kernel/Adam/Read/ReadVariableOp'Conv1/kernel/Adam_1/Read/ReadVariableOp Conv1_1/bias/Read/ReadVariableOp%Conv1_1/bias/Adam/Read/ReadVariableOp'Conv1_1/bias/Adam_1/Read/ReadVariableOp"Conv1_1/kernel/Read/ReadVariableOp'Conv1_1/kernel/Adam/Read/ReadVariableOp)Conv1_1/kernel/Adam_1/Read/ReadVariableOp Softmax/bias/Read/ReadVariableOp%Softmax/bias/Adam/Read/ReadVariableOp'Softmax/bias/Adam_1/Read/ReadVariableOp"Softmax/kernel/Read/ReadVariableOp'Softmax/kernel/Adam/Read/ReadVariableOp)Softmax/kernel/Adam_1/Read/ReadVariableOp"Softmax_1/bias/Read/ReadVariableOp'Softmax_1/bias/Adam/Read/ReadVariableOp)Softmax_1/bias/Adam_1/Read/ReadVariableOp$Softmax_1/kernel/Read/ReadVariableOp)Softmax_1/kernel/Adam/Read/ReadVariableOp+Softmax_1/kernel/Adam_1/Read/ReadVariableOp*TFOptimizer/iterations/Read/ReadVariableOp,TFOptimizer_1/iterations/Read/ReadVariableOp training/TFOptimizer/beta1_power training/TFOptimizer/beta2_power"training_1/TFOptimizer/beta1_power"training_1/TFOptimizer/beta2_power*,
dtypes"
 2		
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
_output_shapes
:*
T0*

axis 
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
н
save_1/RestoreV2/tensor_namesConst*Ы
valueСBОB
Conv1/biasBConv1/bias/AdamBConv1/bias/Adam_1BConv1/kernelBConv1/kernel/AdamBConv1/kernel/Adam_1BConv1_1/biasBConv1_1/bias/AdamBConv1_1/bias/Adam_1BConv1_1/kernelBConv1_1/kernel/AdamBConv1_1/kernel/Adam_1BSoftmax/biasBSoftmax/bias/AdamBSoftmax/bias/Adam_1BSoftmax/kernelBSoftmax/kernel/AdamBSoftmax/kernel/Adam_1BSoftmax_1/biasBSoftmax_1/bias/AdamBSoftmax_1/bias/Adam_1BSoftmax_1/kernelBSoftmax_1/kernel/AdamBSoftmax_1/kernel/Adam_1BTFOptimizer/iterationsBTFOptimizer_1/iterationsB training/TFOptimizer/beta1_powerB training/TFOptimizer/beta2_powerB"training_1/TFOptimizer/beta1_powerB"training_1/TFOptimizer/beta2_power*
dtype0*
_output_shapes
:
§
!save_1/RestoreV2/shape_and_slicesConst*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
™
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*М
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2		
R
save_1/Identity_1Identitysave_1/RestoreV2*
_output_shapes
:*
T0
W
save_1/AssignVariableOpAssignVariableOp
Conv1/biassave_1/Identity_1*
dtype0
T
save_1/Identity_2Identitysave_1/RestoreV2:1*
T0*
_output_shapes
:
^
save_1/AssignVariableOp_1AssignVariableOpConv1/bias/Adamsave_1/Identity_2*
dtype0
T
save_1/Identity_3Identitysave_1/RestoreV2:2*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_2AssignVariableOpConv1/bias/Adam_1save_1/Identity_3*
dtype0
T
save_1/Identity_4Identitysave_1/RestoreV2:3*
T0*
_output_shapes
:
[
save_1/AssignVariableOp_3AssignVariableOpConv1/kernelsave_1/Identity_4*
dtype0
T
save_1/Identity_5Identitysave_1/RestoreV2:4*
_output_shapes
:*
T0
`
save_1/AssignVariableOp_4AssignVariableOpConv1/kernel/Adamsave_1/Identity_5*
dtype0
T
save_1/Identity_6Identitysave_1/RestoreV2:5*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_5AssignVariableOpConv1/kernel/Adam_1save_1/Identity_6*
dtype0
T
save_1/Identity_7Identitysave_1/RestoreV2:6*
_output_shapes
:*
T0
[
save_1/AssignVariableOp_6AssignVariableOpConv1_1/biassave_1/Identity_7*
dtype0
T
save_1/Identity_8Identitysave_1/RestoreV2:7*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_7AssignVariableOpConv1_1/bias/Adamsave_1/Identity_8*
dtype0
T
save_1/Identity_9Identitysave_1/RestoreV2:8*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_8AssignVariableOpConv1_1/bias/Adam_1save_1/Identity_9*
dtype0
U
save_1/Identity_10Identitysave_1/RestoreV2:9*
T0*
_output_shapes
:
^
save_1/AssignVariableOp_9AssignVariableOpConv1_1/kernelsave_1/Identity_10*
dtype0
V
save_1/Identity_11Identitysave_1/RestoreV2:10*
_output_shapes
:*
T0
d
save_1/AssignVariableOp_10AssignVariableOpConv1_1/kernel/Adamsave_1/Identity_11*
dtype0
V
save_1/Identity_12Identitysave_1/RestoreV2:11*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_11AssignVariableOpConv1_1/kernel/Adam_1save_1/Identity_12*
dtype0
V
save_1/Identity_13Identitysave_1/RestoreV2:12*
T0*
_output_shapes
:
]
save_1/AssignVariableOp_12AssignVariableOpSoftmax/biassave_1/Identity_13*
dtype0
V
save_1/Identity_14Identitysave_1/RestoreV2:13*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_13AssignVariableOpSoftmax/bias/Adamsave_1/Identity_14*
dtype0
V
save_1/Identity_15Identitysave_1/RestoreV2:14*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_14AssignVariableOpSoftmax/bias/Adam_1save_1/Identity_15*
dtype0
V
save_1/Identity_16Identitysave_1/RestoreV2:15*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_15AssignVariableOpSoftmax/kernelsave_1/Identity_16*
dtype0
V
save_1/Identity_17Identitysave_1/RestoreV2:16*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_16AssignVariableOpSoftmax/kernel/Adamsave_1/Identity_17*
dtype0
V
save_1/Identity_18Identitysave_1/RestoreV2:17*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_17AssignVariableOpSoftmax/kernel/Adam_1save_1/Identity_18*
dtype0
V
save_1/Identity_19Identitysave_1/RestoreV2:18*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_18AssignVariableOpSoftmax_1/biassave_1/Identity_19*
dtype0
V
save_1/Identity_20Identitysave_1/RestoreV2:19*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_19AssignVariableOpSoftmax_1/bias/Adamsave_1/Identity_20*
dtype0
V
save_1/Identity_21Identitysave_1/RestoreV2:20*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_20AssignVariableOpSoftmax_1/bias/Adam_1save_1/Identity_21*
dtype0
V
save_1/Identity_22Identitysave_1/RestoreV2:21*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_21AssignVariableOpSoftmax_1/kernelsave_1/Identity_22*
dtype0
V
save_1/Identity_23Identitysave_1/RestoreV2:22*
_output_shapes
:*
T0
f
save_1/AssignVariableOp_22AssignVariableOpSoftmax_1/kernel/Adamsave_1/Identity_23*
dtype0
V
save_1/Identity_24Identitysave_1/RestoreV2:23*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_23AssignVariableOpSoftmax_1/kernel/Adam_1save_1/Identity_24*
dtype0
V
save_1/Identity_25Identitysave_1/RestoreV2:24*
T0	*
_output_shapes
:
g
save_1/AssignVariableOp_24AssignVariableOpTFOptimizer/iterationssave_1/Identity_25*
dtype0	
V
save_1/Identity_26Identitysave_1/RestoreV2:25*
T0	*
_output_shapes
:
i
save_1/AssignVariableOp_25AssignVariableOpTFOptimizer_1/iterationssave_1/Identity_26*
dtype0	
’
save_1/AssignAssign training/TFOptimizer/beta1_powersave_1/RestoreV2:26*
use_locking(*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: 
ў
save_1/Assign_1Assign training/TFOptimizer/beta2_powersave_1/RestoreV2:27*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp
џ
save_1/Assign_2Assign"training_1/TFOptimizer/beta1_powersave_1/RestoreV2:28*
T0*=
_class3
1/loc:@training_1/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: *
use_locking(
Ё
save_1/Assign_3Assign"training_1/TFOptimizer/beta2_powersave_1/RestoreV2:29*
use_locking(*
T0*?
_class5
31loc:@training_1/TFOptimizer/Read_1/ReadVariableOp*
validate_shape(*
_output_shapes
: 
»
save_1/restore_shardNoOp^save_1/Assign^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_10^save_1/AssignVariableOp_11^save_1/AssignVariableOp_12^save_1/AssignVariableOp_13^save_1/AssignVariableOp_14^save_1/AssignVariableOp_15^save_1/AssignVariableOp_16^save_1/AssignVariableOp_17^save_1/AssignVariableOp_18^save_1/AssignVariableOp_19^save_1/AssignVariableOp_2^save_1/AssignVariableOp_20^save_1/AssignVariableOp_21^save_1/AssignVariableOp_22^save_1/AssignVariableOp_23^save_1/AssignVariableOp_24^save_1/AssignVariableOp_25^save_1/AssignVariableOp_3^save_1/AssignVariableOp_4^save_1/AssignVariableOp_5^save_1/AssignVariableOp_6^save_1/AssignVariableOp_7^save_1/AssignVariableOp_8^save_1/AssignVariableOp_9^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"F
train_op:
8
training/TFOptimizer/Adam
training_1/TFOptimizer/Adam"шр
cond_contextжрвр
Џ
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textQloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *џ
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0¶
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ъ
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
лV
Sloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*ј'
iloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
iloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Нloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Нloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Нloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Жloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Гloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Иloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Еloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Бloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Аloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Еloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Дloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Дloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
wloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
yloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Floss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rank:0
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0¶
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0’
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0Иloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ѕ
Floss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rank:0wloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0“
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0Жloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0ƒ
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank:0yloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02н"
к"
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textkloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *Э 
Нloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Нloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Нloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Жloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Иloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
Гloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Иloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Кloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
Еloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Бloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Аloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Еloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Дloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Дloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0„
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0Кloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Ц
Иloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Иloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0‘
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0Иloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Т
Жloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Жloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Џ
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02є

ґ

mloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*й
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0Џ
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0а
ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Х
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textNloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *Я
Yloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0†
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Ј
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*Ѕ
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
[loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ґ
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0†
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0°
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0Ю
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0І
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
т
Sloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textSloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *н
Floss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Sloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0Ю
Floss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1™
Sloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Sloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
ѓX
Uloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Sloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*Ь(
kloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
kloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
lloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
lloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Пloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Пloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Пloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Иloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Еloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Бloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Кloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Зloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Гloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Вloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
}loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Зloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Жloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Жloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Аloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
xloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
yloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
{loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
rloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
mloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Sloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Tloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Hloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/rank:0
Iloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0
Iloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Jloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0÷
Iloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0Иloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0»
Iloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank:0{loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0™
Sloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Sloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0ў
Jloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0Кloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0≈
Hloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/rank:0yloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:02Ј#
і#
mloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textmloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *б 
Пloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Пloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Пloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Иloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Кloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
Еloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Бloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Кloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Мloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
Зloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Гloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Вloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
}loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Зloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Жloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Жloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Аloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
xloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
mloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Iloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0
Jloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0џ
Jloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0Мloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Ъ
Кloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Кloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ў
Iloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0Кloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Ц
Иloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Иloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0ё
mloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0mloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02—

ќ

oloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1mloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*ы
nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
rloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
mloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0ё
mloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0mloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0д
rloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0nloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
•
Ploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textPloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Qloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *©
[loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Ploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Qloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0§
Ploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
у
Rloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Ploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Qloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*ч
Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Xloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Xloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Xloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
]loss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Ploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Qloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Floss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Qloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Iloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0
Jloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0•
Iloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0Xloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0Ґ
Floss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0Xloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0Ђ
Qloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Vloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0¶
Jloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0Xloss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0§
Ploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ploss_1/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0"І!
	variablesЩ!Ц!
x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08
А
Softmax/kernel:0Softmax/kernel/Assign$Softmax/kernel/Read/ReadVariableOp:0(2+Softmax/kernel/Initializer/random_uniform:08
o
Softmax/bias:0Softmax/bias/Assign"Softmax/bias/Read/ReadVariableOp:0(2 Softmax/bias/Initializer/zeros:08
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08
®
"training/TFOptimizer/beta1_power:0'training/TFOptimizer/beta1_power/Assign'training/TFOptimizer/beta1_power/read:020training/TFOptimizer/beta1_power/initial_value:0
®
"training/TFOptimizer/beta2_power:0'training/TFOptimizer/beta2_power/Assign'training/TFOptimizer/beta2_power/read:020training/TFOptimizer/beta2_power/initial_value:0
Б
Conv1/kernel/Adam:0Conv1/kernel/Adam/Assign'Conv1/kernel/Adam/Read/ReadVariableOp:0(2%Conv1/kernel/Adam/Initializer/zeros:0
Й
Conv1/kernel/Adam_1:0Conv1/kernel/Adam_1/Assign)Conv1/kernel/Adam_1/Read/ReadVariableOp:0(2'Conv1/kernel/Adam_1/Initializer/zeros:0
y
Conv1/bias/Adam:0Conv1/bias/Adam/Assign%Conv1/bias/Adam/Read/ReadVariableOp:0(2#Conv1/bias/Adam/Initializer/zeros:0
Б
Conv1/bias/Adam_1:0Conv1/bias/Adam_1/Assign'Conv1/bias/Adam_1/Read/ReadVariableOp:0(2%Conv1/bias/Adam_1/Initializer/zeros:0
Й
Softmax/kernel/Adam:0Softmax/kernel/Adam/Assign)Softmax/kernel/Adam/Read/ReadVariableOp:0(2'Softmax/kernel/Adam/Initializer/zeros:0
С
Softmax/kernel/Adam_1:0Softmax/kernel/Adam_1/Assign+Softmax/kernel/Adam_1/Read/ReadVariableOp:0(2)Softmax/kernel/Adam_1/Initializer/zeros:0
Б
Softmax/bias/Adam:0Softmax/bias/Adam/Assign'Softmax/bias/Adam/Read/ReadVariableOp:0(2%Softmax/bias/Adam/Initializer/zeros:0
Й
Softmax/bias/Adam_1:0Softmax/bias/Adam_1/Assign)Softmax/bias/Adam_1/Read/ReadVariableOp:0(2'Softmax/bias/Adam_1/Initializer/zeros:0
А
Conv1_1/kernel:0Conv1_1/kernel/Assign$Conv1_1/kernel/Read/ReadVariableOp:0(2+Conv1_1/kernel/Initializer/random_uniform:08
o
Conv1_1/bias:0Conv1_1/bias/Assign"Conv1_1/bias/Read/ReadVariableOp:0(2 Conv1_1/bias/Initializer/zeros:08
И
Softmax_1/kernel:0Softmax_1/kernel/Assign&Softmax_1/kernel/Read/ReadVariableOp:0(2-Softmax_1/kernel/Initializer/random_uniform:08
w
Softmax_1/bias:0Softmax_1/bias/Assign$Softmax_1/bias/Read/ReadVariableOp:0(2"Softmax_1/bias/Initializer/zeros:08
І
TFOptimizer_1/iterations:0TFOptimizer_1/iterations/Assign.TFOptimizer_1/iterations/Read/ReadVariableOp:0(24TFOptimizer_1/iterations/Initializer/initial_value:08
∞
$training_1/TFOptimizer/beta1_power:0)training_1/TFOptimizer/beta1_power/Assign)training_1/TFOptimizer/beta1_power/read:022training_1/TFOptimizer/beta1_power/initial_value:0
∞
$training_1/TFOptimizer/beta2_power:0)training_1/TFOptimizer/beta2_power/Assign)training_1/TFOptimizer/beta2_power/read:022training_1/TFOptimizer/beta2_power/initial_value:0
Й
Conv1_1/kernel/Adam:0Conv1_1/kernel/Adam/Assign)Conv1_1/kernel/Adam/Read/ReadVariableOp:0(2'Conv1_1/kernel/Adam/Initializer/zeros:0
С
Conv1_1/kernel/Adam_1:0Conv1_1/kernel/Adam_1/Assign+Conv1_1/kernel/Adam_1/Read/ReadVariableOp:0(2)Conv1_1/kernel/Adam_1/Initializer/zeros:0
Б
Conv1_1/bias/Adam:0Conv1_1/bias/Adam/Assign'Conv1_1/bias/Adam/Read/ReadVariableOp:0(2%Conv1_1/bias/Adam/Initializer/zeros:0
Й
Conv1_1/bias/Adam_1:0Conv1_1/bias/Adam_1/Assign)Conv1_1/bias/Adam_1/Read/ReadVariableOp:0(2'Conv1_1/bias/Adam_1/Initializer/zeros:0
С
Softmax_1/kernel/Adam:0Softmax_1/kernel/Adam/Assign+Softmax_1/kernel/Adam/Read/ReadVariableOp:0(2)Softmax_1/kernel/Adam/Initializer/zeros:0
Щ
Softmax_1/kernel/Adam_1:0Softmax_1/kernel/Adam_1/Assign-Softmax_1/kernel/Adam_1/Read/ReadVariableOp:0(2+Softmax_1/kernel/Adam_1/Initializer/zeros:0
Й
Softmax_1/bias/Adam:0Softmax_1/bias/Adam/Assign)Softmax_1/bias/Adam/Read/ReadVariableOp:0(2'Softmax_1/bias/Adam/Initializer/zeros:0
С
Softmax_1/bias/Adam_1:0Softmax_1/bias/Adam_1/Assign+Softmax_1/bias/Adam_1/Read/ReadVariableOp:0(2)Softmax_1/bias/Adam_1/Initializer/zeros:0"ґ

trainable_variablesЮ
Ы

x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08
А
Softmax/kernel:0Softmax/kernel/Assign$Softmax/kernel/Read/ReadVariableOp:0(2+Softmax/kernel/Initializer/random_uniform:08
o
Softmax/bias:0Softmax/bias/Assign"Softmax/bias/Read/ReadVariableOp:0(2 Softmax/bias/Initializer/zeros:08
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08
А
Conv1_1/kernel:0Conv1_1/kernel/Assign$Conv1_1/kernel/Read/ReadVariableOp:0(2+Conv1_1/kernel/Initializer/random_uniform:08
o
Conv1_1/bias:0Conv1_1/bias/Assign"Conv1_1/bias/Read/ReadVariableOp:0(2 Conv1_1/bias/Initializer/zeros:08
И
Softmax_1/kernel:0Softmax_1/kernel/Assign&Softmax_1/kernel/Read/ReadVariableOp:0(2-Softmax_1/kernel/Initializer/random_uniform:08
w
Softmax_1/bias:0Softmax_1/bias/Assign$Softmax_1/bias/Read/ReadVariableOp:0(2"Softmax_1/bias/Initializer/zeros:08
І
TFOptimizer_1/iterations:0TFOptimizer_1/iterations/Assign.TFOptimizer_1/iterations/Read/ReadVariableOp:0(24TFOptimizer_1/iterations/Initializer/initial_value:08*≤
serving_defaultЮ
=
input_image.
Conv1_input_1:0€€€€€€€€€A
Softmax_1/Softmax:0*
Softmax_1/Softmax:0€€€€€€€€€
tensorflow/serving/predict