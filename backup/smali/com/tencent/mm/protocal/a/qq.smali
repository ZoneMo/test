.class public final Lcom/tencent/mm/protocal/a/qq;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fFn:Ljava/lang/String;

.field public fGh:I

.field public fIF:Ljava/lang/String;

.field public fLX:I

.field public fTg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/qq;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 57
    packed-switch p2, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 59
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/qq;->fLX:I

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/qq;->fIF:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/qq;->fFn:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/qq;->fGh:I

    goto :goto_0

    .line 75
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/qq;->fTg:I

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/qq;->fLX:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 34
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qq;->fIF:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qq;->fIF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qq;->fFn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qq;->fFn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 40
    :cond_1
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/qq;->fGh:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 41
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/qq;->fTg:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 42
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/qq;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/qq;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/qq;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/qq;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/qq;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/qq;->fLX:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 21
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qq;->fIF:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qq;->fIF:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qq;->fFn:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 25
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qq;->fFn:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_1
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/qq;->fGh:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/qq;->fTg:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    return v0
.end method