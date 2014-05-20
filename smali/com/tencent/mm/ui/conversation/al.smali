.class final Lcom/tencent/mm/ui/conversation/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/k;


# instance fields
.field final synthetic gZI:Lcom/tencent/mm/ui/conversation/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/al;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final FW()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/al;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->l(Lcom/tencent/mm/ui/conversation/MainUI;)V

    .line 739
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/al;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->b(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/conversation/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/al;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->b(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/conversation/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/ab;->aLy()V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/al;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->m(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/conversation/am;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/am;-><init>(Lcom/tencent/mm/ui/conversation/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 752
    return-void
.end method

.method public final FX()V
    .locals 2

    .prologue
    .line 730
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/d/c/m;->hx(I)V

    .line 731
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/al;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->k(Lcom/tencent/mm/ui/conversation/MainUI;)V

    .line 732
    return-void
.end method
