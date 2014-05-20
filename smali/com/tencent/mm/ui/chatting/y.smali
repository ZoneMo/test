.class final Lcom/tencent/mm/ui/chatting/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic gKM:Lcom/tencent/mm/ui/chatting/v;

.field final synthetic gKN:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/v;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/y;->gKM:Lcom/tencent/mm/ui/chatting/v;

    iput-boolean p2, p0, Lcom/tencent/mm/ui/chatting/y;->gKN:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 560
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/y;->gKN:Z

    if-nez v0, :cond_0

    .line 561
    const-string v0, "sensor"

    const-string v1, "speaker off"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/y;->gKM:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/chatting/v;->dH(Z)V

    .line 563
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/y;->gKM:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->aIM()V

    .line 573
    :goto_0
    return v5

    .line 566
    :cond_0
    const-string v0, "sensor"

    const-string v1, "speaker true"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/y;->gKM:Lcom/tencent/mm/ui/chatting/v;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/v;->b(Lcom/tencent/mm/ui/chatting/v;)V

    .line 568
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/y;->gKM:Lcom/tencent/mm/ui/chatting/v;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/y;->gKM:Lcom/tencent/mm/ui/chatting/v;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/v;->a(Lcom/tencent/mm/ui/chatting/v;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/y;->gKM:Lcom/tencent/mm/ui/chatting/v;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/v;->a(Lcom/tencent/mm/ui/chatting/v;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v2

    const v3, 0x7f07005a

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/dn;->a(Landroid/app/Activity;Ljava/lang/String;J)Lcom/tencent/mm/ui/base/ce;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/v;->a(Lcom/tencent/mm/ui/chatting/v;Lcom/tencent/mm/ui/base/ce;)Lcom/tencent/mm/ui/base/ce;

    .line 569
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/y;->gKM:Lcom/tencent/mm/ui/chatting/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/v;->dH(Z)V

    .line 570
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/y;->gKM:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->aIQ()V

    goto :goto_0
.end method
