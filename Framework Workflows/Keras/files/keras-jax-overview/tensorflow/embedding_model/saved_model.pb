��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
H
ShardedFilename
basename	
shard

num_shards
filename
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
XlaCallModule
args2Tin
output2Tout"
versionint"
modulestring"
Soutlist(shape)("
Tout
list(type)("
Tin
list(type)("!
dim_args_speclist(string)
 "
	platformslist(string)
 "
function_list
list(func)
 ""
has_token_input_outputbool( "#
disabled_checkslist(string)
 �"serve*2.18.02v2.18.0-rc2-4-g6550e4bd8028��
�
VariableVarHandleOp*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�

Variable_1VarHandleOp*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0
�

Variable_2VarHandleOp*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape: *
shared_name
Variable_2
a
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
: *
dtype0
�

Variable_3VarHandleOp*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:*
shared_name
Variable_3
e
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:*
dtype0
�

Variable_4VarHandleOp*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:*
shared_name
Variable_4
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:*
dtype0
�

Variable_5VarHandleOp*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:*
shared_name
Variable_5
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:*
dtype0
�

Variable_6VarHandleOp*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape
:*
shared_name
Variable_6
i
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes

:*
dtype0
�

Variable_7VarHandleOp*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:*
shared_name
Variable_7
e
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:*
dtype0
�

Variable_8VarHandleOp*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape
:*
shared_name
Variable_8
i
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes

:*
dtype0
�

Variable_9VarHandleOp*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:*
shared_name
Variable_9
e
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
:*
dtype0
�
Variable_10VarHandleOp*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape
:*
shared_nameVariable_10
k
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes

:*
dtype0
t
serve_input_layerPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserve_input_layerVariable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU 2J 8� �J *9
f4R2
0__inference_signature_wrapper_stateful_fn_111832
~
serving_default_input_layerPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_layerVariable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU 2J 8� �J *9
f4R2
0__inference_signature_wrapper_stateful_fn_111859

NoOpNoOp
�	
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�	
value�	B�	 B�	
d
	variables
trainable_variables
non_trainable_variables
	serve

signatures*
R
0
1
2
	3

4
5
6
7
8
9
10*
.
0
1
2
	3

4
5*
'
0
1
2
3
4*

trace_0* 
"
	serve
serving_default* 
KE
VARIABLE_VALUEVariable_10&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_9&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_8&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_7&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_6&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_5&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_4&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_3&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_2&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_1&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEVariable'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *(
f#R!
__inference__traced_save_112078
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *+
f&R$
"__inference__traced_restore_112120��
�4
�
"__inference__traced_restore_112120
file_prefix.
assignvariableop_variable_10:+
assignvariableop_1_variable_9:/
assignvariableop_2_variable_8:+
assignvariableop_3_variable_7:/
assignvariableop_4_variable_6:+
assignvariableop_5_variable_5:+
assignvariableop_6_variable_4:+
assignvariableop_7_variable_3:'
assignvariableop_8_variable_2: +
assignvariableop_9_variable_1:*
assignvariableop_10_variable:
identity_12��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_10Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_9Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_8Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_7Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_6Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_5Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_4Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_3Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_2Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variableIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_11Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_12IdentityIdentity_11:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_12Identity_12:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:($
"
_user_specified_name
Variable:*
&
$
_user_specified_name
Variable_1:*	&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�r
�
__inference_stateful_fn_111804
input_layer6
$jax2tf_arg_0_readvariableop_resource:2
$jax2tf_arg_1_readvariableop_resource:6
$jax2tf_arg_2_readvariableop_resource:2
$jax2tf_arg_3_readvariableop_resource:6
$jax2tf_arg_4_readvariableop_resource:2
$jax2tf_arg_5_readvariableop_resource:2
$jax2tf_arg_6_readvariableop_resource:2
$jax2tf_arg_7_readvariableop_resource:.
$jax2tf_arg_8_readvariableop_resource: 2
$jax2tf_arg_9_readvariableop_resource:3
%jax2tf_arg_10_readvariableop_resource:

identity_6��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�XlaCallModule�jax2tf_arg_0/ReadVariableOp�jax2tf_arg_1/ReadVariableOp�jax2tf_arg_10/ReadVariableOp�jax2tf_arg_2/ReadVariableOp�jax2tf_arg_3/ReadVariableOp�jax2tf_arg_4/ReadVariableOp�jax2tf_arg_5/ReadVariableOp�jax2tf_arg_6/ReadVariableOp�jax2tf_arg_7/ReadVariableOp�jax2tf_arg_8/ReadVariableOp�jax2tf_arg_9/ReadVariableOp�
jax2tf_arg_0/ReadVariableOpReadVariableOp$jax2tf_arg_0_readvariableop_resource*
_output_shapes

:*
dtype0f
jax2tf_arg_0Identity#jax2tf_arg_0/ReadVariableOp:value:0*
T0*
_output_shapes

:|
jax2tf_arg_1/ReadVariableOpReadVariableOp$jax2tf_arg_1_readvariableop_resource*
_output_shapes
:*
dtype0b
jax2tf_arg_1Identity#jax2tf_arg_1/ReadVariableOp:value:0*
T0*
_output_shapes
:�
jax2tf_arg_2/ReadVariableOpReadVariableOp$jax2tf_arg_2_readvariableop_resource*
_output_shapes

:*
dtype0f
jax2tf_arg_2Identity#jax2tf_arg_2/ReadVariableOp:value:0*
T0*
_output_shapes

:|
jax2tf_arg_3/ReadVariableOpReadVariableOp$jax2tf_arg_3_readvariableop_resource*
_output_shapes
:*
dtype0b
jax2tf_arg_3Identity#jax2tf_arg_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
jax2tf_arg_4/ReadVariableOpReadVariableOp$jax2tf_arg_4_readvariableop_resource*
_output_shapes

:*
dtype0f
jax2tf_arg_4Identity#jax2tf_arg_4/ReadVariableOp:value:0*
T0*
_output_shapes

:|
jax2tf_arg_5/ReadVariableOpReadVariableOp$jax2tf_arg_5_readvariableop_resource*
_output_shapes
:*
dtype0b
jax2tf_arg_5Identity#jax2tf_arg_5/ReadVariableOp:value:0*
T0*
_output_shapes
:|
jax2tf_arg_6/ReadVariableOpReadVariableOp$jax2tf_arg_6_readvariableop_resource*
_output_shapes
:*
dtype0b
jax2tf_arg_6Identity#jax2tf_arg_6/ReadVariableOp:value:0*
T0*
_output_shapes
:|
jax2tf_arg_7/ReadVariableOpReadVariableOp$jax2tf_arg_7_readvariableop_resource*
_output_shapes
:*
dtype0b
jax2tf_arg_7Identity#jax2tf_arg_7/ReadVariableOp:value:0*
T0*
_output_shapes
:x
jax2tf_arg_8/ReadVariableOpReadVariableOp$jax2tf_arg_8_readvariableop_resource*
_output_shapes
: *
dtype0^
jax2tf_arg_8Identity#jax2tf_arg_8/ReadVariableOp:value:0*
T0*
_output_shapes
: |
jax2tf_arg_9/ReadVariableOpReadVariableOp$jax2tf_arg_9_readvariableop_resource*
_output_shapes
:*
dtype0b
jax2tf_arg_9Identity#jax2tf_arg_9/ReadVariableOp:value:0*
T0*
_output_shapes
:~
jax2tf_arg_10/ReadVariableOpReadVariableOp%jax2tf_arg_10_readvariableop_resource*
_output_shapes
:*
dtype0d
jax2tf_arg_10Identity$jax2tf_arg_10/ReadVariableOp:value:0*
T0*
_output_shapes
:X
jax2tf_arg_11Identityinput_layer*
T0*'
_output_shapes
:����������/
XlaCallModuleXlaCallModulejax2tf_arg_0:output:0jax2tf_arg_1:output:0jax2tf_arg_2:output:0jax2tf_arg_3:output:0jax2tf_arg_4:output:0jax2tf_arg_5:output:0jax2tf_arg_6:output:0jax2tf_arg_7:output:0jax2tf_arg_8:output:0jax2tf_arg_9:output:0jax2tf_arg_10:output:0jax2tf_arg_11:output:0*7
Sout/
-:���������::: ::*
Tin
2*
Tout

2*A
_output_shapes/
-:���������::: ::*�+
module�+�+ML�RStableHLO_v1.8.1 5%##'+/37;?CGKO�K�#w/O/#;?���G7777W[�U3�3�E);{+bf-��/;qu1	�%z35*.zE��7W]9;s=?��AC~�EKMO1Q1GIKMO5Y[)Q_eacS7�gk5i7_m9	oR=ryw]U}=���W!�"	Y[�]�_�a�c�e�g;#?)i-       =!               k���	    ��-        ��������m9oq	   	   	   ������������#/��s��u��w��y��{��}����������������#3#5#7#9	���3	   �X�G��<���:<���A��;��Z;��<a�6��[�;�\<m�軽l$<H)96�U<c��� <V/9<# �;,"��[�b���^�:~�t85�":ń=���ڹ6�xo#7IݰB�0{O	�n@�N,@ }@+j�?X�?�W�?P��?��?�֗?/Z�?L��?�Pe?��}?��M?�PV?�$6?�Q?}�-?b�(? a?�?<?})�>`I�>0
�>Aqn>��$>���=�)|G	   	���6�>�F�N�V�^��jvnr��#~'��	������!��c������������%�'r�	�������"#��	��
�j%'"	&�2:A6�>FABCV:JR	NBVZ^bf!jnr�v���G�-#���G�C��9	�J��-����/������/������/"
�������������-�
�-�	)+)+	)y	)	1) ��������	) ��������A	) ��������!	) ��������y	)	+)y	)	)yA	)A	)A!	)!	)!	)	))!#%'%!#%')))	)C)A	)!	)	)I�
QI�
P�+9=AEIM) 	BF�!F�	G#EF	!#%')P�i�;�?�C�G�K�O�2:BJR+Z !	BBBBBBBF)#	F%+-�'F?!!?13F7#	F59/;F)#=F+%AFC	FAE?GF'IF)#KF+%C	FQ	FOSMUF)WF)#YF+%EF_	F]a[cF+egP-w# BB/F		F1P3w' BB/F		F1P5w BB/F		F1 ~.�#	Q�!A[�'QAAC�A!�)	3!U����C#%)9	������ţ-)9builtin vhlo module constant_v1 reshape_v1 concatenate_v1 dynamic_broadcast_in_dim_v1 func_v1 return_v1 maximum_v1 broadcast_in_dim_v1 call_v1 dot_general_v2 add_v1 subtract_v1 sqrt_v1 divide_v1 get_dimension_size_v1 compare_v1 custom_call_v1 call /home/jupyter/.local/lib/python3.10/site-packages/keras/src/backend/jax/numpy.py /home/jupyter/.local/lib/python3.10/site-packages/keras/src/layers/preprocessing/normalization.py /home/jupyter/.local/lib/python3.10/site-packages/keras/src/layers/core/dense.py __call__ sparse_wrapper /home/jupyter/.local/lib/python3.10/site-packages/keras/src/backend/jax/sparse.py /home/jupyter/.local/lib/python3.10/site-packages/keras/src/export/export_lib.py relu /home/jupyter/.local/lib/python3.10/site-packages/keras/src/activations/activations.py error_handler /home/jupyter/.local/lib/python3.10/site-packages/keras/src/utils/traceback_utils.py matmul /home/jupyter/.local/lib/python3.10/site-packages/keras/src/ops/numpy.py add jax.uses_shape_polymorphism mhlo.num_partitions mhlo.num_replicas jit_stateless_fn jit(stateless_fn)/jit(main)/pjit /home/jupyter/.local/lib/python3.10/site-packages/keras/src/backend/jax/nn.py static_call /home/jupyter/.local/lib/python3.10/site-packages/keras/src/ops/operation.py /home/jupyter/.local/lib/python3.10/site-packages/keras/src/layers/layer.py /home/jupyter/.local/lib/python3.10/site-packages/keras/src/models/functional.py jit(stateless_fn)/jit(main)/jit(relu)/max variables[0] variables[1] variables[2] variables[3] variables[4] variables[5] jax.result_info private _wrapped_jax_export_main relu_0 relu_1 [0] [1][0] [1][1] [1][2] [1][3] [1][4] main public jax.global_constant batch Input shapes do not match the polymorphic shapes specification. Expected value >= 1 for dimension variable 'batch'. Using the following polymorphic shapes specifications: args[1].shape = (batch, 30). Obtained dimension variables: 'batch' = {0} from specification 'batch' for dimension args[1].shape[0] (= {0}), . Please see https://jax.readthedocs.io/en/latest/export/shape_poly.html#shape-assertion-errors for more details.  shape_assertion variables[6] variables[7] variables[8] variables[9] variables[10] args[0] jit(stateless_fn)/jit(main)/sub subtract /home/jupyter/.local/lib/python3.10/site-packages/keras/src/layers/preprocessing/tf_data_layer.py jit(stateless_fn)/jit(main)/sqrt sqrt jit(stateless_fn)/jit(main)/max maximum jit(stateless_fn)/jit(main)/div divide jit(stateless_fn)/jit(main)/dot_general _run_through_graph /home/jupyter/.local/lib/python3.10/site-packages/keras/src/ops/function.py jit(stateless_fn)/jit(main)/broadcast_in_dim jit(stateless_fn)/jit(main)/add /dimension_size stateful_fn write_out export_model export /home/jupyter/.local/lib/python3.10/site-packages/keras/src/models/model.py <module> /var/tmp/ipykernel_3243433/325937222.py /ge error_message /shape_assertion �7��տ���	"&*�.�������ñ���
�����������������������ű�������Ǳ���ɱ*
	platforms
CPU*
version	^
IdentityIdentityXlaCallModule:output:0*
T0*'
_output_shapes
:���������S

Identity_1IdentityXlaCallModule:output:1*
T0*
_output_shapes
:S

Identity_2IdentityXlaCallModule:output:2*
T0*
_output_shapes
:O

Identity_3IdentityXlaCallModule:output:3*
T0*
_output_shapes
: S

Identity_4IdentityXlaCallModule:output:4*
T0*
_output_shapes
:S

Identity_5IdentityXlaCallModule:output:5*
T0*
_output_shapes
:�
	IdentityN	IdentityNXlaCallModule:output:0XlaCallModule:output:1XlaCallModule:output:2XlaCallModule:output:3XlaCallModule:output:4XlaCallModule:output:5jax2tf_arg_0:output:0jax2tf_arg_1:output:0jax2tf_arg_2:output:0jax2tf_arg_3:output:0jax2tf_arg_4:output:0jax2tf_arg_5:output:0jax2tf_arg_6:output:0jax2tf_arg_7:output:0jax2tf_arg_8:output:0jax2tf_arg_9:output:0jax2tf_arg_10:output:0jax2tf_arg_11:output:0*
T
2*,
_gradient_op_typeCustomGradient-111766*�
_output_shapes�
�:���������::: ::::::::::: :::���������\

jax2tf_outIdentityIdentityN:output:0*
T0*'
_output_shapes
:���������Q
jax2tf_out_1IdentityIdentityN:output:1*
T0*
_output_shapes
:Q
jax2tf_out_2IdentityIdentityN:output:2*
T0*
_output_shapes
:M
jax2tf_out_3IdentityIdentityN:output:3*
T0*
_output_shapes
: Q
jax2tf_out_4IdentityIdentityN:output:4*
T0*
_output_shapes
:Q
jax2tf_out_5IdentityIdentityN:output:5*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp$jax2tf_arg_6_readvariableop_resourcejax2tf_out_1:output:0^jax2tf_arg_6/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignVariableOp_1AssignVariableOp$jax2tf_arg_7_readvariableop_resourcejax2tf_out_2:output:0^jax2tf_arg_7/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignVariableOp_2AssignVariableOp$jax2tf_arg_8_readvariableop_resourcejax2tf_out_3:output:0^jax2tf_arg_8/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignVariableOp_3AssignVariableOp$jax2tf_arg_9_readvariableop_resourcejax2tf_out_4:output:0^jax2tf_arg_9/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignVariableOp_4AssignVariableOp%jax2tf_arg_10_readvariableop_resourcejax2tf_out_5:output:0^jax2tf_arg_10/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(d

Identity_6Identityjax2tf_out:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^XlaCallModule^jax2tf_arg_0/ReadVariableOp^jax2tf_arg_1/ReadVariableOp^jax2tf_arg_10/ReadVariableOp^jax2tf_arg_2/ReadVariableOp^jax2tf_arg_3/ReadVariableOp^jax2tf_arg_4/ReadVariableOp^jax2tf_arg_5/ReadVariableOp^jax2tf_arg_6/ReadVariableOp^jax2tf_arg_7/ReadVariableOp^jax2tf_arg_8/ReadVariableOp^jax2tf_arg_9/ReadVariableOp*
_output_shapes
 "!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42$
AssignVariableOpAssignVariableOp2
XlaCallModuleXlaCallModule2:
jax2tf_arg_0/ReadVariableOpjax2tf_arg_0/ReadVariableOp2:
jax2tf_arg_1/ReadVariableOpjax2tf_arg_1/ReadVariableOp2<
jax2tf_arg_10/ReadVariableOpjax2tf_arg_10/ReadVariableOp2:
jax2tf_arg_2/ReadVariableOpjax2tf_arg_2/ReadVariableOp2:
jax2tf_arg_3/ReadVariableOpjax2tf_arg_3/ReadVariableOp2:
jax2tf_arg_4/ReadVariableOpjax2tf_arg_4/ReadVariableOp2:
jax2tf_arg_5/ReadVariableOpjax2tf_arg_5/ReadVariableOp2:
jax2tf_arg_6/ReadVariableOpjax2tf_arg_6/ReadVariableOp2:
jax2tf_arg_7/ReadVariableOpjax2tf_arg_7/ReadVariableOp2:
jax2tf_arg_8/ReadVariableOpjax2tf_arg_8/ReadVariableOp2:
jax2tf_arg_9/ReadVariableOpjax2tf_arg_9/ReadVariableOp:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
0__inference_signature_wrapper_stateful_fn_111859
input_layer
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7: 
	unknown_8:
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU 2J 8� �J *'
f"R 
__inference_stateful_fn_111804o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name111855:&
"
 
_user_specified_name111853:&	"
 
_user_specified_name111851:&"
 
_user_specified_name111849:&"
 
_user_specified_name111847:&"
 
_user_specified_name111845:&"
 
_user_specified_name111843:&"
 
_user_specified_name111841:&"
 
_user_specified_name111839:&"
 
_user_specified_name111837:&"
 
_user_specified_name111835:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�W
�	
__inference__traced_save_112078
file_prefix4
"read_disablecopyonread_variable_10:1
#read_1_disablecopyonread_variable_9:5
#read_2_disablecopyonread_variable_8:1
#read_3_disablecopyonread_variable_7:5
#read_4_disablecopyonread_variable_6:1
#read_5_disablecopyonread_variable_5:1
#read_6_disablecopyonread_variable_4:1
#read_7_disablecopyonread_variable_3:-
#read_8_disablecopyonread_variable_2: 1
#read_9_disablecopyonread_variable_1:0
"read_10_disablecopyonread_variable:
savev2_const
identity_23��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_10*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_10^Read/DisableCopyOnRead*
_output_shapes

:*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:h
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_variable_9*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_variable_9^Read_1/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_2/DisableCopyOnReadDisableCopyOnRead#read_2_disablecopyonread_variable_8*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp#read_2_disablecopyonread_variable_8^Read_2/DisableCopyOnRead*
_output_shapes

:*
dtype0^

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:h
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_variable_7*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_variable_7^Read_3/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_6*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_6^Read_4/DisableCopyOnRead*
_output_shapes

:*
dtype0^

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes

:c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:h
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_variable_5*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_variable_5^Read_5/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_4*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_4^Read_6/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_variable_3*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_variable_3^Read_7/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_8/DisableCopyOnReadDisableCopyOnRead#read_8_disablecopyonread_variable_2*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp#read_8_disablecopyonread_variable_2^Read_8/DisableCopyOnRead*
_output_shapes
: *
dtype0W
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: h
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_variable_1*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_variable_1^Read_9/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_10/DisableCopyOnReadDisableCopyOnRead"read_10_disablecopyonread_variable*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp"read_10_disablecopyonread_variable^Read_10/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_22Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_23IdentityIdentity_22:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_23Identity_23:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
: : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:($
"
_user_specified_name
Variable:*
&
$
_user_specified_name
Variable_1:*	&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
0__inference_signature_wrapper_stateful_fn_111832
input_layer
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7: 
	unknown_8:
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU 2J 8� �J *'
f"R 
__inference_stateful_fn_111804o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name111828:&
"
 
_user_specified_name111826:&	"
 
_user_specified_name111824:&"
 
_user_specified_name111822:&"
 
_user_specified_name111820:&"
 
_user_specified_name111818:&"
 
_user_specified_name111816:&"
 
_user_specified_name111814:&"
 
_user_specified_name111812:&"
 
_user_specified_name111810:&"
 
_user_specified_name111808:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
#__inference_internal_grad_fn_112015
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17(
$jax2tf_vjp_jax2tf_arg_0_jax2tf_arg_0(
$jax2tf_vjp_jax2tf_arg_1_jax2tf_arg_1(
$jax2tf_vjp_jax2tf_arg_2_jax2tf_arg_2(
$jax2tf_vjp_jax2tf_arg_3_jax2tf_arg_3(
$jax2tf_vjp_jax2tf_arg_4_jax2tf_arg_4(
$jax2tf_vjp_jax2tf_arg_5_jax2tf_arg_5(
$jax2tf_vjp_jax2tf_arg_6_jax2tf_arg_6(
$jax2tf_vjp_jax2tf_arg_7_jax2tf_arg_7(
$jax2tf_vjp_jax2tf_arg_8_jax2tf_arg_8(
$jax2tf_vjp_jax2tf_arg_9_jax2tf_arg_9*
&jax2tf_vjp_jax2tf_arg_10_jax2tf_arg_10*
&jax2tf_vjp_jax2tf_arg_11_jax2tf_arg_11
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8


identity_9

identity_10

identity_11��jax2tf_vjp/XlaCallModuler
jax2tf_vjp/jax2tf_arg_0Identity$jax2tf_vjp_jax2tf_arg_0_jax2tf_arg_0*
T0*
_output_shapes

:n
jax2tf_vjp/jax2tf_arg_1Identity$jax2tf_vjp_jax2tf_arg_1_jax2tf_arg_1*
T0*
_output_shapes
:r
jax2tf_vjp/jax2tf_arg_2Identity$jax2tf_vjp_jax2tf_arg_2_jax2tf_arg_2*
T0*
_output_shapes

:n
jax2tf_vjp/jax2tf_arg_3Identity$jax2tf_vjp_jax2tf_arg_3_jax2tf_arg_3*
T0*
_output_shapes
:r
jax2tf_vjp/jax2tf_arg_4Identity$jax2tf_vjp_jax2tf_arg_4_jax2tf_arg_4*
T0*
_output_shapes

:n
jax2tf_vjp/jax2tf_arg_5Identity$jax2tf_vjp_jax2tf_arg_5_jax2tf_arg_5*
T0*
_output_shapes
:n
jax2tf_vjp/jax2tf_arg_6Identity$jax2tf_vjp_jax2tf_arg_6_jax2tf_arg_6*
T0*
_output_shapes
:n
jax2tf_vjp/jax2tf_arg_7Identity$jax2tf_vjp_jax2tf_arg_7_jax2tf_arg_7*
T0*
_output_shapes
:j
jax2tf_vjp/jax2tf_arg_8Identity$jax2tf_vjp_jax2tf_arg_8_jax2tf_arg_8*
T0*
_output_shapes
: n
jax2tf_vjp/jax2tf_arg_9Identity$jax2tf_vjp_jax2tf_arg_9_jax2tf_arg_9*
T0*
_output_shapes
:q
jax2tf_vjp/jax2tf_arg_10Identity&jax2tf_vjp_jax2tf_arg_10_jax2tf_arg_10*
T0*
_output_shapes
:~
jax2tf_vjp/jax2tf_arg_11Identity&jax2tf_vjp_jax2tf_arg_11_jax2tf_arg_11*
T0*'
_output_shapes
:���������f
jax2tf_vjp/jax2tf_arg_12Identityresult_grads_0*
T0*'
_output_shapes
:���������Y
jax2tf_vjp/jax2tf_arg_13Identityresult_grads_1*
T0*
_output_shapes
:Y
jax2tf_vjp/jax2tf_arg_14Identityresult_grads_2*
T0*
_output_shapes
:U
jax2tf_vjp/jax2tf_arg_15Identityresult_grads_3*
T0*
_output_shapes
: Y
jax2tf_vjp/jax2tf_arg_16Identityresult_grads_4*
T0*
_output_shapes
:Y
jax2tf_vjp/jax2tf_arg_17Identityresult_grads_5*
T0*
_output_shapes
:�N
jax2tf_vjp/XlaCallModuleXlaCallModule jax2tf_vjp/jax2tf_arg_0:output:0 jax2tf_vjp/jax2tf_arg_1:output:0 jax2tf_vjp/jax2tf_arg_2:output:0 jax2tf_vjp/jax2tf_arg_3:output:0 jax2tf_vjp/jax2tf_arg_4:output:0 jax2tf_vjp/jax2tf_arg_5:output:0 jax2tf_vjp/jax2tf_arg_6:output:0 jax2tf_vjp/jax2tf_arg_7:output:0 jax2tf_vjp/jax2tf_arg_8:output:0 jax2tf_vjp/jax2tf_arg_9:output:0!jax2tf_vjp/jax2tf_arg_10:output:0!jax2tf_vjp/jax2tf_arg_11:output:0!jax2tf_vjp/jax2tf_arg_12:output:0!jax2tf_vjp/jax2tf_arg_13:output:0!jax2tf_vjp/jax2tf_arg_14:output:0!jax2tf_vjp/jax2tf_arg_15:output:0!jax2tf_vjp/jax2tf_arg_16:output:0!jax2tf_vjp/jax2tf_arg_17:output:0*g
Sout_
]::::::::: :::���������*
Tin
2*
Tout
2


*q
_output_shapes_
]::::::::: :::���������*�F
module�F�FML�RStableHLO_v1.8.1 ;+)#'+/37;?CGKOSW[
]w#�//OO;SW?7O'���Y7777777��oo�B
��VZa/FV��S�1:A�]3-���N]5S�1�71��;9;6>F�ARAa=?A-�CEGIK��*.M��OmoqIsIQSUWS#W59        Y9       ��[=!               	    ���ww	   	   	   =!               	������������]_?ace	   	gi%wwwwwwwwwwwwwwwwww#C��k��m��o��q��s��u��w��y��{��}�������'�wwwwwwwwwwwwwwwwww��#G�wwwwwwwwwwww#Iwwwwwwwwwww#K#M#O#�wwwwwwwwwwwwwwww#Qwwwwwww	���3'�X�G��<���:<���A��;��Z;��<a�6��[�;�\<m�軽l$<H)96�U<c��� <V/9<# �;,"��[�b���^�:~�t85�":ń=���ڹ6�xo#7IݰB'�0{O	�n@�N,@ }@+j�?X�?�W�?P��?��?�֗?/Z�?L��?�Pe?��}?��M?�PV?�$6?�Q?}�-?b�(? a?�?<?})�>`I�>0
�>Aqn>��$>���=�)|G+ 		   ���JN�R�Zf^b�K�jvnr�K"
z�~�����������M��)������O���M�O_�Q�+RUr/��]��U�3���5�"	����W-9=�"*W&Y�.Q2+J��[B�JR[NYV:V^Z+B-b/fj3nr5vz~���������j��;�=�%�#/��3���51��c���������9��%�#��
��;=r"%&#�2>6:�"9BF%J#����b�j�r�z��������������������������������g6

g>	)7)y)7)) ��������) ��������y) ��������!) ��������A)	E	)	7)yA)A!)!)A)!))y)	-)-) ��������-) ��������!-) ��������A-)5))	5)!)A%!#%		!#%+))%'	!#%		!#%+))	!#%	/13'			#	/13'!#%)5)!C)!A)Ay�Qk�PJG'%5A9E=I)))) 		B	#Fe	#Fe	F�	+'%%Ei�+'F+)'%Ei-)'F!#%+))''	!#/13579;=?ACEP�Q'7^Cf;nGv?~K����+�+������+�+� 						B+F/13'	F!#%#+-/13579;=Fc)'Fc)'?ACEGI'MOKP���7C;G?K++ 9	BBB!B#B%B'B)'B+''F'+%	F'-'-''/)�')F_'#_'35)F)9%	F)-7;!)1=FE/?FG1AFE!	F-CGAIF3KFO!	F5QF73KSFW!	F5YFE/MFG1?	Fa	F-_c]eF9gFk	F5mF71goFs	F5uFE/iFG1;F}	F-{y�F;�F�	F5�F7/��F�	F5����qwU[7?MiP=w' B#B!	F			F	5	P?w# BB!	F			F	5	PAw BB!	F			F	5	PC6q�#_c#g'O7;'?# B'B#BBB!F-)	F5+/71VE%3+- ?;5VE%7+- FGU3FCI;FK3FA'	F5+C7?EVE#G+- ??IVE#K+- FGYGFCIOFKGFU%	F5+W7SYVE![+- ?A]VE!_+- FG[[FCIcFK[!F!i#	F!-k!!gmeaQM=9o �L	#	![========;;;;;;;;;;moooqo�����'���������qQ�_+C�)										!3!#%)9��	�����ţ-)9builtin vhlo module constant_v1 reshape_v1 concatenate_v1 dynamic_broadcast_in_dim_v1 return_v1 dot_general_v2 add_v1 func_v1 reduce_v1 broadcast_in_dim_v1 call_v1 compare_v1 maximum_v1 select_v1 transpose_v1 divide_v1 get_dimension_size_v1 custom_call_v1 subtract_v1 sqrt_v1 call /home/jupyter/.local/lib/python3.10/site-packages/keras/src/backend/jax/numpy.py /home/jupyter/.local/lib/python3.10/site-packages/keras/src/layers/preprocessing/normalization.py /home/jupyter/.local/lib/python3.10/site-packages/keras/src/layers/core/dense.py __call__ sparse_wrapper /home/jupyter/.local/lib/python3.10/site-packages/keras/src/backend/jax/sparse.py /home/jupyter/.local/lib/python3.10/site-packages/keras/src/export/export_lib.py relu /home/jupyter/.local/lib/python3.10/site-packages/keras/src/activations/activations.py error_handler /home/jupyter/.local/lib/python3.10/site-packages/keras/src/utils/traceback_utils.py add /home/jupyter/.local/lib/python3.10/site-packages/keras/src/ops/numpy.py matmul pjit(fun_vjp_jax)/jit(main)/jvp(jit(stateless_fn))/broadcast_in_dim error_message jax.uses_shape_polymorphism mhlo.num_partitions mhlo.num_replicas pjit_fun_vjp_jax jax.result_info private _wrapped_jax_export_main stateless_fn relu_0 relu_1 stateless_fn_2  shape_assertion [0] [1] [2] [3] [4] [5] [6] [7] [8] [9] [10] [11] main public jax.global_constant batch Input shapes do not match the polymorphic shapes specification. Expected value >= 1 for dimension variable 'batch'. Using the following polymorphic shapes specifications: args[11].shape = (batch, 30),args[12].shape = (batch, 4). Obtained dimension variables: 'batch' = {0} from specification 'batch' for dimension args[11].shape[0] (= {0}), . Please see https://jax.readthedocs.io/en/latest/export/shape_poly.html#shape-assertion-errors for more details. Input shapes do not match the polymorphic shapes specification. Found inconsistency between dimension size args[12].shape[0] (= {0}) and the specification 'batch' (= {1}). Using the following polymorphic shapes specifications: args[11].shape = (batch, 30),args[12].shape = (batch, 4). Obtained dimension variables: 'batch' = {1} from specification 'batch' for dimension args[11].shape[0] (= {1}), . Please see https://jax.readthedocs.io/en/latest/export/shape_poly.html#shape-assertion-errors for more details. pjit(fun_vjp_jax)/jit(main)/pjit tf__internal_grad_fn /var/tmp/__autograph_generated_filercctcapq.py write_out export_model export /home/jupyter/.local/lib/python3.10/site-packages/keras/src/models/model.py <module> /var/tmp/ipykernel_3243433/325937222.py pjit(fun_vjp_jax)/jit(main)/jvp(jit(stateless_fn))/pjit /home/jupyter/.local/lib/python3.10/site-packages/keras/src/backend/jax/nn.py static_call /home/jupyter/.local/lib/python3.10/site-packages/keras/src/ops/operation.py /home/jupyter/.local/lib/python3.10/site-packages/keras/src/layers/layer.py /home/jupyter/.local/lib/python3.10/site-packages/keras/src/models/functional.py pjit(fun_vjp_jax)/jit(main)/transpose(jvp(jit(stateless_fn)))/broadcast_in_dim pjit(fun_vjp_jax)/jit(main)/transpose(jvp(jit(stateless_fn)))/select_n pjit(fun_vjp_jax)/jit(main)/transpose(jvp(jit(stateless_fn)))/reduce_sum pjit(fun_vjp_jax)/jit(main)/transpose(jvp(jit(stateless_fn)))/reshape pjit(fun_vjp_jax)/jit(main)/transpose(jvp(jit(stateless_fn)))/dot_general _run_through_graph /home/jupyter/.local/lib/python3.10/site-packages/keras/src/ops/function.py pjit(fun_vjp_jax)/jit(main)/transpose(jvp(jit(stateless_fn)))/transpose pjit(fun_vjp_jax)/jit(main)/transpose(jvp(jit(stateless_fn)))/div divide /home/jupyter/.local/lib/python3.10/site-packages/keras/src/layers/preprocessing/tf_data_layer.py pjit(fun_vjp_jax)/jit(main)/jvp(jit(stateless_fn))/jit(relu)/max pjit(fun_vjp_jax)/jit(main)/jvp(jit(stateless_fn))/sub subtract pjit(fun_vjp_jax)/jit(main)/jvp(jit(stateless_fn))/sqrt sqrt pjit(fun_vjp_jax)/jit(main)/jvp(jit(stateless_fn))/max maximum pjit(fun_vjp_jax)/jit(main)/jvp(jit(stateless_fn))/div pjit(fun_vjp_jax)/jit(main)/jvp(jit(stateless_fn))/dot_general pjit(fun_vjp_jax)/jit(main)/jvp(jit(stateless_fn))/add pjit(fun_vjp_jax)/jit(main)/jvp(jit(stateless_fn))/gt args_and_out_cts_flat_jax[0] args_and_out_cts_flat_jax[1] args_and_out_cts_flat_jax[2] args_and_out_cts_flat_jax[3] args_and_out_cts_flat_jax[4] args_and_out_cts_flat_jax[5] args_and_out_cts_flat_jax[6] args_and_out_cts_flat_jax[7] args_and_out_cts_flat_jax[8] args_and_out_cts_flat_jax[9] args_and_out_cts_flat_jax[10] args_and_out_cts_flat_jax[11] args_and_out_cts_flat_jax[12] args_and_out_cts_flat_jax[13] args_and_out_cts_flat_jax[14] args_and_out_cts_flat_jax[15] args_and_out_cts_flat_jax[16] args_and_out_cts_flat_jax[17] pjit(fun_vjp_jax)/jit(main)/broadcast_in_dim /dimension_size /ge /shape_assertion /eq �M������.}�2���������:������*��y���������"&�yy{{y{�{{�y{{��yyy���������
���������{{y{{{�y{{�{{y{�{{�y{�{*
	platforms
CPU*
version	k
jax2tf_vjp/IdentityIdentity!jax2tf_vjp/XlaCallModule:output:0*
T0*
_output_shapes

:i
jax2tf_vjp/Identity_1Identity!jax2tf_vjp/XlaCallModule:output:1*
T0*
_output_shapes
:m
jax2tf_vjp/Identity_2Identity!jax2tf_vjp/XlaCallModule:output:2*
T0*
_output_shapes

:i
jax2tf_vjp/Identity_3Identity!jax2tf_vjp/XlaCallModule:output:3*
T0*
_output_shapes
:m
jax2tf_vjp/Identity_4Identity!jax2tf_vjp/XlaCallModule:output:4*
T0*
_output_shapes

:i
jax2tf_vjp/Identity_5Identity!jax2tf_vjp/XlaCallModule:output:5*
T0*
_output_shapes
:i
jax2tf_vjp/Identity_6Identity!jax2tf_vjp/XlaCallModule:output:6*
T0*
_output_shapes
:i
jax2tf_vjp/Identity_7Identity!jax2tf_vjp/XlaCallModule:output:7*
T0*
_output_shapes
:e
jax2tf_vjp/Identity_8Identity!jax2tf_vjp/XlaCallModule:output:8*
T0
*
_output_shapes
: i
jax2tf_vjp/Identity_9Identity!jax2tf_vjp/XlaCallModule:output:9*
T0
*
_output_shapes
:k
jax2tf_vjp/Identity_10Identity"jax2tf_vjp/XlaCallModule:output:10*
T0
*
_output_shapes
:x
jax2tf_vjp/Identity_11Identity"jax2tf_vjp/XlaCallModule:output:11*
T0*'
_output_shapes
:����������
jax2tf_vjp/IdentityN	IdentityN!jax2tf_vjp/XlaCallModule:output:0!jax2tf_vjp/XlaCallModule:output:1!jax2tf_vjp/XlaCallModule:output:2!jax2tf_vjp/XlaCallModule:output:3!jax2tf_vjp/XlaCallModule:output:4!jax2tf_vjp/XlaCallModule:output:5!jax2tf_vjp/XlaCallModule:output:6!jax2tf_vjp/XlaCallModule:output:7!jax2tf_vjp/XlaCallModule:output:8!jax2tf_vjp/XlaCallModule:output:9"jax2tf_vjp/XlaCallModule:output:10"jax2tf_vjp/XlaCallModule:output:11 jax2tf_vjp/jax2tf_arg_0:output:0 jax2tf_vjp/jax2tf_arg_1:output:0 jax2tf_vjp/jax2tf_arg_2:output:0 jax2tf_vjp/jax2tf_arg_3:output:0 jax2tf_vjp/jax2tf_arg_4:output:0 jax2tf_vjp/jax2tf_arg_5:output:0 jax2tf_vjp/jax2tf_arg_6:output:0 jax2tf_vjp/jax2tf_arg_7:output:0 jax2tf_vjp/jax2tf_arg_8:output:0 jax2tf_vjp/jax2tf_arg_9:output:0!jax2tf_vjp/jax2tf_arg_10:output:0!jax2tf_vjp/jax2tf_arg_11:output:0!jax2tf_vjp/jax2tf_arg_12:output:0!jax2tf_vjp/jax2tf_arg_13:output:0!jax2tf_vjp/jax2tf_arg_14:output:0!jax2tf_vjp/jax2tf_arg_15:output:0!jax2tf_vjp/jax2tf_arg_16:output:0!jax2tf_vjp/jax2tf_arg_17:output:0*'
T"
 2


*,
_gradient_op_typeCustomGradient-111936*�
_output_shapes�
�::::::::: :::���������::::::::: :::���������:���������::: ::i
jax2tf_vjp/jax2tf_outIdentityjax2tf_vjp/IdentityN:output:0*
T0*
_output_shapes

:g
jax2tf_vjp/jax2tf_out_1Identityjax2tf_vjp/IdentityN:output:1*
T0*
_output_shapes
:k
jax2tf_vjp/jax2tf_out_2Identityjax2tf_vjp/IdentityN:output:2*
T0*
_output_shapes

:g
jax2tf_vjp/jax2tf_out_3Identityjax2tf_vjp/IdentityN:output:3*
T0*
_output_shapes
:k
jax2tf_vjp/jax2tf_out_4Identityjax2tf_vjp/IdentityN:output:4*
T0*
_output_shapes

:g
jax2tf_vjp/jax2tf_out_5Identityjax2tf_vjp/IdentityN:output:5*
T0*
_output_shapes
:g
jax2tf_vjp/jax2tf_out_6Identityjax2tf_vjp/IdentityN:output:6*
T0*
_output_shapes
:g
jax2tf_vjp/jax2tf_out_7Identityjax2tf_vjp/IdentityN:output:7*
T0*
_output_shapes
:c
jax2tf_vjp/jax2tf_out_8Identityjax2tf_vjp/IdentityN:output:8*
T0
*
_output_shapes
: g
jax2tf_vjp/jax2tf_out_9Identityjax2tf_vjp/IdentityN:output:9*
T0
*
_output_shapes
:i
jax2tf_vjp/jax2tf_out_10Identityjax2tf_vjp/IdentityN:output:10*
T0
*
_output_shapes
:v
jax2tf_vjp/jax2tf_out_11Identityjax2tf_vjp/IdentityN:output:11*
T0*'
_output_shapes
:���������d
IdentityIdentityjax2tf_vjp/jax2tf_out:output:0^NoOp*
T0*
_output_shapes

:d

Identity_1Identity jax2tf_vjp/jax2tf_out_1:output:0^NoOp*
T0*
_output_shapes
:h

Identity_2Identity jax2tf_vjp/jax2tf_out_2:output:0^NoOp*
T0*
_output_shapes

:d

Identity_3Identity jax2tf_vjp/jax2tf_out_3:output:0^NoOp*
T0*
_output_shapes
:h

Identity_4Identity jax2tf_vjp/jax2tf_out_4:output:0^NoOp*
T0*
_output_shapes

:d

Identity_5Identity jax2tf_vjp/jax2tf_out_5:output:0^NoOp*
T0*
_output_shapes
:d

Identity_6Identity jax2tf_vjp/jax2tf_out_6:output:0^NoOp*
T0*
_output_shapes
:d

Identity_7Identity jax2tf_vjp/jax2tf_out_7:output:0^NoOp*
T0*
_output_shapes
:`

Identity_8Identity jax2tf_vjp/jax2tf_out_8:output:0^NoOp*
T0
*
_output_shapes
: d

Identity_9Identity jax2tf_vjp/jax2tf_out_9:output:0^NoOp*
T0
*
_output_shapes
:f
Identity_10Identity!jax2tf_vjp/jax2tf_out_10:output:0^NoOp*
T0
*
_output_shapes
:s
Identity_11Identity!jax2tf_vjp/jax2tf_out_11:output:0^NoOp*
T0*'
_output_shapes
:���������=
NoOpNoOp^jax2tf_vjp/XlaCallModule*
_output_shapes
 "#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������::: ::::::::::: :::���������::::::::: :::���������24
jax2tf_vjp/XlaCallModulejax2tf_vjp/XlaCallModule:VR
'
_output_shapes
:���������
'
_user_specified_namejax2tf_arg_11:IE

_output_shapes
:
'
_user_specified_namejax2tf_arg_10:HD

_output_shapes
:
&
_user_specified_namejax2tf_arg_9:D@

_output_shapes
: 
&
_user_specified_namejax2tf_arg_8:HD

_output_shapes
:
&
_user_specified_namejax2tf_arg_7:HD

_output_shapes
:
&
_user_specified_namejax2tf_arg_6:HD

_output_shapes
:
&
_user_specified_namejax2tf_arg_5:LH

_output_shapes

:
&
_user_specified_namejax2tf_arg_4:HD

_output_shapes
:
&
_user_specified_namejax2tf_arg_3:LH

_output_shapes

:
&
_user_specified_namejax2tf_arg_2:HD

_output_shapes
:
&
_user_specified_namejax2tf_arg_1:LH

_output_shapes

:
&
_user_specified_namejax2tf_arg_0:XT
'
_output_shapes
:���������
)
_user_specified_nameresult_grads_17:KG

_output_shapes
:
)
_user_specified_nameresult_grads_16:KG

_output_shapes
:
)
_user_specified_nameresult_grads_15:GC

_output_shapes
: 
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:
)
_user_specified_nameresult_grads_13:KG

_output_shapes
:
)
_user_specified_nameresult_grads_12:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:O
K

_output_shapes

:
)
_user_specified_nameresult_grads_10:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:NJ

_output_shapes

:
(
_user_specified_nameresult_grads_8:JF

_output_shapes
:
(
_user_specified_nameresult_grads_7:NJ

_output_shapes

:
(
_user_specified_nameresult_grads_6:JF

_output_shapes
:
(
_user_specified_nameresult_grads_5:JF

_output_shapes
:
(
_user_specified_nameresult_grads_4:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_3:JF

_output_shapes
:
(
_user_specified_nameresult_grads_2:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:W S
'
_output_shapes
:���������
(
_user_specified_nameresult_grads_0<
#__inference_internal_grad_fn_112015CustomGradient-111766"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
9
input_layer*
serve_input_layer:0���������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict*�
serving_default�
C
input_layer4
serving_default_input_layer:0���������>
output_02
StatefulPartitionedCall_1:0���������tensorflow/serving/predict:�
~
	variables
trainable_variables
non_trainable_variables
	serve

signatures"
_generic_user_object
n
0
1
2
	3

4
5
6
7
8
9
10"
trackable_list_wrapper
J
0
1
2
	3

4
5"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
�
trace_02�
__inference_stateful_fn_111804�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� **�'
%�"
input_layer���������ztrace_0
7
	serve
serving_default"
signature_map
:2Variable
:2Variable
:2Variable
:2Variable
:2Variable
:2Variable
:2Variable
:2Variable
: 2Variable
:2Variable
:2Variable
�B�
__inference_stateful_fn_111804input_layer"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_signature_wrapper_stateful_fn_111832input_layer"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
  

kwonlyargs�
jinput_layer
kwonlydefaults
 
annotations� *
 
�B�
0__inference_signature_wrapper_stateful_fn_111859input_layer"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
  

kwonlyargs�
jinput_layer
kwonlydefaults
 
annotations� *
 
2b0
jax2tf_arg_0:0__inference_stateful_fn_111804
2b0
jax2tf_arg_1:0__inference_stateful_fn_111804
2b0
jax2tf_arg_2:0__inference_stateful_fn_111804
2b0
jax2tf_arg_3:0__inference_stateful_fn_111804
2b0
jax2tf_arg_4:0__inference_stateful_fn_111804
2b0
jax2tf_arg_5:0__inference_stateful_fn_111804
2b0
jax2tf_arg_6:0__inference_stateful_fn_111804
2b0
jax2tf_arg_7:0__inference_stateful_fn_111804
2b0
jax2tf_arg_8:0__inference_stateful_fn_111804
2b0
jax2tf_arg_9:0__inference_stateful_fn_111804
3b1
jax2tf_arg_10:0__inference_stateful_fn_111804
3b1
jax2tf_arg_11:0__inference_stateful_fn_111804�
#__inference_internal_grad_fn_112015����
���

 
(�%
result_grads_0���������
�
result_grads_1
�
result_grads_2
�
result_grads_3 
�
result_grads_4
�
result_grads_5
�
result_grads_6
�
result_grads_7
�
result_grads_8
�
result_grads_9
 �
result_grads_10
�
result_grads_11
�
result_grads_12
�
result_grads_13
�
result_grads_14 
�
result_grads_15
�
result_grads_16
)�&
result_grads_17���������
� "���

 

 

 

 

 

 
�
tensor_6
�
tensor_7
�
tensor_8
�
tensor_9
�
	tensor_10
�
	tensor_11
�
	tensor_12
�
	tensor_13
�
	tensor_14 

�
	tensor_15

�
	tensor_16

#� 
	tensor_17����������
0__inference_signature_wrapper_stateful_fn_111832�	
C�@
� 
9�6
4
input_layer%�"
input_layer���������"3�0
.
output_0"�
output_0����������
0__inference_signature_wrapper_stateful_fn_111859�	
C�@
� 
9�6
4
input_layer%�"
input_layer���������"3�0
.
output_0"�
output_0����������
__inference_stateful_fn_111804f	
4�1
*�'
%�"
input_layer���������
� "!�
unknown���������