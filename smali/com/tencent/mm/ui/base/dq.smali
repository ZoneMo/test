.class final Lcom/tencent/mm/ui/base/dq;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic gCL:Lcom/tencent/mm/ui/base/ce;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/ce;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/tencent/mm/ui/base/dq;->gCL:Lcom/tencent/mm/ui/base/ce;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dq;->gCL:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 213
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 214
    return-void
.end method
