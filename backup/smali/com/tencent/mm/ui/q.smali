.class final Lcom/tencent/mm/ui/q;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic gkY:Lcom/tencent/mm/ui/o;

.field private gkZ:Z

.field public final gla:I

.field public final glb:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/o;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/tencent/mm/ui/q;->gkY:Lcom/tencent/mm/ui/o;

    .line 882
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 884
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/q;->gla:I

    .line 885
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/q;->glb:I

    .line 883
    return-void
.end method


# virtual methods
.method public final aEm()V
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/tencent/mm/ui/q;->gla:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/q;->sendEmptyMessage(I)Z

    .line 903
    return-void
.end method

.method public final b(Lcom/tencent/mm/ui/m;)V
    .locals 2
    .parameter

    .prologue
    .line 906
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 907
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 908
    iget v1, p0, Lcom/tencent/mm/ui/q;->glb:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 909
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/q;->sendMessage(Landroid/os/Message;)Z

    .line 910
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/q;->gkZ:Z

    .line 914
    iget v0, p0, Lcom/tencent/mm/ui/q;->gla:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/q;->removeMessages(I)V

    .line 915
    iget v0, p0, Lcom/tencent/mm/ui/q;->glb:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/q;->removeMessages(I)V

    .line 916
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 888
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 889
    iget-boolean v0, p0, Lcom/tencent/mm/ui/q;->gkZ:Z

    if-eqz v0, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/q;->gkY:Lcom/tencent/mm/ui/o;

    monitor-enter v1

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/q;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v2, p0, Lcom/tencent/mm/ui/q;->gkY:Lcom/tencent/mm/ui/o;

    invoke-static {v2}, Lcom/tencent/mm/ui/o;->d(Lcom/tencent/mm/ui/o;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/o;->b(Lcom/tencent/mm/ui/o;I)I

    .line 892
    iget-object v0, p0, Lcom/tencent/mm/ui/q;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v0, v0, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v0, v0, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    const-string v2, "newcursor updateWorkerRefresh status %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/mm/ui/q;->gkY:Lcom/tencent/mm/ui/o;

    invoke-static {v5}, Lcom/tencent/mm/ui/o;->e(Lcom/tencent/mm/ui/o;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/tencent/mm/ui/q;->gla:I

    if-ne v0, v1, :cond_2

    .line 895
    iget-object v0, p0, Lcom/tencent/mm/ui/q;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v0, v0, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    invoke-static {v0}, Lcom/tencent/mm/ui/h;->d(Lcom/tencent/mm/ui/h;)V

    goto :goto_0

    .line 893
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 896
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/tencent/mm/ui/q;->glb:I

    if-ne v0, v1, :cond_0

    .line 897
    iget-object v0, p0, Lcom/tencent/mm/ui/q;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v1, v0, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/ui/m;

    invoke-static {v1, v0, v6, v7}, Lcom/tencent/mm/ui/h;->a(Lcom/tencent/mm/ui/h;Lcom/tencent/mm/ui/m;ZZ)V

    goto :goto_0
.end method
