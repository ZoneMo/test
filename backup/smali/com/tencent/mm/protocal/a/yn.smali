.class public Lcom/tencent/mm/protocal/a/yn;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fDL:I

.field public fDQ:I

.field public fDR:I

.field public fYQ:I

.field public fYR:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/yn;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 53
    packed-switch p2, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 55
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/yn;->fDL:I

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/yn;->fYQ:I

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/yn;->fYR:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/yn;->fDQ:I

    goto :goto_0

    .line 71
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/yn;->fDR:I

    goto :goto_0

    .line 53
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
    .line 31
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/yn;->fDL:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 32
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/yn;->fYQ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 33
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yn;->fYR:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yn;->fYR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 36
    :cond_0
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/yn;->fDQ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 37
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/yn;->fDR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 38
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/yn;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/yn;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/yn;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/yn;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/yn;->a(La/a/a/a/a;)I

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

    iget v1, p0, Lcom/tencent/mm/protocal/a/yn;->fDL:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 21
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/yn;->fYQ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yn;->fYR:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yn;->fYR:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_0
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/yn;->fDQ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/yn;->fDR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    return v0
.end method
