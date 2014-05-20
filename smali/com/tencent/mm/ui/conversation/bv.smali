.class final Lcom/tencent/mm/ui/conversation/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/am;


# instance fields
.field final synthetic gZI:Lcom/tencent/mm/ui/conversation/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/bv;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    return-void
.end method

.method public final onFinish()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bv;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->h(Lcom/tencent/mm/ui/conversation/MainUI;)V

    .line 435
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bv;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->h(Lcom/tencent/mm/ui/conversation/MainUI;)V

    .line 426
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bv;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->g(Lcom/tencent/mm/ui/conversation/MainUI;)V

    .line 417
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bv;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->b(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/conversation/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bv;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->b(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/conversation/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->notifyDataSetChanged()V

    .line 420
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public final onStop()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bv;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->h(Lcom/tencent/mm/ui/conversation/MainUI;)V

    .line 445
    return-void
.end method

.method public final pB()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bv;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->h(Lcom/tencent/mm/ui/conversation/MainUI;)V

    .line 440
    return-void
.end method
