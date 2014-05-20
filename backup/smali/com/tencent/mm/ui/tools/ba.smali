.class final Lcom/tencent/mm/ui/tools/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hhZ:Lcom/tencent/mm/ui/tools/CropImageNewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/CropImageNewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ba;->hhZ:Lcom/tencent/mm/ui/tools/CropImageNewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 335
    new-instance v0, Lcom/tencent/mm/ui/tools/dl;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ba;->hhZ:Lcom/tencent/mm/ui/tools/CropImageNewUI;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    .line 336
    new-instance v1, Lcom/tencent/mm/ui/tools/bb;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/bb;-><init>(Lcom/tencent/mm/ui/tools/ba;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 344
    new-instance v1, Lcom/tencent/mm/ui/tools/bc;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/bc;-><init>(Lcom/tencent/mm/ui/tools/ba;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 374
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    .line 375
    const/4 v0, 0x1

    return v0
.end method
