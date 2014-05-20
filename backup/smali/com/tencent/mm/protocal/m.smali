.class public final Lcom/tencent/mm/protocal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tencent/mm/protocal/q;Lcom/tencent/mm/protocal/a/av;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/av;->fAZ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/protocal/q;->ez(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static b(Lcom/tencent/mm/protocal/p;)Lcom/tencent/mm/protocal/a/au;
    .locals 3
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/tencent/mm/protocal/a/au;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/au;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/tencent/mm/protocal/p;->getClientVersion()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/au;->fAm:I

    .line 41
    invoke-virtual {p0}, Lcom/tencent/mm/protocal/p;->xd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/am/b;->au([B)Lcom/tencent/mm/am/b;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/tencent/mm/am/b;->lf(I)Lcom/tencent/mm/am/b;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/au;->fAl:Lcom/tencent/mm/am/b;

    .line 42
    invoke-virtual {p0}, Lcom/tencent/mm/protocal/p;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/am/b;->au([B)Lcom/tencent/mm/am/b;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Lcom/tencent/mm/am/b;->lf(I)Lcom/tencent/mm/am/b;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/au;->fAn:Lcom/tencent/mm/am/b;

    .line 43
    invoke-virtual {p0}, Lcom/tencent/mm/protocal/p;->xe()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/au;->fyJ:I

    .line 44
    invoke-virtual {p0}, Lcom/tencent/mm/protocal/p;->uo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/am/b;->au([B)Lcom/tencent/mm/am/b;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/tencent/mm/am/b;->lf(I)Lcom/tencent/mm/am/b;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/au;->fAW:Lcom/tencent/mm/am/b;

    .line 45
    invoke-virtual {p0}, Lcom/tencent/mm/protocal/p;->sd()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/au;->fAX:I

    .line 46
    return-object v0
.end method
