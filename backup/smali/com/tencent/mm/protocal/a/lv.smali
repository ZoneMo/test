.class public final Lcom/tencent/mm/protocal/a/lv;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public eBo:Ljava/lang/String;

.field public fNb:I


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
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/lv;->eBo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/lv;->eBo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 25
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/lv;->fNb:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 26
    return-void
.end method

.method public final br([B)Lcom/tencent/mm/protocal/a/lv;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 28
    new-instance v2, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/lv;->fxi:La/a/a/a/a/b;

    invoke-direct {v2, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 29
    invoke-static {v2}, Lcom/tencent/mm/protocal/a/lv;->a(La/a/a/a/a;)I

    move-result v0

    .line 31
    :goto_0
    if-lez v0, :cond_1

    .line 32
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_0

    .line 33
    invoke-virtual {v2}, La/a/a/a/a;->aPZ()V

    .line 35
    :cond_0
    invoke-static {v2}, Lcom/tencent/mm/protocal/a/lv;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 32
    :pswitch_0
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/lv;->eBo:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/lv;->fNb:I

    move v0, v1

    goto :goto_1

    .line 38
    :cond_1
    return-object p0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/lv;->br([B)Lcom/tencent/mm/protocal/a/lv;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/lv;->eBo:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/lv;->eBo:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 17
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/lv;->fNb:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    return v0
.end method