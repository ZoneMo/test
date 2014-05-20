.class final Lcom/tencent/mm/ui/tools/es;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hlZ:Lcom/tencent/mm/ui/tools/er;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/er;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/es;->hlZ:Lcom/tencent/mm/ui/tools/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/es;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlY:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/es;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlY:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/es;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->b(Lcom/tencent/mm/ui/tools/eo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "want to expand search view, but activity status error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/es;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlY:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->u()V

    goto :goto_0
.end method
