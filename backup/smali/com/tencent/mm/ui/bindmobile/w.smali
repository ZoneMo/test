.class final Lcom/tencent/mm/ui/bindmobile/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/w;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 268
    new-instance v0, Lcom/tencent/mm/ui/tools/dg;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/w;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dg;-><init>(Landroid/content/Context;)V

    .line 269
    new-instance v1, Lcom/tencent/mm/ui/bindmobile/x;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindmobile/x;-><init>(Lcom/tencent/mm/ui/bindmobile/w;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 278
    new-instance v1, Lcom/tencent/mm/ui/bindmobile/y;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindmobile/y;-><init>(Lcom/tencent/mm/ui/bindmobile/w;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dg;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 292
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dg;->aNy()Lcom/tencent/mm/ui/base/ar;

    .line 293
    const/4 v0, 0x0

    return v0
.end method
