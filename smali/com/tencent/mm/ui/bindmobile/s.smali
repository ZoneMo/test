.class final Lcom/tencent/mm/ui/bindmobile/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/s;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/s;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->b(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;)Lcom/tencent/mm/modelfriend/aa;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crd:Lcom/tencent/mm/modelfriend/aa;

    if-ne v0, v1, :cond_0

    .line 220
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x3022

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/s;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    new-instance v1, Lcom/tencent/mm/ui/bindmobile/t;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindmobile/t;-><init>(Lcom/tencent/mm/ui/bindmobile/s;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/ag;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/s;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    const-class v2, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/s;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
