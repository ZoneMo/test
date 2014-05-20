.class final Lcom/tencent/mm/plugin/base/stub/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/tencent/mm/plugin/base/stub/m;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/m;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->c(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)Lcom/tencent/mm/plugin/base/stub/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/m;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->c(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)Lcom/tencent/mm/plugin/base/stub/e;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/m;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    iget-object v0, v0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 163
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/m;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->d(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/m;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->e(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V

    .line 165
    const/4 v0, 0x0

    return v0
.end method
