.class final Lcom/tencent/mm/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic caT:Lcom/tencent/mm/d/b;


# direct methods
.method constructor <init>(Lcom/tencent/mm/d/b;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/mm/d/d;->caT:Lcom/tencent/mm/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string v0, "MicroMsg.BroadcastController"

    const-string v1, "notify cancel"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/d/d;->caT:Lcom/tencent/mm/d/b;

    invoke-static {v0}, Lcom/tencent/mm/d/b;->b(Lcom/tencent/mm/d/b;)Lcom/tencent/mm/c/a/hj;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/c/a/hj;->bRf:Lcom/tencent/mm/c/a/hk;

    iput-boolean v2, v0, Lcom/tencent/mm/c/a/hk;->visible:Z

    .line 60
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/d/d;->caT:Lcom/tencent/mm/d/b;

    invoke-static {v1}, Lcom/tencent/mm/d/b;->b(Lcom/tencent/mm/d/b;)Lcom/tencent/mm/c/a/hj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 61
    return v2
.end method
