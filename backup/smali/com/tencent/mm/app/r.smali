.class final Lcom/tencent/mm/app/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/q;


# instance fields
.field final synthetic bLu:Lcom/tencent/mm/app/WorkerProfile;

.field private bLv:Lcom/tencent/mm/ui/tools/el;


# direct methods
.method constructor <init>(Lcom/tencent/mm/app/WorkerProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/tencent/mm/app/r;->bLu:Lcom/tencent/mm/app/WorkerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    invoke-static {p1, p2, p3}, Lcom/tencent/mm/ui/tools/el;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Z

    move-result v0

    return v0
.end method

.method public final aH(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 674
    invoke-static {p1}, Lcom/tencent/mm/ui/tools/el;->aH(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final detach()V
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/app/r;->bLv:Lcom/tencent/mm/ui/tools/el;

    .line 670
    return-void
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 648
    iget-object v0, p0, Lcom/tencent/mm/app/r;->bLv:Lcom/tencent/mm/ui/tools/el;

    if-nez v0, :cond_0

    .line 649
    new-instance v0, Lcom/tencent/mm/ui/tools/el;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/tools/el;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/app/r;->bLv:Lcom/tencent/mm/ui/tools/el;

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/app/r;->bLv:Lcom/tencent/mm/ui/tools/el;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/tools/el;->pX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
