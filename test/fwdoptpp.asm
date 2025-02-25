;Testname=error; Arguments=-fbin -DERROR -ofwdoptpp.bin; Files=stdout stderr fwdoptpp.bin
;Testname=fatal; Arguments=-fbin -DFATAL -ofwdoptpp.bin; Files=stdout stderr fwdoptpp.bin
;Testname=warning; Arguments=-fbin -DWARNING -ofwdoptpp.bin; Files=stdout stderr fwdoptpp.bin

%ifndef ERROR
  %ifndef FATAL
    %ifndef WARNING
      %define ERROR 1
    %endif
  %endif
%endif

n0:	jmp n1
n1:	jmp n2
n2:	jmp n3
n3:	jmp n4
n4:	jmp n5
n5:	jmp n6
n6:	jmp n7
n7:	jmp n8
n8:	jmp n9
n9:	jmp n10
n10:	jmp n11
n11:	jmp n12
n12:	jmp n13
n13:	jmp n14
n14:	jmp n15
n15:	jmp n16
n16:	jmp n17
n17:	jmp n18
n18:	jmp n19
n19:	jmp n20
n20:	jmp n21
n21:	jmp n22
n22:	jmp n23
n23:	jmp n24
n24:	jmp n25
n25:	jmp n26
n26:	jmp n27
n27:	jmp n28
n28:	jmp n29
n29:	jmp n30
n30:	jmp n31
n31:	jmp n32
n32:	jmp n33
n33:	jmp n34
n34:	jmp n35
n35:	jmp n36
n36:	jmp n37
n37:	jmp n38
n38:	jmp n39
n39:	jmp n40
n40:	jmp n41
n41:	jmp n42
n42:	jmp n43
n43:	jmp n44
n44:	jmp n45
n45:	jmp n46
n46:	jmp n47
n47:	jmp n48
n48:	jmp n49
n49:	jmp n50
n50:	jmp n51
n51:	jmp n52
n52:	jmp n53
n53:	jmp n54
n54:	jmp n55
n55:	jmp n56
n56:	jmp n57
n57:	jmp n58
n58:	jmp n59
n59:	jmp n60
n60:	jmp n61
n61:	jmp n62
n62:	jmp n63
n63:	jmp n64
n64:	jmp n65
n65:	jmp n66
n66:	jmp n67
n67:	jmp n68
n68:	jmp n69
n69:	jmp n70
n70:	jmp n71
n71:	jmp n72
n72:	jmp n73
n73:	jmp n74
n74:	jmp n75
n75:	jmp n76
n76:	jmp n77
n77:	jmp n78
n78:	jmp n79
n79:	jmp n80
n80:	jmp n81
n81:	jmp n82
n82:	jmp n83
n83:	jmp n84
n84:	jmp n85
n85:	jmp n86
n86:	jmp n87
n87:	jmp n88
n88:	jmp n89
n89:	jmp n90
n90:	jmp n91
n91:	jmp n92
n92:	jmp n93
n93:	jmp n94
n94:	jmp n95
n95:	jmp n96
n96:	jmp n97
n97:	jmp n98
n98:	jmp n99
n99:	jmp n100
n100:	jmp n101
n101:	jmp n102
n102:	jmp n103
n103:	jmp n104
n104:	jmp n105
n105:	jmp n106
n106:	jmp n107
n107:	jmp n108
n108:	jmp n109
n109:	jmp n110
n110:	jmp n111
n111:	jmp n112
n112:	jmp n113
n113:	jmp n114
n114:	jmp n115
n115:	jmp n116
n116:	jmp n117
n117:	jmp n118
n118:	jmp n119
n119:	jmp n120
n120:	jmp n121
n121:	jmp n122
n122:	jmp n123
n123:	jmp n124
n124:	jmp n125
n125:	jmp n126
n126:	jmp n127
n127:	jmp n0

%if ($-$$) > 257
  %ifdef FATAL
    %fatal "Out of space!"
  %elifdef ERROR
    %error "Out of space!"
  %elifdef WARNING
    %warning "Out of space!"
  %endif
%endif
