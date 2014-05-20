.class final Lcom/tencent/mm/ui/chatting/hq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cn;


# instance fields
.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 2351
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final VZ()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2355
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->s(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->t(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->x(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2356
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->aJi()V

    .line 2358
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->aJl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2359
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->r(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/base/MMPullDownView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MMPullDownView;->aHj()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2360
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->r(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/base/MMPullDownView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/MMPullDownView;->ds(Z)V

    .line 2373
    :cond_2
    :goto_0
    return-void

    .line 2364
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->getCount()I

    move-result v0

    .line 2365
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/es;->VV()I

    .line 2366
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/es;->ei(Ljava/lang/String;)V

    .line 2367
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/es;->getCount()I

    move-result v1

    .line 2368
    if-le v1, v0, :cond_2

    .line 2369
    sub-int v0, v1, v0

    .line 2370
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/es;->nz(I)V

    .line 2371
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->y(Lcom/tencent/mm/ui/chatting/ChattingUI;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/hq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->r(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/base/MMPullDownView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/MMPullDownView;->aHj()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method
