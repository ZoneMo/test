.class final Lcom/tencent/mm/ui/chatting/hm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/chatting/fw;


# instance fields
.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 2230
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/hm;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final nA(I)V
    .locals 1
    .parameter

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hm;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nC(I)V

    .line 2235
    return-void
.end method
