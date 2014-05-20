.class final Lcom/tencent/mm/ui/chatting/hy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gPW:Lcom/tencent/mm/ui/chatting/hw;

.field final synthetic gPX:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/hw;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2814
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/hy;->gPW:Lcom/tencent/mm/ui/chatting/hw;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/hy;->gPX:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2818
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hy;->gPW:Lcom/tencent/mm/ui/chatting/hw;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/hw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/hy;->gPX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->qL(Ljava/lang/String;)V

    .line 2819
    return-void
.end method
