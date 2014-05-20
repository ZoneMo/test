.class final Lcom/tencent/mm/ui/chatting/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic gMs:Lcom/tencent/mm/ui/chatting/bv;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ca;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ca;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ca;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->a(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/n/r;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/n/r;->getMaxAmplitude()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->kB(I)V

    .line 303
    const/4 v0, 0x1

    return v0
.end method
