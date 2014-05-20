.class final Lcom/tencent/mm/ui/chatting/fo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gOz:Lcom/tencent/mm/ui/chatting/fn;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/fn;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fo;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fo;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ui/chatting/es;->ce(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fo;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->XS()I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fo;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fn;->b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJD()V

    .line 88
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fo;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fn;->c(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/tools/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/eo;->aNE()V

    .line 89
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fo;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fn;->d(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fo;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fn;->d(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->ny(I)V

    .line 92
    :cond_0
    return-void
.end method
