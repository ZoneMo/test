.class final Lcom/tencent/mm/n/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cmA:Ljava/lang/String;

.field final synthetic cmK:Lcom/tencent/mm/n/an;

.field final synthetic cmL:I

.field final synthetic cmM:[B

.field final synthetic cmy:I

.field final synthetic cmz:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/n/an;IIILjava/lang/String;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tencent/mm/n/ap;->cmK:Lcom/tencent/mm/n/an;

    iput p2, p0, Lcom/tencent/mm/n/ap;->cmL:I

    iput p3, p0, Lcom/tencent/mm/n/ap;->cmy:I

    iput p4, p0, Lcom/tencent/mm/n/ap;->cmz:I

    iput-object p5, p0, Lcom/tencent/mm/n/ap;->cmA:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/mm/n/ap;->cmM:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/mm/n/ap;->cmK:Lcom/tencent/mm/n/an;

    invoke-static {v0}, Lcom/tencent/mm/n/an;->c(Lcom/tencent/mm/n/an;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/n/ap;->cmK:Lcom/tencent/mm/n/an;

    invoke-static {v0}, Lcom/tencent/mm/n/an;->b(Lcom/tencent/mm/n/an;)Lcom/tencent/mm/network/ab;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/n/ap;->cmL:I

    iget v2, p0, Lcom/tencent/mm/n/ap;->cmy:I

    iget v3, p0, Lcom/tencent/mm/n/ap;->cmz:I

    iget-object v4, p0, Lcom/tencent/mm/n/ap;->cmA:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/n/ap;->cmK:Lcom/tencent/mm/n/an;

    invoke-static {v5}, Lcom/tencent/mm/n/an;->a(Lcom/tencent/mm/n/an;)Lcom/tencent/mm/network/aj;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/n/ap;->cmM:[B

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/ab;->a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/n/ap;->cmK:Lcom/tencent/mm/n/an;

    invoke-static {v0}, Lcom/tencent/mm/n/an;->d(Lcom/tencent/mm/n/an;)Lcom/tencent/mm/n/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/x;->wN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/n/ap;->cmK:Lcom/tencent/mm/n/an;

    invoke-static {v0}, Lcom/tencent/mm/n/an;->d(Lcom/tencent/mm/n/an;)Lcom/tencent/mm/n/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/x;->wO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string v0, "MicroMsg.RemoteOnGYNetEnd"

    const-string v1, "the netscene hasn\'t call callback to onSceneEnd, type:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/n/ap;->cmK:Lcom/tencent/mm/n/an;

    invoke-static {v4}, Lcom/tencent/mm/n/an;->d(Lcom/tencent/mm/n/an;)Lcom/tencent/mm/n/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/aa;->appenderFlush()V

    goto :goto_0
.end method
