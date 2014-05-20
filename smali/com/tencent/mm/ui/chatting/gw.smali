.class final Lcom/tencent/mm/ui/chatting/gw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/bd;


# instance fields
.field private count:I

.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 1
    .parameter

    .prologue
    .line 1895
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1897
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/gw;->count:I

    return-void
.end method


# virtual methods
.method public final FW()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1901
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/gx;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/gx;-><init>(Lcom/tencent/mm/ui/chatting/gw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1908
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->r(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/base/MMPullDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/es;->aJl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMPullDownView;->ds(Z)V

    .line 1909
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->r(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/base/MMPullDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/es;->aJm()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMPullDownView;->dt(Z)V

    .line 1910
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->PG()I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/gw;->count:I

    sub-int/2addr v0, v1

    .line 1911
    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->s(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    .line 1914
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->t(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->u(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/chatting/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJu()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->aJk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1915
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1919
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJK()Z

    .line 1922
    :cond_2
    return-void
.end method

.method public final FX()V
    .locals 2

    .prologue
    .line 1926
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/d/c/m;->hx(I)V

    .line 1927
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->PG()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/gw;->count:I

    .line 1928
    return-void
.end method
