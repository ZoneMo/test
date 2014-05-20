.class final Lcom/tencent/mm/ui/chatting/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gNb:Lcom/tencent/mm/storage/ak;

.field final synthetic gNc:I

.field final synthetic gNj:Lcom/tencent/mm/ui/chatting/ee;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ee;Lcom/tencent/mm/storage/ak;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/eg;->gNj:Lcom/tencent/mm/ui/chatting/ee;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/eg;->gNb:Lcom/tencent/mm/storage/ak;

    iput p3, p0, Lcom/tencent/mm/ui/chatting/eg;->gNc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/eg;->gNb:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "MicroMsg.ChattingItemVoiceRemindRemind"

    const-string v1, "filename is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/eg;->gNj:Lcom/tencent/mm/ui/chatting/ee;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ee;->c(Lcom/tencent/mm/ui/chatting/ee;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gMj:Lcom/tencent/mm/ui/chatting/v;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/eg;->gNc:I

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/eg;->gNb:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/v;->e(ILcom/tencent/mm/storage/ak;)V

    goto :goto_0
.end method
