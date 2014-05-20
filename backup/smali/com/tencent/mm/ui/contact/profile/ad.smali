.class final Lcom/tencent/mm/ui/contact/profile/ad;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic cQO:Lcom/tencent/mm/ui/base/ch;

.field final synthetic cQP:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/ch;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/ad;->cQO:Lcom/tencent/mm/ui/base/ch;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/ad;->cQP:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ad;->cQO:Lcom/tencent/mm/ui/base/ch;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ad;->cQO:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 270
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ad;->cQP:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    :cond_0
    return-void
.end method
