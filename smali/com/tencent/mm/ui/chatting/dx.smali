.class final Lcom/tencent/mm/ui/chatting/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gNb:Lcom/tencent/mm/storage/ak;

.field final synthetic gNc:I

.field final synthetic gNd:Lcom/tencent/mm/ui/chatting/dw;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/dw;Lcom/tencent/mm/storage/ak;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/dx;->gNd:Lcom/tencent/mm/ui/chatting/dw;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/dx;->gNb:Lcom/tencent/mm/storage/ak;

    iput p3, p0, Lcom/tencent/mm/ui/chatting/dx;->gNc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/dx;->gNb:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "MicroMsg.ChattingItemVoiceRemindConfirm"

    const-string v1, "filename is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/dx;->gNd:Lcom/tencent/mm/ui/chatting/dw;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/dw;->a(Lcom/tencent/mm/ui/chatting/dw;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gMj:Lcom/tencent/mm/ui/chatting/v;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dx;->gNc:I

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/dx;->gNb:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/v;->d(ILcom/tencent/mm/storage/ak;)V

    goto :goto_0
.end method
