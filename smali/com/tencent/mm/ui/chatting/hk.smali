.class final Lcom/tencent/mm/ui/chatting/hk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gPS:Lcom/tencent/mm/ui/chatting/hj;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/hj;)V
    .locals 0
    .parameter

    .prologue
    .line 2178
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/hk;->gPS:Lcom/tencent/mm/ui/chatting/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hk;->gPS:Lcom/tencent/mm/ui/chatting/hj;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/hj;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->p(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z

    .line 2183
    return-void
.end method
