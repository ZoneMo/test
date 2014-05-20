.class public final Lcom/tencent/mm/protocal/a/yg;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fAN:I

.field public fFg:I

.field public fGB:Ljava/lang/String;

.field public fOc:I

.field public fOd:I

.field public fOe:Lcom/tencent/mm/protocal/a/rv;

.field public fOf:I

.field public fYC:I

.field public fYD:I

.field public fYE:I

.field public fYF:Ljava/lang/String;

.field public fYG:I

.field public fYH:I

.field public fYI:Lcom/tencent/mm/protocal/a/rv;

.field public fYJ:I

.field public fYK:I

.field public fYL:Ljava/lang/String;

.field public fYM:Ljava/lang/String;

.field public fzT:Ljava/lang/String;

.field public fzp:Ljava/lang/String;

.field public fzq:Ljava/lang/String;

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
    .line 104
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fOe:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fYI:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_2

    .line 108
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fzT:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 112
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fzT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fzp:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 115
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fzp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fzq:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 118
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fzq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 120
    :cond_5
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fOc:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 121
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fOd:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 122
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fOe:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_6

    .line 123
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fOe:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fOe:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 126
    :cond_6
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYG:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 127
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYH:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 128
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fYI:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_7

    .line 129
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYI:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 130
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fYI:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 132
    :cond_7
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYJ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 133
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fFg:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 134
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fOf:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 135
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYK:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fzz:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 137
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fzz:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 139
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fYL:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 140
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 142
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fGB:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 143
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fGB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 145
    :cond_a
    const/16 v0, 0x12

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fAN:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 146
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fYM:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 147
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 149
    :cond_b
    const/16 v0, 0x14

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYC:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 150
    const/16 v0, 0x15

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYD:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 151
    const/16 v0, 0x16

    iget v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYE:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yg;->fYF:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 153
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 155
    :cond_c
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 56
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fzT:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 59
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yg;->fzT:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fzp:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 62
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yg;->fzp:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fzq:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 65
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yg;->fzq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_3
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fOc:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fOd:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fOe:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_4

    .line 70
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yg;->fOe:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_4
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fYG:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fYH:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYI:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_5

    .line 75
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yg;->fYI:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_5
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fYJ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fFg:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fOf:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fYK:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fzz:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 82
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yg;->fzz:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYL:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 85
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yg;->fYL:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fGB:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 88
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yg;->fGB:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_8
    const/16 v1, 0x12

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fAN:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYM:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 92
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yg;->fYM:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_9
    const/16 v1, 0x14

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fYC:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    const/16 v1, 0x15

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fYD:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    const/16 v1, 0x16

    iget v2, p0, Lcom/tencent/mm/protocal/a/yg;->fYE:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yg;->fYF:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 98
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yg;->fYF:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_a
    return v0
.end method
