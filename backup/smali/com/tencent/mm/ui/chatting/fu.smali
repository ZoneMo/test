.class final Lcom/tencent/mm/ui/chatting/fu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/ez;


# instance fields
.field final synthetic gOz:Lcom/tencent/mm/ui/chatting/fn;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/fn;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final FT()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public final FU()V
    .locals 2

    .prologue
    .line 316
    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v1, "onQuitSearch"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJD()V

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->d(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->d(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/es;->XS()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->ny(I)V

    .line 322
    :cond_0
    return-void
.end method

.method public final FV()V
    .locals 2

    .prologue
    .line 326
    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v1, "onEnterSearch"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJC()V

    .line 329
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->d(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->setVisibility(I)V

    .line 331
    :cond_0
    return-void
.end method

.method public final ig(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 282
    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v1, "on edit change"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->h(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/fv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->h(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/fv;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/fv;->ih(Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nC(I)V

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->i(Lcom/tencent/mm/ui/chatting/fn;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJD()V

    .line 293
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->d(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->d(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/es;->XS()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->ny(I)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJD()V

    .line 297
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->d(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_4
    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v1, "enter search mode"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->d(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJC()V

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->h(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/fv;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fu;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->h(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/fv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/fv;->ih(Ljava/lang/String;)V

    goto :goto_0
.end method
