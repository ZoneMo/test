.class public final Lcom/tencent/mm/protocal/a/gs;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fJx:Ljava/lang/String;

.field public fyR:Ljava/lang/String;

.field public fyT:Ljava/lang/String;

.field public fyU:Ljava/lang/String;

.field public fyZ:Ljava/lang/String;

.field public fza:Lcom/tencent/mm/protocal/a/aal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/gs;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 78
    packed-switch p2, :pswitch_data_0

    .line 118
    :goto_0
    return v0

    .line 80
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/gs;->fyR:Ljava/lang/String;

    move v0, v1

    .line 81
    goto :goto_0

    .line 84
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/gs;->fJx:Ljava/lang/String;

    move v0, v1

    .line 85
    goto :goto_0

    .line 88
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/gs;->fyU:Ljava/lang/String;

    move v0, v1

    .line 89
    goto :goto_0

    .line 92
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/gs;->fyT:Ljava/lang/String;

    move v0, v1

    .line 93
    goto :goto_0

    .line 96
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/gs;->fyZ:Ljava/lang/String;

    move v0, v1

    .line 97
    goto :goto_0

    .line 100
    :pswitch_5
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 102
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 103
    new-instance v5, Lcom/tencent/mm/protocal/a/aal;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/aal;-><init>()V

    .line 104
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/gs;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 107
    :goto_2
    if-eqz v0, :cond_0

    .line 108
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/gs;->a(La/a/a/a/a;)I

    move-result v0

    .line 109
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/aal;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/aal;I)Z

    move-result v0

    goto :goto_2

    .line 111
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/gs;->fza:Lcom/tencent/mm/protocal/a/aal;

    .line 101
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 115
    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gs;->fyR:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fyR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gs;->fJx:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 48
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fJx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gs;->fyU:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 51
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fyU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gs;->fyT:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 54
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fyT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gs;->fyZ:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 57
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fyZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gs;->fza:Lcom/tencent/mm/protocal/a/aal;

    if-eqz v0, :cond_5

    .line 60
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fza:Lcom/tencent/mm/protocal/a/aal;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/aal;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 61
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gs;->fza:Lcom/tencent/mm/protocal/a/aal;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/aal;->a(La/a/a/c/a;)V

    .line 63
    :cond_5
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/gs;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/gs;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/gs;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/gs;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/gs;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fyR:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fyR:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fJx:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 26
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gs;->fJx:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fyU:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 29
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gs;->fyU:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fyT:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 32
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gs;->fyT:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fyZ:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 35
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gs;->fyZ:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gs;->fza:Lcom/tencent/mm/protocal/a/aal;

    if-eqz v1, :cond_5

    .line 38
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gs;->fza:Lcom/tencent/mm/protocal/a/aal;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/aal;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_5
    return v0
.end method
