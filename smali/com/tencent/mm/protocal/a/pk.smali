.class public final Lcom/tencent/mm/protocal/a/pk;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fCt:Ljava/lang/String;

.field public fCu:I

.field public fCv:I

.field public fRM:Ljava/lang/String;

.field public fRN:Ljava/lang/String;

.field public fRO:Ljava/lang/String;

.field public fRP:Ljava/lang/String;

.field public fRQ:Ljava/lang/String;

.field public fRR:Ljava/lang/String;

.field public fRS:Ljava/lang/String;

.field public fyR:Ljava/lang/String;

.field public fyV:Ljava/lang/String;

.field public fyW:Ljava/lang/String;

.field public fyY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/pk;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 133
    packed-switch p2, :pswitch_data_0

    .line 191
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 135
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fyR:Ljava/lang/String;

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fyV:Ljava/lang/String;

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fRM:Ljava/lang/String;

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fyW:Ljava/lang/String;

    goto :goto_0

    .line 151
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fRN:Ljava/lang/String;

    goto :goto_0

    .line 155
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/pk;->fCv:I

    goto :goto_0

    .line 159
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fRO:Ljava/lang/String;

    goto :goto_0

    .line 163
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fyY:Ljava/lang/String;

    goto :goto_0

    .line 167
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fCt:Ljava/lang/String;

    goto :goto_0

    .line 171
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fRP:Ljava/lang/String;

    goto :goto_0

    .line 175
    :pswitch_a
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fRQ:Ljava/lang/String;

    goto :goto_0

    .line 179
    :pswitch_b
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fRR:Ljava/lang/String;

    goto :goto_0

    .line 183
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/pk;->fRS:Ljava/lang/String;

    goto :goto_0

    .line 187
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/pk;->fCu:I

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fyR:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fyR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fyV:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fyV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fRM:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 87
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fyW:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 90
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fyW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fRN:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 93
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 95
    :cond_4
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/pk;->fCv:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fRO:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 97
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fyY:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 100
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fyY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fCt:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 103
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fCt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 105
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fRP:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 106
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRP:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 108
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fRQ:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 109
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRQ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 111
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fRR:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 112
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 114
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pk;->fRS:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 115
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 117
    :cond_b
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/pk;->fCu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 118
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/pk;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/pk;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/pk;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/pk;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/pk;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fyR:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fyR:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fyV:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 42
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pk;->fyV:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRM:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 45
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pk;->fRM:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fyW:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 48
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pk;->fyW:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRN:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 51
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pk;->fRN:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    :cond_4
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/pk;->fCv:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRO:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 55
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pk;->fRO:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fyY:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 58
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pk;->fyY:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fCt:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 61
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pk;->fCt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRP:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 64
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pk;->fRP:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRQ:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 67
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pk;->fRQ:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRR:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 70
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pk;->fRR:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pk;->fRS:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 73
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pk;->fRS:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_b
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/pk;->fCu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    return v0
.end method
