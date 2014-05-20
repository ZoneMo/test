.class final Lcom/tencent/mm/ui/tools/u;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/u;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 606
    check-cast p1, [Lcom/tencent/mm/ui/tools/t;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/t;->hht:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/u;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/tools/t;->hht:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/u;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/r;->notifyDataSetChanged()V

    return-void
.end method
