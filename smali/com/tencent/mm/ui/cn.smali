.class final Lcom/tencent/mm/ui/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic bLc:Landroid/app/Activity;

.field final synthetic gog:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/cn;->gog:Landroid/content/Intent;

    iput-object p1, p0, Lcom/tencent/mm/ui/cn;->bLc:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tencent/mm/ui/cn;->gog:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/tencent/mm/ui/cn;->bLc:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 306
    iget-object v0, p0, Lcom/tencent/mm/ui/cn;->bLc:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/mm/ui/cn;->gog:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 308
    :cond_0
    return-void
.end method
