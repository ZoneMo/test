.class public final Lcom/tencent/mm/protocal/a/or;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fAK:I

.field public fAS:Ljava/lang/String;

.field public fMa:I

.field public fPT:I

.field public fPU:Ljava/lang/String;

.field public fPV:F

.field public fPW:Ljava/lang/String;

.field public fPX:Ljava/lang/String;

.field public fPY:Ljava/lang/String;

.field public fPZ:Ljava/lang/String;

.field public fQa:Ljava/lang/String;

.field public fQb:Ljava/lang/String;

.field public fQc:Ljava/lang/String;

.field public fQd:Ljava/lang/String;

.field public fQe:Ljava/lang/String;

.field public fQf:Ljava/lang/String;

.field public fQg:I

.field public fyE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/or;->fPT:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 95
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/or;->fAK:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 99
    :cond_0
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/or;->fPV:F

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(IF)V

    .line 100
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 104
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 107
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 110
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 113
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 116
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 119
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 122
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 124
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 125
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQf:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 128
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 130
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fyE:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 131
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fyE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 133
    :cond_b
    const/16 v0, 0x11

    iget v1, p0, Lcom/tencent/mm/protocal/a/or;->fQg:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 134
    const/16 v0, 0x12

    iget v1, p0, Lcom/tencent/mm/protocal/a/or;->fMa:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fAS:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 136
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fAS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 138
    :cond_c
    return-void
.end method

.method public final bD([B)Lcom/tencent/mm/protocal/a/or;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 140
    new-instance v2, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/or;->fxi:La/a/a/a/a/b;

    invoke-direct {v2, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 141
    invoke-static {v2}, Lcom/tencent/mm/protocal/a/or;->a(La/a/a/a/a;)I

    move-result v0

    .line 143
    :goto_0
    if-lez v0, :cond_1

    .line 144
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_0

    .line 145
    invoke-virtual {v2}, La/a/a/a/a;->aPZ()V

    .line 147
    :cond_0
    invoke-static {v2}, Lcom/tencent/mm/protocal/a/or;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/or;->fPT:I

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/or;->fAK:I

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2}, La/a/a/a/a;->aPV()F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/or;->fPV:F

    move v0, v1

    goto :goto_1

    :pswitch_5
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_6
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_7
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_8
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_9
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_a
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_b
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_c
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_d
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_e
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fQf:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_f
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fyE:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/or;->fQg:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/or;->fMa:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/or;->fAS:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    .line 150
    :cond_1
    return-object p0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/or;->bD([B)Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/or;->fPT:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 47
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/or;->fAK:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_0
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/or;->fPV:F

    invoke-static {v1}, La/a/a/a;->oK(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 53
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 56
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 59
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 62
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 65
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 68
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 71
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 74
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 77
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fQf:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 80
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fQf:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fyE:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 83
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fyE:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_b
    const/16 v1, 0x11

    iget v2, p0, Lcom/tencent/mm/protocal/a/or;->fQg:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    const/16 v1, 0x12

    iget v2, p0, Lcom/tencent/mm/protocal/a/or;->fMa:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/or;->fAS:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 88
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/or;->fAS:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_c
    return v0
.end method
