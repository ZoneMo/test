.class final Lcom/tencent/mm/ui/friend/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic haR:Lcom/tencent/mm/ui/friend/m;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/m;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/o;->haR:Lcom/tencent/mm/ui/friend/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    const-string v0, "MicroMsg.FMessageConversationUI"

    const-string v1, "on delView clicked"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/o;->haR:Lcom/tencent/mm/ui/friend/m;

    iget-object v0, v0, Lcom/tencent/mm/ui/friend/m;->cPN:Lcom/tencent/mm/ui/base/cz;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/cz;->aik()V

    .line 189
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/o;->haR:Lcom/tencent/mm/ui/friend/m;

    iget-object v0, v0, Lcom/tencent/mm/ui/friend/m;->cPM:Lcom/tencent/mm/ui/base/db;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/o;->haR:Lcom/tencent/mm/ui/friend/m;

    iget-object v0, v0, Lcom/tencent/mm/ui/friend/m;->cPM:Lcom/tencent/mm/ui/base/db;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/db;->V(Ljava/lang/Object;)V

    .line 192
    :cond_0
    return-void
.end method
