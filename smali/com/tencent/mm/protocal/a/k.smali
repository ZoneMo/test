.class public final Lcom/tencent/mm/protocal/a/k;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public dGR:I

.field public fzg:I

.field public fzh:I

.field public fzi:I

.field public fzo:I

.field public fzp:Ljava/lang/String;

.field public fzq:Ljava/lang/String;

.field public fzr:I


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
    .line 42
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/k;->fzo:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 43
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/k;->fzp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/k;->fzp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/k;->fzq:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 47
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/k;->fzq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 49
    :cond_1
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/k;->dGR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 50
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/k;->fzg:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 51
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/k;->fzr:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 52
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/k;->fzh:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 53
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/k;->fzi:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 54
    return-void
.end method

.method public final aD([B)Lcom/tencent/mm/protocal/a/k;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 56
    new-instance v2, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/k;->fxi:La/a/a/a/a/b;

    invoke-direct {v2, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 57
    invoke-static {v2}, Lcom/tencent/mm/protocal/a/k;->a(La/a/a/a/a;)I

    move-result v0

    .line 59
    :goto_0
    if-lez v0, :cond_1

    .line 60
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_0

    .line 61
    invoke-virtual {v2}, La/a/a/a/a;->aPZ()V

    .line 63
    :cond_0
    invoke-static {v2}, Lcom/tencent/mm/protocal/a/k;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 60
    :pswitch_0
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/k;->fzo:I

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/k;->fzp:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/k;->fzq:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/k;->dGR:I

    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/k;->fzg:I

    move v0, v1

    goto :goto_1

    :pswitch_5
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/k;->fzr:I

    move v0, v1

    goto :goto_1

    :pswitch_6
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/k;->fzh:I

    move v0, v1

    goto :goto_1

    :pswitch_7
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/k;->fzi:I

    move v0, v1

    goto :goto_1

    .line 66
    :cond_1
    return-object p0

    .line 60
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
    .end packed-switch
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/k;->aD([B)Lcom/tencent/mm/protocal/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/k;->fzo:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 27
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/k;->fzp:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/k;->fzp:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/k;->fzq:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 31
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/k;->fzq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_1
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/k;->dGR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/k;->fzg:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/k;->fzr:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/k;->fzh:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/k;->fzi:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    return v0
.end method
