.class final Lcom/tencent/mm/ui/tools/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/r;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/r;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tencent/mm/ui/tools/r;->nV(I)Lcom/tencent/mm/ui/tools/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Lcom/tencent/mm/ui/tools/t;)Lcom/tencent/mm/ui/tools/t;

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/r;->notifyDataSetChanged()V

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->b(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/v;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->b(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/v;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/mm/ui/tools/t;->hhu:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/mm/ui/tools/t;->doL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/mm/ui/tools/t;->doL:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->d(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->b(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/v;->en(Z)V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/l;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->b(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/v;->en(Z)V

    goto :goto_0
.end method
