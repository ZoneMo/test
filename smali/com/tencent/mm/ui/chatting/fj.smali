.class final Lcom/tencent/mm/ui/chatting/fj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gOn:Lcom/tencent/mm/ui/chatting/fg;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/fg;)V
    .locals 0
    .parameter

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fj;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fj;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->h(Lcom/tencent/mm/ui/chatting/fg;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fj;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->h(Lcom/tencent/mm/ui/chatting/fg;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fj;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->i(Lcom/tencent/mm/ui/chatting/fg;)V

    .line 1203
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fj;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->h(Lcom/tencent/mm/ui/chatting/fg;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 1205
    :cond_0
    return-void
.end method
