.class public final Lcom/tencent/mm/protocal/a/bz;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fAX:I

.field public fCL:I

.field public fCM:I

.field public fCN:I

.field public fCO:I

.field public fCP:Ljava/util/LinkedList;

.field public fCQ:Ljava/lang/String;

.field public fCR:Lcom/tencent/mm/protocal/a/rv;

.field public fCS:I

.field public fCT:I

.field public fCU:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/bz;->fCP:Ljava/util/LinkedList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/bz;->fCU:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/bz;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 90
    packed-switch p2, :pswitch_data_0

    .line 178
    :goto_0
    return v0

    .line 92
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/bz;->fCL:I

    move v0, v1

    .line 93
    goto :goto_0

    .line 96
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/bz;->fAX:I

    move v0, v1

    .line 97
    goto :goto_0

    .line 100
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/bz;->fCM:I

    move v0, v1

    .line 101
    goto :goto_0

    .line 104
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/bz;->fCN:I

    move v0, v1

    .line 105
    goto :goto_0

    .line 108
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/bz;->fCO:I

    move v0, v1

    .line 109
    goto :goto_0

    .line 112
    :pswitch_5
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 114
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 115
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 116
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/bz;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 119
    :goto_2
    if-eqz v0, :cond_0

    .line 120
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/bz;->a(La/a/a/a/a;)I

    move-result v0

    .line 121
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_2

    .line 123
    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/bz;->fCP:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 127
    goto :goto_0

    .line 130
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/bz;->fCQ:Ljava/lang/String;

    move v0, v1

    .line 131
    goto :goto_0

    .line 134
    :pswitch_7
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 136
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 137
    new-instance v5, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    .line 138
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/bz;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 141
    :goto_4
    if-eqz v0, :cond_2

    .line 142
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/bz;->a(La/a/a/a/a;)I

    move-result v0

    .line 143
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_4

    .line 145
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/bz;->fCR:Lcom/tencent/mm/protocal/a/rv;

    .line 135
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 149
    goto/16 :goto_0

    .line 152
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/bz;->fCS:I

    move v0, v1

    .line 153
    goto/16 :goto_0

    .line 156
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/bz;->fCT:I

    move v0, v1

    .line 157
    goto/16 :goto_0

    .line 160
    :pswitch_a
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_5
    if-ge v2, v4, :cond_5

    .line 162
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 163
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 164
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/bz;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 167
    :goto_6
    if-eqz v0, :cond_4

    .line 168
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/bz;->a(La/a/a/a/a;)I

    move-result v0

    .line 169
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_6

    .line 171
    :cond_4
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/bz;->fCU:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_5
    move v0, v1

    .line 175
    goto/16 :goto_0

    .line 90
    nop

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
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 51
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bz;->fCR:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCL:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 55
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/bz;->fAX:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 56
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCM:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 57
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCN:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 58
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCO:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 59
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCP:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 60
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bz;->fCQ:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCQ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bz;->fCR:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bz;->fCR:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v0

    invoke-virtual {p1, v2, v0}, La/a/a/c/a;->bv(II)V

    .line 65
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bz;->fCR:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 67
    :cond_2
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCS:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 68
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCT:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 69
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCU:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 70
    return-void
.end method

.method public final aK([B)Lcom/tencent/mm/protocal/a/bz;
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bz;->fCP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 73
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bz;->fCU:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 74
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/bz;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 75
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/bz;->a(La/a/a/a/a;)I

    move-result v0

    .line 77
    :goto_0
    if-lez v0, :cond_1

    .line 78
    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/bz;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/bz;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    .line 81
    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/bz;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bz;->fCR:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_2

    .line 85
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    return-object p0
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/bz;->aK([B)Lcom/tencent/mm/protocal/a/bz;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 31
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCL:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 33
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/bz;->fAX:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/bz;->fCM:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/bz;->fCN:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/bz;->fCO:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bz;->fCP:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCQ:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bz;->fCQ:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCR:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bz;->fCR:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-static {v3, v1}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_1
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/bz;->fCS:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/a/bz;->fCT:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bz;->fCU:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    return v0
.end method
