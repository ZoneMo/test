.class final Lcom/tencent/mm/ui/tools/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final hpO:Ljava/lang/ref/WeakReference;

.field final hqi:Lcom/tencent/mm/ui/tools/a/ad;

.field final hqj:Ljava/lang/Boolean;

.field hqk:Lcom/tencent/mm/ui/tools/a/g;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/a/ad;Landroid/widget/ImageView;Ljava/lang/Boolean;Lcom/tencent/mm/ui/tools/a/g;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/a/m;->hqi:Lcom/tencent/mm/ui/tools/a/ad;

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/m;->hpO:Ljava/lang/ref/WeakReference;

    .line 21
    iput-object p4, p0, Lcom/tencent/mm/ui/tools/a/m;->hqk:Lcom/tencent/mm/ui/tools/a/g;

    .line 22
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/a/m;->hqj:Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 24
    return-void
.end method


# virtual methods
.method final cancel()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/m;->hqk:Lcom/tencent/mm/ui/tools/a/g;

    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/m;->hpO:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public final onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 28
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/m;->hpO:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 29
    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v4

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 38
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    .line 40
    if-lez v2, :cond_0

    if-lez v3, :cond_0

    .line 44
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 46
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/m;->hqj:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/m;->hqi:Lcom/tencent/mm/ui/tools/a/ad;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/a/ad;->aOT()Lcom/tencent/mm/ui/tools/a/ad;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ui/tools/a/ad;->bp(II)Lcom/tencent/mm/ui/tools/a/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/a/ad;->aOV()Lcom/tencent/mm/ui/tools/a/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/a/m;->hqk:Lcom/tencent/mm/ui/tools/a/g;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/tools/a/ad;->a(Landroid/widget/ImageView;Lcom/tencent/mm/ui/tools/a/g;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/m;->hqi:Lcom/tencent/mm/ui/tools/a/ad;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/a/ad;->aOT()Lcom/tencent/mm/ui/tools/a/ad;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ui/tools/a/ad;->bp(II)Lcom/tencent/mm/ui/tools/a/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/a/m;->hqk:Lcom/tencent/mm/ui/tools/a/g;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/tools/a/ad;->a(Landroid/widget/ImageView;Lcom/tencent/mm/ui/tools/a/g;)V

    goto :goto_0
.end method
