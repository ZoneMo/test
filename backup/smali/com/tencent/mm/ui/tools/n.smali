.class final Lcom/tencent/mm/ui/tools/n;
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
    .line 128
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/n;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/n;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/n;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/n;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/n;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->e(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/n;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v3}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->f(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Lcom/tencent/mm/ui/tools/t;Landroid/content/Intent;Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method
