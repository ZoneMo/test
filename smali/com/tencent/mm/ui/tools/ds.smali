.class public final Lcom/tencent/mm/ui/tools/ds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hlA:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ds;->hlA:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/ds;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ds;->hlA:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic c(Landroid/content/Context;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x2afa

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "is_bind_for_contact_sync"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMWizardActivity;->j(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v5, v1}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v5, v1}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final uQ()Lcom/tencent/mm/platformtools/ab;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-static {}, Lcom/tencent/mm/model/br;->uP()Lcom/tencent/mm/model/br;

    invoke-static {}, Lcom/tencent/mm/model/br;->uQ()Lcom/tencent/mm/platformtools/ab;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    iget-object v2, v1, Lcom/tencent/mm/platformtools/ab;->cGO:Lcom/tencent/mm/platformtools/f;

    iget-object v3, v1, Lcom/tencent/mm/platformtools/ab;->cGP:Lcom/tencent/mm/platformtools/e;

    sget-object v4, Lcom/tencent/mm/ui/tools/dy;->ciV:[I

    invoke-virtual {v2}, Lcom/tencent/mm/platformtools/f;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 99
    :goto_0
    invoke-virtual {v1}, Lcom/tencent/mm/platformtools/ab;->Fz()Lcom/tencent/mm/platformtools/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/platformtools/ac;->a(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/platformtools/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/ac;->FA()Lcom/tencent/mm/platformtools/ab;

    move-result-object v0

    .line 101
    :cond_0
    return-object v0

    .line 98
    :pswitch_0
    new-instance v0, Lcom/tencent/mm/ui/tools/dt;

    invoke-direct {v0, p0, v2, v3}, Lcom/tencent/mm/ui/tools/dt;-><init>(Lcom/tencent/mm/ui/tools/ds;Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/tencent/mm/ui/tools/du;

    invoke-direct {v0, p0, v2, v3}, Lcom/tencent/mm/ui/tools/du;-><init>(Lcom/tencent/mm/ui/tools/ds;Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/tencent/mm/ui/tools/dv;

    invoke-direct {v0, p0, v2, v3}, Lcom/tencent/mm/ui/tools/dv;-><init>(Lcom/tencent/mm/ui/tools/ds;Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/tencent/mm/ui/tools/dw;

    invoke-direct {v0, p0, v2, v3}, Lcom/tencent/mm/ui/tools/dw;-><init>(Lcom/tencent/mm/ui/tools/ds;Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/tencent/mm/ui/tools/dx;

    invoke-direct {v0, p0, v2, v3}, Lcom/tencent/mm/ui/tools/dx;-><init>(Lcom/tencent/mm/ui/tools/ds;Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
