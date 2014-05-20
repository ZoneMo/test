.class final Lcom/tencent/mm/ui/tools/o;
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
    .line 138
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/o;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/o;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/r;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/o;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/r;->aMM()Lcom/tencent/mm/ui/tools/w;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/tencent/mm/ui/tools/w;->hhA:Lcom/tencent/mm/ui/tools/w;

    if-ne v0, v1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/o;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->b(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/o;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->b(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/v;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/o;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/r;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/ui/tools/w;->hhB:Lcom/tencent/mm/ui/tools/w;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/r;->a(Lcom/tencent/mm/ui/tools/w;)V

    .line 148
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/o;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/r;->notifyDataSetChanged()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/o;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->aal()Landroid/app/Activity;

    const-string v0, "http://mdc.html5.qq.com/d/directdown.jsp?channel_id=10318"

    const-string v1, "qq_browser.apk"

    const-string v2, ""

    const-string v3, "qq_browser_apk_md5"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 151
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2af6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    sget-object v1, Lcom/tencent/mm/ui/tools/w;->hhC:Lcom/tencent/mm/ui/tools/w;

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/o;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/o;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->g(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->cj(J)V

    goto :goto_0
.end method
