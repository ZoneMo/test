.class final Lcom/tencent/mm/ui/base/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/base/MMListPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/tencent/mm/ui/base/bt;->gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/base/MMListPopupWindow;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1406
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/bt;-><init>(Lcom/tencent/mm/ui/base/MMListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1409
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1410
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1411
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1413
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/tencent/mm/ui/base/bt;->gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;

    invoke-static {v3}, Lcom/tencent/mm/ui/base/MMListPopupWindow;->b(Lcom/tencent/mm/ui/base/MMListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/mm/ui/base/bt;->gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;

    invoke-static {v3}, Lcom/tencent/mm/ui/base/MMListPopupWindow;->b(Lcom/tencent/mm/ui/base/MMListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/tencent/mm/ui/base/bt;->gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;

    invoke-static {v3}, Lcom/tencent/mm/ui/base/MMListPopupWindow;->b(Lcom/tencent/mm/ui/base/MMListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/base/bt;->gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;

    invoke-static {v1}, Lcom/tencent/mm/ui/base/MMListPopupWindow;->b(Lcom/tencent/mm/ui/base/MMListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bt;->gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/MMListPopupWindow;->d(Lcom/tencent/mm/ui/base/MMListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/bt;->gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;

    invoke-static {v1}, Lcom/tencent/mm/ui/base/MMListPopupWindow;->c(Lcom/tencent/mm/ui/base/MMListPopupWindow;)Lcom/tencent/mm/ui/base/bu;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1420
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1417
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bt;->gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/MMListPopupWindow;->d(Lcom/tencent/mm/ui/base/MMListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/bt;->gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;

    invoke-static {v1}, Lcom/tencent/mm/ui/base/MMListPopupWindow;->c(Lcom/tencent/mm/ui/base/MMListPopupWindow;)Lcom/tencent/mm/ui/base/bu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
