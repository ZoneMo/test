.class final Lcom/tencent/mm/ui/tools/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hlX:Lcom/tencent/mm/ui/tools/eo;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/eo;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ey;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ey;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->e(Lcom/tencent/mm/ui/tools/eo;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ey;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->b(Lcom/tencent/mm/ui/tools/eo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "post do expand search menu, but search menu item is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ey;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->e(Lcom/tencent/mm/ui/tools/eo;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/z;->f(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method
