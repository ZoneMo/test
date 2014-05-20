.class final Lcom/tencent/mm/ui/tools/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/m;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/m;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x43060

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/m;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/m;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/m;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/m;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->e(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/m;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v3}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->f(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Lcom/tencent/mm/ui/tools/t;Landroid/content/Intent;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method
