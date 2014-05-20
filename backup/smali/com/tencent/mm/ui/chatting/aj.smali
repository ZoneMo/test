.class final Lcom/tencent/mm/ui/chatting/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/chatting/kq;


# instance fields
.field final synthetic gLh:Lcom/tencent/mm/ui/chatting/ai;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/aj;->gLh:Lcom/tencent/mm/ui/chatting/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final wu(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/aj;->gLh:Lcom/tencent/mm/ui/chatting/ai;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ai;->gLd:Lcom/tencent/mm/ui/chatting/ChatFooterBrandQA;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/aj;->gLh:Lcom/tencent/mm/ui/chatting/ai;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ai;->gLg:Lcom/tencent/mm/q/b;

    invoke-static {v0, v1, p1}, Lcom/tencent/mm/ui/chatting/ChatFooterBrandQA;->a(Lcom/tencent/mm/ui/chatting/ChatFooterBrandQA;Lcom/tencent/mm/q/b;Ljava/lang/String;)V

    goto :goto_0
.end method
