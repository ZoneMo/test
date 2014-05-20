.class final Lcom/tencent/mm/ui/chatting/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/t;


# instance fields
.field final synthetic gMs:Lcom/tencent/mm/ui/chatting/bv;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/bx;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final wI()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bx;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asz()V

    .line 158
    return-void
.end method
