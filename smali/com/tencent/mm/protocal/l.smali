.class public final Lcom/tencent/mm/protocal/l;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public fxM:Lcom/tencent/mm/protocal/a/ou;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 67
    new-instance v0, Lcom/tencent/mm/protocal/a/ou;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/ou;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    return-void
.end method


# virtual methods
.method public final getCmdId()I
    .locals 1

    .prologue
    .line 88
    const v0, 0x3b9acab2

    return v0
.end method

.method public final s([B)I
    .locals 2
    .parameter

    .prologue
    .line 71
    new-instance v0, Lcom/tencent/mm/protocal/a/ou;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/ou;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/ou;->bE([B)Lcom/tencent/mm/protocal/a/ou;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ou;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/protocal/m;->a(Lcom/tencent/mm/protocal/q;Lcom/tencent/mm/protocal/a/av;)V

    .line 73
    iget-object v0, p0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fQU:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/protocal/j;->bk(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ou;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/av;->fAY:I

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fAW:Lcom/tencent/mm/am/b;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    const-string v0, "MicroMsg.MMAuth"

    const-string v1, "retcode 0 but invalid uin or invalid session"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ou;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/mm/protocal/a/av;->fAY:I

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ou;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/av;->fAY:I

    return v0

    .line 77
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->avA()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
