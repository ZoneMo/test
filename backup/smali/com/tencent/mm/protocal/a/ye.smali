.class public final Lcom/tencent/mm/protocal/a/ye;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fAJ:Lcom/tencent/mm/protocal/a/rv;

.field public fAL:I

.field public fAN:I

.field public fAS:Ljava/lang/String;

.field public fAU:I

.field public fEd:I

.field public fGB:Ljava/lang/String;

.field public fLx:I

.field public fUN:I

.field public fWg:I

.field public fYA:I

.field public fYB:Ljava/lang/String;

.field public fYC:I

.field public fYD:I

.field public fYE:I

.field public fYF:Ljava/lang/String;

.field public fYw:Lcom/tencent/mm/protocal/a/rw;

.field public fYx:Ljava/lang/String;

.field public fYy:Ljava/lang/String;

.field public fYz:I

.field public fzs:Lcom/tencent/mm/protocal/a/rw;

.field public fzt:Lcom/tencent/mm/protocal/a/rw;

.field public fzu:I

.field public fzz:Ljava/lang/String;


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
    .line 112
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fYw:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fzs:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fzt:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_2

    .line 116
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 117
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fYw:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_3

    .line 120
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYw:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 121
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fYw:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fzs:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_4

    .line 124
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fzt:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_5

    .line 128
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fzt:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 129
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fzt:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 131
    :cond_5
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fAL:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 132
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fEd:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 133
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fAU:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 134
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_6

    .line 135
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 138
    :cond_6
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fzu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 139
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fzz:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 140
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fzz:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 142
    :cond_7
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fLx:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 143
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fUN:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 144
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fWg:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 145
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fAS:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 146
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fAS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 148
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fYx:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 149
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 151
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fYy:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 152
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 154
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fGB:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 155
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fGB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 157
    :cond_b
    const/16 v0, 0x12

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fAN:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 158
    const/16 v0, 0x13

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYz:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 159
    const/16 v0, 0x14

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYA:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fYB:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 161
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 163
    :cond_c
    const/16 v0, 0x16

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYC:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 164
    const/16 v0, 0x17

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYD:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 165
    const/16 v0, 0x18

    iget v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYE:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 166
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ye;->fYF:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 167
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 169
    :cond_d
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 60
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYw:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_1

    .line 63
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ye;->fYw:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fzs:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_2

    .line 66
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ye;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fzt:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_3

    .line 69
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ye;->fzt:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_3
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fAL:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fEd:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fAU:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_4

    .line 75
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ye;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_4
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fzu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fzz:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 79
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ye;->fzz:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_5
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fLx:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fUN:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fWg:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fAS:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 85
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ye;->fAS:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYx:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 88
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ye;->fYx:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYy:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 91
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ye;->fYy:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fGB:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 94
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ye;->fGB:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_9
    const/16 v1, 0x12

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fAN:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    const/16 v1, 0x13

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fYz:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    const/16 v1, 0x14

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fYA:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYB:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 100
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ye;->fYB:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_a
    const/16 v1, 0x16

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fYC:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    const/16 v1, 0x17

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fYD:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    const/16 v1, 0x18

    iget v2, p0, Lcom/tencent/mm/protocal/a/ye;->fYE:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ye;->fYF:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 106
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ye;->fYF:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_b
    return v0
.end method
