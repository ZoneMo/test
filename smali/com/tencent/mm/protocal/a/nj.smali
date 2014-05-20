.class public final Lcom/tencent/mm/protocal/a/nj;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fOk:I

.field public fOl:I


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
    .line 20
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/nj;->fOk:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 21
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/nj;->fOl:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 22
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 6
    new-instance v2, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/nj;->fxi:La/a/a/a/a/b;

    invoke-direct {v2, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v2}, Lcom/tencent/mm/protocal/a/nj;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v2}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v2}, Lcom/tencent/mm/protocal/a/nj;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nj;->fOk:I

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nj;->fOl:I

    move v0, v1

    goto :goto_1

    :cond_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/nj;->fOk:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 15
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/nj;->fOl:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    return v0
.end method
