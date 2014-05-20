.class final Lcom/tencent/mm/ui/chatting/hz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic exj:Ljava/lang/String;

.field final synthetic gPW:Lcom/tencent/mm/ui/chatting/hw;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/hw;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2825
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/hz;->gPW:Lcom/tencent/mm/ui/chatting/hw;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/hz;->exj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2829
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hz;->exj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2830
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hz;->gPW:Lcom/tencent/mm/ui/chatting/hw;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/hw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/hz;->exj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->qM(Ljava/lang/String;)V

    .line 2832
    :cond_0
    return-void
.end method
