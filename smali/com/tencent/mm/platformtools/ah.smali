.class final Lcom/tencent/mm/platformtools/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bLc:Landroid/app/Activity;

.field final synthetic cGT:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tencent/mm/platformtools/ah;->bLc:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tencent/mm/platformtools/ah;->cGT:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x3022

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 76
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/ag;->f(ZZ)V

    .line 77
    iget-object v0, p0, Lcom/tencent/mm/platformtools/ah;->bLc:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->N(Landroid/content/Context;)Z

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/platformtools/ah;->cGT:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/platformtools/ah;->cGT:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_0
    return-void
.end method
