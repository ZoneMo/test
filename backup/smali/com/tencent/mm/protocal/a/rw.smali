.class public final Lcom/tencent/mm/protocal/a/rw;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field private fUe:Ljava/lang/String;

.field private fUf:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x1

    .line 66
    packed-switch p2, :pswitch_data_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    .line 68
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/a/rw;->fUf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rw;->fUe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rw;->fUe:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 1
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/rw;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-virtual {v1}, La/a/a/a/a;->aPY()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_1
    invoke-virtual {v1}, La/a/a/a/a;->aPY()I

    move-result v0

    goto :goto_0
.end method

.method public final ns()I
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/rw;->fUf:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rw;->fUe:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/b/b/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x0

    .line 44
    return v0
.end method

.method protected final bridge synthetic nt()Lcom/tencent/mm/am/a;
    .locals 0

    .prologue
    .line 1
    return-object p0
.end method

.method public final sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;
    .locals 1
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/rw;->fUe:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/rw;->fUf:Z

    .line 19
    return-object p0
.end method

.method public final toByteArray()[B
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/tencent/mm/am/a;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rw;->fUe:Ljava/lang/String;

    return-object v0
.end method
