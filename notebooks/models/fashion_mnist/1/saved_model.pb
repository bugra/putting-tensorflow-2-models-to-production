Ī
�3�3
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
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
	summarizeint�
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
E
AssignAddVariableOp
resource
value"dtype"
dtypetype�
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
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
�
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
�
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
�
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
�
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
ref"dtype�
is_initialized
"
dtypetype�
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
�
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

2	�
�
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
delete_old_dirsbool(�
;
Minimum
x"T
y"T
z"T"
Ttype:

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
2	�
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
�
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
use_nesterovbool( �
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
�
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
�
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
shapeshape�
9
VarIsInitializedOp
resource
is_initialized
�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.12.02v1.12.0-rc2-3-ga6d8ffae09��
~
Conv1_inputPlaceholder*
dtype0*/
_output_shapes
:���������*$
shape:���������
�
-Conv1/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *
_class
loc:@Conv1/kernel*
dtype0*
_output_shapes
:
�
+Conv1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *HY��*
_class
loc:@Conv1/kernel
�
+Conv1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *HY�>*
_class
loc:@Conv1/kernel
�
5Conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform-Conv1/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@Conv1/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
�
+Conv1/kernel/Initializer/random_uniform/subSub+Conv1/kernel/Initializer/random_uniform/max+Conv1/kernel/Initializer/random_uniform/min*
_class
loc:@Conv1/kernel*
_output_shapes
: *
T0
�
+Conv1/kernel/Initializer/random_uniform/mulMul5Conv1/kernel/Initializer/random_uniform/RandomUniform+Conv1/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv1/kernel*&
_output_shapes
:
�
'Conv1/kernel/Initializer/random_uniformAdd+Conv1/kernel/Initializer/random_uniform/mul+Conv1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@Conv1/kernel*&
_output_shapes
:
�
Conv1/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameConv1/kernel*
_class
loc:@Conv1/kernel*
	container *
shape:
i
-Conv1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel*
_output_shapes
: 
�
Conv1/kernel/AssignAssignVariableOpConv1/kernel'Conv1/kernel/Initializer/random_uniform*
_class
loc:@Conv1/kernel*
dtype0
�
 Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*
_class
loc:@Conv1/kernel*
dtype0*&
_output_shapes
:
�
Conv1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@Conv1/bias*
dtype0*
_output_shapes
:
�

Conv1/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_name
Conv1/bias*
_class
loc:@Conv1/bias*
	container 
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
�
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
�
Conv1/Conv2DConv2DConv1_inputConv1/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:���������*
	dilations

c
Conv1/BiasAdd/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
�
Conv1/BiasAddBiasAddConv1/Conv2DConv1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:���������
[

Conv1/ReluReluConv1/BiasAdd*
T0*/
_output_shapes
:���������
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
flatten/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
b
flatten/Reshape/shape/1Const*
valueB :
���������*
dtype0*
_output_shapes
: 
�
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
~
flatten/ReshapeReshape
Conv1/Reluflatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:����������

�
/Softmax/kernel/Initializer/random_uniform/shapeConst*
valueB"H  
   *!
_class
loc:@Softmax/kernel*
dtype0*
_output_shapes
:
�
-Softmax/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *7*!
_class
loc:@Softmax/kernel
�
-Softmax/kernel/Initializer/random_uniform/maxConst*
valueB
 *7�=*!
_class
loc:@Softmax/kernel*
dtype0*
_output_shapes
: 
�
7Softmax/kernel/Initializer/random_uniform/RandomUniformRandomUniform/Softmax/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	�

*

seed *
T0*!
_class
loc:@Softmax/kernel*
seed2 
�
-Softmax/kernel/Initializer/random_uniform/subSub-Softmax/kernel/Initializer/random_uniform/max-Softmax/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@Softmax/kernel*
_output_shapes
: 
�
-Softmax/kernel/Initializer/random_uniform/mulMul7Softmax/kernel/Initializer/random_uniform/RandomUniform-Softmax/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@Softmax/kernel*
_output_shapes
:	�


�
)Softmax/kernel/Initializer/random_uniformAdd-Softmax/kernel/Initializer/random_uniform/mul-Softmax/kernel/Initializer/random_uniform/min*
_output_shapes
:	�

*
T0*!
_class
loc:@Softmax/kernel
�
Softmax/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameSoftmax/kernel*!
_class
loc:@Softmax/kernel*
	container *
shape:	�


m
/Softmax/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/kernel*
_output_shapes
: 
�
Softmax/kernel/AssignAssignVariableOpSoftmax/kernel)Softmax/kernel/Initializer/random_uniform*!
_class
loc:@Softmax/kernel*
dtype0
�
"Softmax/kernel/Read/ReadVariableOpReadVariableOpSoftmax/kernel*!
_class
loc:@Softmax/kernel*
dtype0*
_output_shapes
:	�


�
Softmax/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@Softmax/bias*
dtype0*
_output_shapes
:

�
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
�
Softmax/bias/AssignAssignVariableOpSoftmax/biasSoftmax/bias/Initializer/zeros*
_class
loc:@Softmax/bias*
dtype0
�
 Softmax/bias/Read/ReadVariableOpReadVariableOpSoftmax/bias*
dtype0*
_output_shapes
:
*
_class
loc:@Softmax/bias
m
Softmax/MatMul/ReadVariableOpReadVariableOpSoftmax/kernel*
dtype0*
_output_shapes
:	�


�
Softmax/MatMulMatMulflatten/ReshapeSoftmax/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( *
T0
g
Softmax/BiasAdd/ReadVariableOpReadVariableOpSoftmax/bias*
dtype0*
_output_shapes
:

�
Softmax/BiasAddBiasAddSoftmax/MatMulSoftmax/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:���������
*
T0
]
Softmax/SoftmaxSoftmaxSoftmax/BiasAdd*
T0*'
_output_shapes
:���������

�
0TFOptimizer/iterations/Initializer/initial_valueConst*
value	B	 R *)
_class
loc:@TFOptimizer/iterations*
dtype0	*
_output_shapes
: 
�
TFOptimizer/iterationsVarHandleOp*'
shared_nameTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
	container *
shape: *
dtype0	*
_output_shapes
: 
}
7TFOptimizer/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
�
TFOptimizer/iterations/AssignAssignVariableOpTFOptimizer/iterations0TFOptimizer/iterations/Initializer/initial_value*)
_class
loc:@TFOptimizer/iterations*
dtype0	
�
*TFOptimizer/iterations/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
dtype0	*
_output_shapes
: 
�
Softmax_targetPlaceholder*%
shape:������������������*
dtype0*0
_output_shapes
:������������������
R
ConstConst*
valueB*  �?*
dtype0*
_output_shapes
:
�
Softmax_sample_weightsPlaceholderWithDefaultConst*
shape:���������*
dtype0*#
_output_shapes
:���������
\
loss/Softmax_loss/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *���3
\
loss/Softmax_loss/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
loss/Softmax_loss/subSubloss/Softmax_loss/sub/xloss/Softmax_loss/Const*
T0*
_output_shapes
: 
�
'loss/Softmax_loss/clip_by_value/MinimumMinimumSoftmax/Softmaxloss/Softmax_loss/sub*
T0*'
_output_shapes
:���������

�
loss/Softmax_loss/clip_by_valueMaximum'loss/Softmax_loss/clip_by_value/Minimumloss/Softmax_loss/Const*
T0*'
_output_shapes
:���������

o
loss/Softmax_loss/LogLogloss/Softmax_loss/clip_by_value*
T0*'
_output_shapes
:���������

r
loss/Softmax_loss/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
loss/Softmax_loss/ReshapeReshapeSoftmax_targetloss/Softmax_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
loss/Softmax_loss/CastCastloss/Softmax_loss/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:���������
r
!loss/Softmax_loss/Reshape_1/shapeConst*
valueB"����
   *
dtype0*
_output_shapes
:
�
loss/Softmax_loss/Reshape_1Reshapeloss/Softmax_loss/Log!loss/Softmax_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:���������

�
;loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/Softmax_loss/Cast*
T0	*
out_type0*
_output_shapes
:
�
Yloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/Softmax_loss/Reshape_1loss/Softmax_loss/Cast*
T0*
Tlabels0	*6
_output_shapes$
":���������:���������

�
Floss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeSoftmax_sample_weights*
_output_shapes
:*
T0*
out_type0
�
Eloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
�
Eloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeShapeYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
�
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
�
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
�
Bloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarEqualDloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar/xEloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
�
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
�
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityPloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0

�
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityNloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
�
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
�
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*U
_classK
IGloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
�
nloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualuloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchwloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
_output_shapes
: *
T0
�
uloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchDloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rankOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*W
_classM
KIloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 
�
wloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchEloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rankOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
�
hloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchnloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranknloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0

�
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityjloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
�
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityhloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
�
iloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitynloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
���������*
dtype0*
_output_shapes
: 
�
}loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDims�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchEloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switch�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchiloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
�
|loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFill�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
�
~loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
�
yloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2}loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims|loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like~loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
���������*
dtype0*
_output_shapes
: 
�
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDims�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:*

Tdim0
�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchFloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switch�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchiloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*Y
_classO
MKloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape
�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1yloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
set_operationa-b*
T0*
validate_indices(*<
_output_shapes*
(:���������:���������:
�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSize�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
�
tloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
�
rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualtloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0
�
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchnloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankiloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*�
_classw
usloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
�
gloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergejloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
�
Mloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergegloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeRloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
�
>loss/Softmax_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
�
@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
�
@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_2Const*
dtype0*
_output_shapes
: *)
value B BSoftmax_sample_weights:0
�
@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
�
@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_4Const*l
valuecBa B[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
�
@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
�
Kloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

�
Mloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
�
Mloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityKloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
�
Lloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
�
Iloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
�
Wloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tJ^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
_output_shapes
: *
T0
*`
_classV
TRloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
�
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
�
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
�
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B BSoftmax_sample_weights:0*
dtype0*
_output_shapes
: 
�
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
�
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*l
valuecBa B[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
�
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
�
Kloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertRloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchRloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
�
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*`
_classV
TRloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
�
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchFloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id* 
_output_shapes
::*
T0*Y
_classO
MKloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape
�
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchEloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
�
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*U
_classK
IGloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
�
Yloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fL^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*`
_classV
TRloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
�
Jloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeYloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Wloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
N*
_output_shapes
: : *
T0

�
3loss/Softmax_loss/broadcast_weights/ones_like/ShapeShapeYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsK^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
_output_shapes
:*
T0*
out_type0
�
3loss/Softmax_loss/broadcast_weights/ones_like/ConstConstK^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
-loss/Softmax_loss/broadcast_weights/ones_likeFill3loss/Softmax_loss/broadcast_weights/ones_like/Shape3loss/Softmax_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:���������
�
#loss/Softmax_loss/broadcast_weightsMulSoftmax_sample_weights-loss/Softmax_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:���������
�
loss/Softmax_loss/MulMulYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#loss/Softmax_loss/broadcast_weights*
T0*#
_output_shapes
:���������
c
loss/Softmax_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
loss/Softmax_loss/SumSumloss/Softmax_loss/Mulloss/Softmax_loss/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
c
loss/Softmax_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
�
loss/Softmax_loss/Sum_1Sum#loss/Softmax_loss/broadcast_weightsloss/Softmax_loss/Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
u
loss/Softmax_loss/truedivRealDivloss/Softmax_loss/Sumloss/Softmax_loss/Sum_1*
_output_shapes
: *
T0
a
loss/Softmax_loss/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
|
loss/Softmax_loss/GreaterGreaterloss/Softmax_loss/Sum_1loss/Softmax_loss/zeros_like*
T0*
_output_shapes
: 
�
loss/Softmax_loss/SelectSelectloss/Softmax_loss/Greaterloss/Softmax_loss/truedivloss/Softmax_loss/zeros_like*
_output_shapes
: *
T0
\
loss/Softmax_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
�
loss/Softmax_loss/MeanMeanloss/Softmax_loss/Selectloss/Softmax_loss/Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
O

loss/mul/xConst*
valueB
 *  �?*
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
���������*
dtype0*
_output_shapes
: 
�
metrics/acc/MaxMaxSoftmax_target!metrics/acc/Max/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:���������
g
metrics/acc/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
metrics/acc/ArgMaxArgMaxSoftmax/Softmaxmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
y
metrics/acc/CastCastmetrics/acc/ArgMax*

SrcT0	*
Truncate( *

DstT0*#
_output_shapes
:���������
k
metrics/acc/EqualEqualmetrics/acc/Maxmetrics/acc/Cast*
T0*#
_output_shapes
:���������
z
metrics/acc/Cast_1Castmetrics/acc/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:���������
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
metrics/acc/MeanMeanmetrics/acc/Cast_1metrics/acc/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
g
$training/TFOptimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
m
(training/TFOptimizer/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
#training/TFOptimizer/gradients/FillFill$training/TFOptimizer/gradients/Shape(training/TFOptimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
�
0training/TFOptimizer/gradients/loss/mul_grad/MulMul#training/TFOptimizer/gradients/Fillloss/Softmax_loss/Mean*
T0*
_output_shapes
: 
�
2training/TFOptimizer/gradients/loss/mul_grad/Mul_1Mul#training/TFOptimizer/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
�
=training/TFOptimizer/gradients/loss/mul_grad/tuple/group_depsNoOp1^training/TFOptimizer/gradients/loss/mul_grad/Mul3^training/TFOptimizer/gradients/loss/mul_grad/Mul_1
�
Etraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependencyIdentity0training/TFOptimizer/gradients/loss/mul_grad/Mul>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul*
_output_shapes
: 
�
Gtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Identity2training/TFOptimizer/gradients/loss/mul_grad/Mul_1>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
�
Htraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
�
Btraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/ReshapeReshapeGtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Htraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
�
@training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB 
�
?training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/TileTileBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Reshape@training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Const*
T0*
_output_shapes
: *

Tmultiples0
�
Btraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Const_1Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Btraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/truedivRealDiv?training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/TileBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Const_1*
T0*
_output_shapes
: 
�
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ctraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/SelectSelectloss/Softmax_loss/GreaterBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/truedivGtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 
�
Etraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/Select_1Selectloss/Softmax_loss/GreaterGtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/zeros_likeBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/truediv*
_output_shapes
: *
T0
�
Mtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/group_depsNoOpD^training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/SelectF^training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/Select_1
�
Utraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/control_dependencyIdentityCtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/SelectN^training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/group_deps*
_output_shapes
: *
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/Select
�
Wtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/control_dependency_1IdentityEtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/Select_1N^training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/group_deps*
T0*X
_classN
LJloc:@training/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/Select_1*
_output_shapes
: 
�
Ctraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
�
Etraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
�
Straining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/ShapeEtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Etraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDivRealDivUtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/control_dependencyloss/Softmax_loss/Sum_1*
T0*
_output_shapes
: 
�
Atraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/SumSumEtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDivStraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
Etraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/ReshapeReshapeAtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/SumCtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
Atraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/NegNegloss/Softmax_loss/Sum*
T0*
_output_shapes
: 
�
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDiv_1RealDivAtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Negloss/Softmax_loss/Sum_1*
T0*
_output_shapes
: 
�
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDiv_2RealDivGtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDiv_1loss/Softmax_loss/Sum_1*
_output_shapes
: *
T0
�
Atraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/mulMulUtraining/TFOptimizer/gradients/loss/Softmax_loss/Select_grad/tuple/control_dependencyGtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/RealDiv_2*
T0*
_output_shapes
: 
�
Ctraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Sum_1SumAtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/mulUtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Reshape_1ReshapeCtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Sum_1Etraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
�
Ntraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/group_depsNoOpF^training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/ReshapeH^training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Reshape_1
�
Vtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/control_dependencyIdentityEtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/ReshapeO^training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/group_deps*
T0*X
_classN
LJloc:@training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Reshape*
_output_shapes
: 
�
Xtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/control_dependency_1IdentityGtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Reshape_1O^training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@training/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/Reshape_1*
_output_shapes
: 
�
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
Atraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/ReshapeReshapeVtraining/TFOptimizer/gradients/loss/Softmax_loss/truediv_grad/tuple/control_dependencyGtraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
?training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/ShapeShapeloss/Softmax_loss/Mul*
T0*
out_type0*
_output_shapes
:
�
>training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/TileTileAtraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Reshape?training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0
�
?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ShapeShapeYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
�
Atraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape_1Shape#loss/Softmax_loss/broadcast_weights*
T0*
out_type0*
_output_shapes
:
�
Otraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ShapeAtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/MulMul>training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Tile#loss/Softmax_loss/broadcast_weights*
T0*#
_output_shapes
:���������
�
=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/SumSum=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/MulOtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
Atraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ReshapeReshape=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Sum?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Mul_1MulYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits>training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Tile*
T0*#
_output_shapes
:���������
�
?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Sum_1Sum?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Mul_1Qtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Ctraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1Reshape?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Sum_1Atraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
�
Jtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/group_depsNoOpB^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ReshapeD^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1
�
Rtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/control_dependencyIdentityAtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ReshapeK^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape*#
_output_shapes
:���������
�
Ttraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/control_dependency_1IdentityCtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1K^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/group_deps*#
_output_shapes
:���������*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1
�
)training/TFOptimizer/gradients/zeros_like	ZerosLike[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:���������

�
�training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:���������
*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
�training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
�training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsRtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/control_dependency�training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
�training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul�training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims�training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:���������

�
Etraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/ShapeShapeloss/Softmax_loss/Log*
T0*
out_type0*
_output_shapes
:
�
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/ReshapeReshape�training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulEtraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
Dtraining/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/Reciprocal
Reciprocalloss/Softmax_loss/clip_by_valueH^training/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/Reshape*
T0*'
_output_shapes
:���������

�
=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mulMulGtraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/ReshapeDtraining/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/Reciprocal*
T0*'
_output_shapes
:���������

�
Itraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ShapeShape'loss/Softmax_loss/clip_by_value/Minimum*
T0*
out_type0*
_output_shapes
:
�
Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_2Shape=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mul*
T0*
out_type0*
_output_shapes
:
�
Otraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Itraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zerosFillKtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_2Otraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������

�
Ptraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/Softmax_loss/clip_by_value/Minimumloss/Softmax_loss/Const*'
_output_shapes
:���������
*
T0
�
Ytraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ShapeKtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Jtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SelectSelectPtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/GreaterEqual=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mulItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros*
T0*'
_output_shapes
:���������

�
Ltraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Select_1SelectPtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/GreaterEqualItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mul*'
_output_shapes
:���������
*
T0
�
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SumSumJtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SelectYtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ReshapeReshapeGtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SumItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
Itraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Sum_1SumLtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Select_1[training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
Mtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1ReshapeItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Sum_1Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Ttraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/group_depsNoOpL^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ReshapeN^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1
�
\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependencyIdentityKtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ReshapeU^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*^
_classT
RPloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape
�
^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependency_1IdentityMtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1U^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/group_deps*
_output_shapes
: *
T0*`
_classV
TRloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1
�
Qtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ShapeShapeSoftmax/Softmax*
_output_shapes
:*
T0*
out_type0
�
Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_2Shape\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:
�
Wtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
Qtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zerosFillStraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_2Wtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:���������
*
T0*

index_type0
�
Utraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualSoftmax/Softmaxloss/Softmax_loss/sub*
T0*'
_output_shapes
:���������

�
atraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ShapeStraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Rtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/SelectSelectUtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/LessEqual\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependencyQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������
*
T0
�
Ttraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Select_1SelectUtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/LessEqualQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependency*'
_output_shapes
:���������
*
T0
�
Otraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/SumSumRtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Selectatraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ReshapeReshapeOtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/SumQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
Qtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Sum_1SumTtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Select_1ctraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
Utraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Sum_1Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_depsNoOpT^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ReshapeV^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1
�
dtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependencyIdentityStraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape]^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:���������

�
ftraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependency_1IdentityUtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1]^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_deps*
_output_shapes
: *
T0*h
_class^
\Zloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1
�
7training/TFOptimizer/gradients/Softmax/Softmax_grad/mulMuldtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependencySoftmax/Softmax*'
_output_shapes
:���������
*
T0
�
Itraining/TFOptimizer/gradients/Softmax/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
7training/TFOptimizer/gradients/Softmax/Softmax_grad/SumSum7training/TFOptimizer/gradients/Softmax/Softmax_grad/mulItraining/TFOptimizer/gradients/Softmax/Softmax_grad/Sum/reduction_indices*
T0*'
_output_shapes
:���������*

Tidx0*
	keep_dims(
�
7training/TFOptimizer/gradients/Softmax/Softmax_grad/subSubdtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependency7training/TFOptimizer/gradients/Softmax/Softmax_grad/Sum*
T0*'
_output_shapes
:���������

�
9training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1Mul7training/TFOptimizer/gradients/Softmax/Softmax_grad/subSoftmax/Softmax*
T0*'
_output_shapes
:���������

�
?training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGradBiasAddGrad9training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1*
data_formatNHWC*
_output_shapes
:
*
T0
�
Dtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/group_depsNoOp@^training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGrad:^training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1
�
Ltraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependencyIdentity9training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1E^training/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1*'
_output_shapes
:���������

�
Ntraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependency_1Identity?training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGradE^training/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/group_deps*
_output_shapes
:
*
T0*R
_classH
FDloc:@training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGrad
�
9training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMulMatMulLtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependencySoftmax/MatMul/ReadVariableOp*
transpose_a( *(
_output_shapes
:����������
*
transpose_b(*
T0
�
;training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1MatMulflatten/ReshapeLtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	�

*
transpose_b( *
T0
�
Ctraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/group_depsNoOp:^training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul<^training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1
�
Ktraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependencyIdentity9training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMulD^training/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul*(
_output_shapes
:����������

�
Mtraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependency_1Identity;training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1D^training/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1*
_output_shapes
:	�


�
9training/TFOptimizer/gradients/flatten/Reshape_grad/ShapeShape
Conv1/Relu*
T0*
out_type0*
_output_shapes
:
�
;training/TFOptimizer/gradients/flatten/Reshape_grad/ReshapeReshapeKtraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependency9training/TFOptimizer/gradients/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:���������
�
7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGradReluGrad;training/TFOptimizer/gradients/flatten/Reshape_grad/Reshape
Conv1/Relu*
T0*/
_output_shapes
:���������
�
=training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGradBiasAddGrad7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0
�
Btraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_depsNoOp>^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad8^training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad
�
Jtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependencyIdentity7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGradC^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad*/
_output_shapes
:���������
�
Ltraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency_1Identity=training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGradC^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*P
_classF
DBloc:@training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad
�
7training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeNShapeNConv1_inputConv1/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0
�
Dtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput7training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeNConv1/Conv2D/ReadVariableOpJtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency*/
_output_shapes
:���������*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
�
Etraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterConv1_input9training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeN:1Jtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:
�
Atraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_depsNoOpF^training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilterE^training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput
�
Itraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependencyIdentityDtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInputB^training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*W
_classM
KIloc:@training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput
�
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
training/TFOptimizer/IdentityIdentity(training/TFOptimizer/Read/ReadVariableOp*
_output_shapes
:*
T0
�
.training/TFOptimizer/beta1_power/initial_valueConst*
valueB
 *fff?*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
dtype0*
_output_shapes
: 
�
 training/TFOptimizer/beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
	container *
shape: 
�
'training/TFOptimizer/beta1_power/AssignAssign training/TFOptimizer/beta1_power.training/TFOptimizer/beta1_power/initial_value*
use_locking(*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: 
�
%training/TFOptimizer/beta1_power/readIdentity training/TFOptimizer/beta1_power*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
_output_shapes
: 
q
*training/TFOptimizer/Read_1/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
|
training/TFOptimizer/Identity_1Identity*training/TFOptimizer/Read_1/ReadVariableOp*
_output_shapes
:*
T0
�
.training/TFOptimizer/beta2_power/initial_valueConst*
valueB
 *w�?*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
dtype0*
_output_shapes
: 
�
 training/TFOptimizer/beta2_power
VariableV2*
shared_name *=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
	container *
shape: *
dtype0*
_output_shapes
: 
�
'training/TFOptimizer/beta2_power/AssignAssign training/TFOptimizer/beta2_power.training/TFOptimizer/beta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp
�
%training/TFOptimizer/beta2_power/readIdentity training/TFOptimizer/beta2_power*
_output_shapes
: *
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp
�
:training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOpReadVariableOpConv1/kernel*
dtype0*&
_output_shapes
:
�
/training/TFOptimizer/Conv1/kernel/Adam/IdentityIdentity:training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp*
T0*&
_output_shapes
:
�
#Conv1/kernel/Adam/Initializer/zerosConst*%
valueB*    *M
_classC
A?loc:@training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp*
dtype0*&
_output_shapes
:
�
Conv1/kernel/AdamVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_nameConv1/kernel/Adam*M
_classC
A?loc:@training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp
�
2Conv1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel/Adam*
_output_shapes
: *M
_classC
A?loc:@training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp
�
Conv1/kernel/Adam/AssignAssignVariableOpConv1/kernel/Adam#Conv1/kernel/Adam/Initializer/zeros*
dtype0*M
_classC
A?loc:@training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp
�
%Conv1/kernel/Adam/Read/ReadVariableOpReadVariableOpConv1/kernel/Adam*M
_classC
A?loc:@training/TFOptimizer/Conv1/kernel/Adam/Read/ReadVariableOp*
dtype0*&
_output_shapes
:
�
<training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOpReadVariableOpConv1/kernel*
dtype0*&
_output_shapes
:
�
1training/TFOptimizer/Conv1/kernel/Adam_1/IdentityIdentity<training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOp*
T0*&
_output_shapes
:
�
%Conv1/kernel/Adam_1/Initializer/zerosConst*%
valueB*    *O
_classE
CAloc:@training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOp*
dtype0*&
_output_shapes
:
�
Conv1/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameConv1/kernel/Adam_1*O
_classE
CAloc:@training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOp*
	container *
shape:
�
4Conv1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel/Adam_1*O
_classE
CAloc:@training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
�
Conv1/kernel/Adam_1/AssignAssignVariableOpConv1/kernel/Adam_1%Conv1/kernel/Adam_1/Initializer/zeros*O
_classE
CAloc:@training/TFOptimizer/Conv1/kernel/Adam_1/Read/ReadVariableOp*
dtype0
�
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
�
-training/TFOptimizer/Conv1/bias/Adam/IdentityIdentity8training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
T0*
_output_shapes
:
�
!Conv1/bias/Adam/Initializer/zerosConst*
valueB*    *K
_classA
?=loc:@training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:
�
Conv1/bias/AdamVarHandleOp* 
shared_nameConv1/bias/Adam*K
_classA
?=loc:@training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
	container *
shape:*
dtype0*
_output_shapes
: 
�
0Conv1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/bias/Adam*K
_classA
?=loc:@training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
_output_shapes
: 
�
Conv1/bias/Adam/AssignAssignVariableOpConv1/bias/Adam!Conv1/bias/Adam/Initializer/zeros*K
_classA
?=loc:@training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
dtype0
�
#Conv1/bias/Adam/Read/ReadVariableOpReadVariableOpConv1/bias/Adam*K
_classA
?=loc:@training/TFOptimizer/Conv1/bias/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:
�
:training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
�
/training/TFOptimizer/Conv1/bias/Adam_1/IdentityIdentity:training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
T0*
_output_shapes
:
�
#Conv1/bias/Adam_1/Initializer/zerosConst*
valueB*    *M
_classC
A?loc:@training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:
�
Conv1/bias/Adam_1VarHandleOp*"
shared_nameConv1/bias/Adam_1*M
_classC
A?loc:@training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
	container *
shape:*
dtype0*
_output_shapes
: 
�
2Conv1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/bias/Adam_1*M
_classC
A?loc:@training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
�
Conv1/bias/Adam_1/AssignAssignVariableOpConv1/bias/Adam_1#Conv1/bias/Adam_1/Initializer/zeros*M
_classC
A?loc:@training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
dtype0
�
%Conv1/bias/Adam_1/Read/ReadVariableOpReadVariableOpConv1/bias/Adam_1*M
_classC
A?loc:@training/TFOptimizer/Conv1/bias/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:
�
<training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOpReadVariableOpSoftmax/kernel*
dtype0*
_output_shapes
:	�


�
1training/TFOptimizer/Softmax/kernel/Adam/IdentityIdentity<training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
T0*
_output_shapes
:	�


�
5Softmax/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"H  
   *O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp
�
+Softmax/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
: 
�
%Softmax/kernel/Adam/Initializer/zerosFill5Softmax/kernel/Adam/Initializer/zeros/shape_as_tensor+Softmax/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
_output_shapes
:	�


�
Softmax/kernel/AdamVarHandleOp*
	container *
shape:	�

*
dtype0*
_output_shapes
: *$
shared_nameSoftmax/kernel/Adam*O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp
�
4Softmax/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/kernel/Adam*O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
_output_shapes
: 
�
Softmax/kernel/Adam/AssignAssignVariableOpSoftmax/kernel/Adam%Softmax/kernel/Adam/Initializer/zeros*O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
dtype0
�
'Softmax/kernel/Adam/Read/ReadVariableOpReadVariableOpSoftmax/kernel/Adam*O
_classE
CAloc:@training/TFOptimizer/Softmax/kernel/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:	�


�
>training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax/kernel*
dtype0*
_output_shapes
:	�


�
3training/TFOptimizer/Softmax/kernel/Adam_1/IdentityIdentity>training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
T0*
_output_shapes
:	�


�
7Softmax/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"H  
   *Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:
�
-Softmax/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp
�
'Softmax/kernel/Adam_1/Initializer/zerosFill7Softmax/kernel/Adam_1/Initializer/zeros/shape_as_tensor-Softmax/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
:	�


�
Softmax/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nameSoftmax/kernel/Adam_1*Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
	container *
shape:	�


�
6Softmax/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/kernel/Adam_1*Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
�
Softmax/kernel/Adam_1/AssignAssignVariableOpSoftmax/kernel/Adam_1'Softmax/kernel/Adam_1/Initializer/zeros*Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp*
dtype0
�
)Softmax/kernel/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax/kernel/Adam_1*
dtype0*
_output_shapes
:	�

*Q
_classG
ECloc:@training/TFOptimizer/Softmax/kernel/Adam_1/Read/ReadVariableOp
�
:training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOpReadVariableOpSoftmax/bias*
dtype0*
_output_shapes
:

�
/training/TFOptimizer/Softmax/bias/Adam/IdentityIdentity:training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp*
_output_shapes
:
*
T0
�
#Softmax/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:
*
valueB
*    *M
_classC
A?loc:@training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp
�
Softmax/bias/AdamVarHandleOp*"
shared_nameSoftmax/bias/Adam*M
_classC
A?loc:@training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp*
	container *
shape:
*
dtype0*
_output_shapes
: 
�
2Softmax/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/bias/Adam*M
_classC
A?loc:@training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp*
_output_shapes
: 
�
Softmax/bias/Adam/AssignAssignVariableOpSoftmax/bias/Adam#Softmax/bias/Adam/Initializer/zeros*
dtype0*M
_classC
A?loc:@training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp
�
%Softmax/bias/Adam/Read/ReadVariableOpReadVariableOpSoftmax/bias/Adam*M
_classC
A?loc:@training/TFOptimizer/Softmax/bias/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:

�
<training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax/bias*
dtype0*
_output_shapes
:

�
1training/TFOptimizer/Softmax/bias/Adam_1/IdentityIdentity<training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOp*
T0*
_output_shapes
:

�
%Softmax/bias/Adam_1/Initializer/zerosConst*
valueB
*    *O
_classE
CAloc:@training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:

�
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
�
4Softmax/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/bias/Adam_1*
_output_shapes
: *O
_classE
CAloc:@training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOp
�
Softmax/bias/Adam_1/AssignAssignVariableOpSoftmax/bias/Adam_1%Softmax/bias/Adam_1/Initializer/zeros*O
_classE
CAloc:@training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOp*
dtype0
�
'Softmax/bias/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax/bias/Adam_1*
dtype0*
_output_shapes
:
*O
_classE
CAloc:@training/TFOptimizer/Softmax/bias/Adam_1/Read/ReadVariableOp
l
'training/TFOptimizer/Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
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
 *w�?*
dtype0*
_output_shapes
: 
f
!training/TFOptimizer/Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w�+2
�
Atraining/TFOptimizer/Adam/update_Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*
dtype0*&
_output_shapes
:
�
6training/TFOptimizer/Adam/update_Conv1/kernel/IdentityIdentityAtraining/TFOptimizer/Adam/update_Conv1/kernel/Read/ReadVariableOp*
T0*&
_output_shapes
:
�
?training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdamResourceApplyAdamConv1/kernelConv1/kernel/AdamConv1/kernel/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonKtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*T
_classJ
HFloc:@training/TFOptimizer/Adam/update_Conv1/kernel/Read/ReadVariableOp
�
?training/TFOptimizer/Adam/update_Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
�
4training/TFOptimizer/Adam/update_Conv1/bias/IdentityIdentity?training/TFOptimizer/Adam/update_Conv1/bias/Read/ReadVariableOp*
T0*
_output_shapes
:
�
=training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdamResourceApplyAdam
Conv1/biasConv1/bias/AdamConv1/bias/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonLtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency_1*
T0*R
_classH
FDloc:@training/TFOptimizer/Adam/update_Conv1/bias/Read/ReadVariableOp*
use_nesterov( *
use_locking( 
�
Ctraining/TFOptimizer/Adam/update_Softmax/kernel/Read/ReadVariableOpReadVariableOpSoftmax/kernel*
dtype0*
_output_shapes
:	�


�
8training/TFOptimizer/Adam/update_Softmax/kernel/IdentityIdentityCtraining/TFOptimizer/Adam/update_Softmax/kernel/Read/ReadVariableOp*
T0*
_output_shapes
:	�


�
Atraining/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdamResourceApplyAdamSoftmax/kernelSoftmax/kernel/AdamSoftmax/kernel/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonMtraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependency_1*
T0*V
_classL
JHloc:@training/TFOptimizer/Adam/update_Softmax/kernel/Read/ReadVariableOp*
use_nesterov( *
use_locking( 
�
Atraining/TFOptimizer/Adam/update_Softmax/bias/Read/ReadVariableOpReadVariableOpSoftmax/bias*
dtype0*
_output_shapes
:

�
6training/TFOptimizer/Adam/update_Softmax/bias/IdentityIdentityAtraining/TFOptimizer/Adam/update_Softmax/bias/Read/ReadVariableOp*
T0*
_output_shapes
:

�
?training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamResourceApplyAdamSoftmax/biasSoftmax/bias/AdamSoftmax/bias/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonNtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*T
_classJ
HFloc:@training/TFOptimizer/Adam/update_Softmax/bias/Read/ReadVariableOp*
use_nesterov( 
�
training/TFOptimizer/Adam/mulMul%training/TFOptimizer/beta1_power/readtraining/TFOptimizer/Adam/beta1>^training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamB^training/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
_output_shapes
: 
�
 training/TFOptimizer/Adam/AssignAssign training/TFOptimizer/beta1_powertraining/TFOptimizer/Adam/mul*
use_locking( *
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: 
�
training/TFOptimizer/Adam/mul_1Mul%training/TFOptimizer/beta2_power/readtraining/TFOptimizer/Adam/beta2>^training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamB^training/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam*
_output_shapes
: *
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp
�
"training/TFOptimizer/Adam/Assign_1Assign training/TFOptimizer/beta2_powertraining/TFOptimizer/Adam/mul_1*
use_locking( *
T0*l
_classb
`-loc:@training/TFOptimizer/Read/ReadVariableOp/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
validate_shape(*
_output_shapes
: 
�
 training/TFOptimizer/Adam/updateNoOp!^training/TFOptimizer/Adam/Assign#^training/TFOptimizer/Adam/Assign_1>^training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamB^training/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam
�
-training/TFOptimizer/Adam/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations!^training/TFOptimizer/Adam/update*
dtype0	*
_output_shapes
: 
~
"training/TFOptimizer/Adam/IdentityIdentity-training/TFOptimizer/Adam/Read/ReadVariableOp*
T0	*
_output_shapes
: 
�
training/TFOptimizer/Adam/ConstConst!^training/TFOptimizer/Adam/update*
value	B	 R*@
_class6
42loc:@training/TFOptimizer/Adam/Read/ReadVariableOp*
dtype0	*
_output_shapes
: 
�
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
�
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
�
IsVariableInitialized_1IsVariableInitialized training/TFOptimizer/beta2_power*
dtype0*
_output_shapes
: *=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp
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
�
initNoOp^Conv1/bias/Adam/Assign^Conv1/bias/Adam_1/Assign^Conv1/bias/Assign^Conv1/kernel/Adam/Assign^Conv1/kernel/Adam_1/Assign^Conv1/kernel/Assign^Softmax/bias/Adam/Assign^Softmax/bias/Adam_1/Assign^Softmax/bias/Assign^Softmax/kernel/Adam/Assign^Softmax/kernel/Adam_1/Assign^Softmax/kernel/Assign^TFOptimizer/iterations/Assign(^training/TFOptimizer/beta1_power/Assign(^training/TFOptimizer/beta2_power/Assign
0

group_depsNoOp	^loss/mul^metrics/acc/Mean
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_a497204d6a8041548d73038dfe7d51fe/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*�
value�B�B
Conv1/biasBConv1/bias/AdamBConv1/bias/Adam_1BConv1/kernelBConv1/kernel/AdamBConv1/kernel/Adam_1BSoftmax/biasBSoftmax/bias/AdamBSoftmax/bias/Adam_1BSoftmax/kernelBSoftmax/kernel/AdamBSoftmax/kernel/Adam_1BTFOptimizer/iterationsB training/TFOptimizer/beta1_powerB training/TFOptimizer/beta2_power*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*1
value(B&B B B B B B B B B B B B B B B 
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConv1/bias/Read/ReadVariableOp#Conv1/bias/Adam/Read/ReadVariableOp%Conv1/bias/Adam_1/Read/ReadVariableOp Conv1/kernel/Read/ReadVariableOp%Conv1/kernel/Adam/Read/ReadVariableOp'Conv1/kernel/Adam_1/Read/ReadVariableOp Softmax/bias/Read/ReadVariableOp%Softmax/bias/Adam/Read/ReadVariableOp'Softmax/bias/Adam_1/Read/ReadVariableOp"Softmax/kernel/Read/ReadVariableOp'Softmax/kernel/Adam/Read/ReadVariableOp)Softmax/kernel/Adam_1/Read/ReadVariableOp*TFOptimizer/iterations/Read/ReadVariableOp training/TFOptimizer/beta1_power training/TFOptimizer/beta2_power*
dtypes
2	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
_output_shapes
:*
T0*

axis 
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
�
save/RestoreV2/tensor_namesConst*�
value�B�B
Conv1/biasBConv1/bias/AdamBConv1/bias/Adam_1BConv1/kernelBConv1/kernel/AdamBConv1/kernel/Adam_1BSoftmax/biasBSoftmax/bias/AdamBSoftmax/bias/Adam_1BSoftmax/kernelBSoftmax/kernel/AdamBSoftmax/kernel/Adam_1BTFOptimizer/iterationsB training/TFOptimizer/beta1_powerB training/TFOptimizer/beta2_power*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*P
_output_shapes>
<:::::::::::::::*
dtypes
2	
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
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
W
save/AssignVariableOp_6AssignVariableOpSoftmax/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
_output_shapes
:*
T0
\
save/AssignVariableOp_7AssignVariableOpSoftmax/bias/Adamsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
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
save/Identity_13Identitysave/RestoreV2:12*
_output_shapes
:*
T0	
c
save/AssignVariableOp_12AssignVariableOpTFOptimizer/iterationssave/Identity_13*
dtype0	
�
save/AssignAssign training/TFOptimizer/beta1_powersave/RestoreV2:13*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp
�
save/Assign_1Assign training/TFOptimizer/beta2_powersave/RestoreV2:14*
use_locking(*
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
validate_shape(*
_output_shapes
: 
�
save/restore_shardNoOp^save/Assign^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9^save/Assign_1
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"�
trainable_variables��
x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08
�
Softmax/kernel:0Softmax/kernel/Assign$Softmax/kernel/Read/ReadVariableOp:0(2+Softmax/kernel/Initializer/random_uniform:08
o
Softmax/bias:0Softmax/bias/Assign"Softmax/bias/Read/ReadVariableOp:0(2 Softmax/bias/Initializer/zeros:08
�
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08")
train_op

training/TFOptimizer/Adam"�w
cond_context�w�w
�
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textQloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *�
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0�
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1�
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
�V
Sloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*�'
iloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
iloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
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
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0�
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank:0yloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0�
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0�
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0�
Floss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rank:0wloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0�
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02�"
�"
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textkloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *� 
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0�
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0�
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1�
�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0�
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0�loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12�

�

mloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*�
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0�
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0�
ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
�
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textNloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *�
Yloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0�
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
�
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*�
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
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0�
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0�
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0�
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0�
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0�
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0"�
	variables��
x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08
�
Softmax/kernel:0Softmax/kernel/Assign$Softmax/kernel/Read/ReadVariableOp:0(2+Softmax/kernel/Initializer/random_uniform:08
o
Softmax/bias:0Softmax/bias/Assign"Softmax/bias/Read/ReadVariableOp:0(2 Softmax/bias/Initializer/zeros:08
�
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08
�
"training/TFOptimizer/beta1_power:0'training/TFOptimizer/beta1_power/Assign'training/TFOptimizer/beta1_power/read:020training/TFOptimizer/beta1_power/initial_value:0
�
"training/TFOptimizer/beta2_power:0'training/TFOptimizer/beta2_power/Assign'training/TFOptimizer/beta2_power/read:020training/TFOptimizer/beta2_power/initial_value:0
�
Conv1/kernel/Adam:0Conv1/kernel/Adam/Assign'Conv1/kernel/Adam/Read/ReadVariableOp:0(2%Conv1/kernel/Adam/Initializer/zeros:0
�
Conv1/kernel/Adam_1:0Conv1/kernel/Adam_1/Assign)Conv1/kernel/Adam_1/Read/ReadVariableOp:0(2'Conv1/kernel/Adam_1/Initializer/zeros:0
y
Conv1/bias/Adam:0Conv1/bias/Adam/Assign%Conv1/bias/Adam/Read/ReadVariableOp:0(2#Conv1/bias/Adam/Initializer/zeros:0
�
Conv1/bias/Adam_1:0Conv1/bias/Adam_1/Assign'Conv1/bias/Adam_1/Read/ReadVariableOp:0(2%Conv1/bias/Adam_1/Initializer/zeros:0
�
Softmax/kernel/Adam:0Softmax/kernel/Adam/Assign)Softmax/kernel/Adam/Read/ReadVariableOp:0(2'Softmax/kernel/Adam/Initializer/zeros:0
�
Softmax/kernel/Adam_1:0Softmax/kernel/Adam_1/Assign+Softmax/kernel/Adam_1/Read/ReadVariableOp:0(2)Softmax/kernel/Adam_1/Initializer/zeros:0
�
Softmax/bias/Adam:0Softmax/bias/Adam/Assign'Softmax/bias/Adam/Read/ReadVariableOp:0(2%Softmax/bias/Adam/Initializer/zeros:0
�
Softmax/bias/Adam_1:0Softmax/bias/Adam_1/Assign)Softmax/bias/Adam_1/Read/ReadVariableOp:0(2'Softmax/bias/Adam_1/Initializer/zeros:0*�
serving_default�
;
input_image,
Conv1_input:0���������=
Softmax/Softmax:0(
Softmax/Softmax:0���������
tensorflow/serving/predict