.class final Lcom/tencent/mm/ui/conversation/bo;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic gZI:Lcom/tencent/mm/ui/conversation/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1922
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/bo;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bo;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->b(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/conversation/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bo;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->b(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/conversation/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->clearCache()V

    .line 1928
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bo;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->b(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/conversation/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->notifyDataSetChanged()V

    .line 1930
    :cond_0
    return-void
.end method
