.class final Lcom/tencent/mm/ui/friend/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/al;


# instance fields
.field final synthetic haO:Lcom/tencent/mm/ui/friend/f;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/f;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/h;->haO:Lcom/tencent/mm/ui/friend/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ca(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    const-string v0, "MicroMsg.FMessageContactView"

    const-string v1, "onNotifyChange, fmsg change"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/h;->haO:Lcom/tencent/mm/ui/friend/f;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/f;->b(Lcom/tencent/mm/ui/friend/f;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/h;->haO:Lcom/tencent/mm/ui/friend/f;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/f;->b(Lcom/tencent/mm/ui/friend/f;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/h;->haO:Lcom/tencent/mm/ui/friend/f;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/f;->b(Lcom/tencent/mm/ui/friend/f;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 82
    return-void
.end method
