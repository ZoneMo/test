.class public final Lcom/tencent/mm/protocal/a/op;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fDg:Ljava/lang/String;

.field public fDh:Ljava/lang/String;

.field public fPC:I

.field public fPD:I

.field public fPE:Lcom/tencent/mm/am/b;

.field public fPF:Ljava/lang/String;


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
    .line 40
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/op;->fPC:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 41
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/op;->fPD:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/op;->fPE:Lcom/tencent/mm/am/b;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/op;->fPE:Lcom/tencent/mm/am/b;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(ILcom/tencent/mm/am/b;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/op;->fPF:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 46
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/op;->fPF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/op;->fDg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 49
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/op;->fDg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/op;->fDh:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 52
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/op;->fDh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 54
    :cond_3
    return-void
.end method

.method public final bB([B)Lcom/tencent/mm/protocal/a/op;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 56
    new-instance v2, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/op;->fxi:La/a/a/a/a/b;

    invoke-direct {v2, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 57
    invoke-static {v2}, Lcom/tencent/mm/protocal/a/op;->a(La/a/a/a/a;)I

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
    invoke-static {v2}, Lcom/tencent/mm/protocal/a/op;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 60
    :pswitch_0
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/op;->fPC:I

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/op;->fPD:I

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, La/a/a/a/a;->aPX()Lcom/tencent/mm/am/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/op;->fPE:Lcom/tencent/mm/am/b;

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/op;->fPF:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/op;->fDg:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_5
    invoke-virtual {v2}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/op;->fDh:Ljava/lang/String;

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
    .end packed-switch
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/op;->bB([B)Lcom/tencent/mm/protocal/a/op;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/op;->fPC:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 23
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/op;->fPD:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/op;->fPE:Lcom/tencent/mm/am/b;

    if-eqz v1, :cond_0

    .line 25
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/op;->fPE:Lcom/tencent/mm/am/b;

    invoke-static {v1, v2}, La/a/a/a;->a(ILcom/tencent/mm/am/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/op;->fPF:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 28
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/op;->fPF:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/op;->fDg:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 31
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/op;->fDg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/op;->fDh:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 34
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/op;->fDh:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_3
    return v0
.end method
