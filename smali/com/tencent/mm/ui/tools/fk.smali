.class final Lcom/tencent/mm/ui/tools/fk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hmg:Lcom/tencent/mm/ui/tools/fl;

.field final synthetic hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ShareImageUI;Lcom/tencent/mm/ui/tools/fl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/fk;->hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/fk;->hmg:Lcom/tencent/mm/ui/tools/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    const-string v1, "Select_Contact"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/fk;->hmg:Lcom/tencent/mm/ui/tools/fl;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/fl;->aNK()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/fk;->hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/tools/ShareImageUI;->setResult(ILandroid/content/Intent;)V

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fk;->hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ShareImageUI;->finish()V

    .line 116
    const/4 v0, 0x1

    return v0
.end method
