.class final Lcom/tencent/mm/ui/chatting/jg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 5201
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/jg;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 5205
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/jg;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    if-eqz v0, :cond_0

    .line 5206
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/jg;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->notifyDataSetChanged()V

    .line 5208
    :cond_0
    return-void
.end method
