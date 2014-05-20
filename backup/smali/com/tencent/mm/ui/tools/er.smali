.class final Lcom/tencent/mm/ui/tools/er;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/af;


# instance fields
.field final synthetic hlX:Lcom/tencent/mm/ui/tools/eo;

.field final synthetic hlY:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/eo;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/er;->hlY:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ad()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->b(Lcom/tencent/mm/ui/tools/eo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMenuItemActionExpand, searchViewExpand "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/eo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/eo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/eo;Z)Z

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    .line 163
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->d(Lcom/tencent/mm/ui/tools/eo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/tools/es;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/es;-><init>(Lcom/tencent/mm/ui/tools/er;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->c(Lcom/tencent/mm/ui/tools/eo;)Lcom/tencent/mm/ui/tools/ez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->c(Lcom/tencent/mm/ui/tools/eo;)Lcom/tencent/mm/ui/tools/ez;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/tools/ez;->FV()V

    .line 178
    :cond_0
    return v3
.end method

.method public final ae()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->b(Lcom/tencent/mm/ui/tools/eo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMenuItemActionCollapse, searchViewExpand "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/eo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/eo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/eo;Z)Z

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->auV()V

    .line 187
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->em(Z)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->d(Lcom/tencent/mm/ui/tools/eo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/tools/et;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/et;-><init>(Lcom/tencent/mm/ui/tools/er;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->c(Lcom/tencent/mm/ui/tools/eo;)Lcom/tencent/mm/ui/tools/ez;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->d(Lcom/tencent/mm/ui/tools/eo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/tools/eu;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/eu;-><init>(Lcom/tencent/mm/ui/tools/er;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->d(Lcom/tencent/mm/ui/tools/eo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/tools/ev;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/ev;-><init>(Lcom/tencent/mm/ui/tools/er;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    const/4 v0, 0x1

    return v0
.end method
