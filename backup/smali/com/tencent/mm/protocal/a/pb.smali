.class public final Lcom/tencent/mm/protocal/a/pb;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public cqt:Ljava/lang/String;

.field public eBo:Ljava/lang/String;

.field public fBB:I

.field public fBE:Lcom/tencent/mm/protocal/a/rv;

.field public fBF:Ljava/lang/String;

.field public fBI:Ljava/lang/String;

.field public fBL:Ljava/lang/String;

.field public fDe:Ljava/lang/String;

.field public fFk:Ljava/lang/String;

.field public fFm:Ljava/lang/String;

.field public fMk:Ljava/lang/String;

.field public fMl:Ljava/lang/String;

.field public fMm:I

.field public fNA:Ljava/lang/String;

.field public fPH:I

.field public fQC:Ljava/lang/String;

.field public fQo:I

.field public fQr:Ljava/lang/String;

.field public fRk:Ljava/lang/String;

.field public fRl:Ljava/lang/String;

.field public fRm:I

.field public fRn:I

.field public fRo:I

.field public fRp:Ljava/lang/String;

.field public fRq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/rs;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 134
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->eBo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 137
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->eBo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fBL:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 140
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fBL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fDe:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 143
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fDe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 145
    :cond_3
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/pb;->fPH:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 146
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fRk:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 147
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fRk:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fRl:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 150
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fRl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fFm:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 153
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fFm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 155
    :cond_6
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/protocal/a/pb;->fQo:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 156
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/pb;->fRm:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 157
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/pb;->fMm:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fQr:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 159
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fQr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fBF:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 162
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fBF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 164
    :cond_8
    const/16 v0, 0x11

    iget v1, p0, Lcom/tencent/mm/protocal/a/pb;->fBB:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 165
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fFk:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 166
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fFk:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 168
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fBE:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_a

    .line 169
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 170
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 172
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->cqt:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 173
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->cqt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 175
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fMk:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 176
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fMk:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 178
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fMl:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 179
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fMl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 181
    :cond_d
    const/16 v0, 0x17

    iget v1, p0, Lcom/tencent/mm/protocal/a/pb;->fRn:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 182
    const/16 v0, 0x18

    iget v1, p0, Lcom/tencent/mm/protocal/a/pb;->fRo:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 183
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fBI:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 184
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fBI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 186
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fQC:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 187
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fQC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 189
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fRp:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 190
    const/16 v0, 0x21

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fRp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 192
    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fNA:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 193
    const/16 v0, 0x22

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fNA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 195
    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pb;->fRq:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 196
    const/16 v0, 0x23

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fRq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 198
    :cond_12
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 62
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->eBo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 65
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->eBo:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fBL:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 68
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fBL:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fDe:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 71
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fDe:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_3
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/pb;->fPH:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fRk:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 75
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fRk:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fRl:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 78
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fRl:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fFm:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 81
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fFm:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_6
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/protocal/a/pb;->fQo:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/pb;->fRm:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/pb;->fMm:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fQr:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 87
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fQr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fBF:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 90
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fBF:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_8
    const/16 v1, 0x11

    iget v2, p0, Lcom/tencent/mm/protocal/a/pb;->fBB:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fFk:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 94
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fFk:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fBE:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_a

    .line 97
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->cqt:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 100
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->cqt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fMk:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 103
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fMk:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fMl:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 106
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fMl:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_d
    const/16 v1, 0x17

    iget v2, p0, Lcom/tencent/mm/protocal/a/pb;->fRn:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    const/16 v1, 0x18

    iget v2, p0, Lcom/tencent/mm/protocal/a/pb;->fRo:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fBI:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 111
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fBI:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fQC:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 114
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fQC:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_f
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fRp:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 117
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fRp:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_10
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fNA:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 120
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fNA:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_11
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pb;->fRq:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 123
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pb;->fRq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_12
    return v0
.end method
