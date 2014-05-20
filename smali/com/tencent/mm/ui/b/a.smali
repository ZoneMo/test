.class public final Lcom/tencent/mm/ui/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hcB:Lcom/tencent/mm/ui/b/b;

.field private static hcC:Lcom/tencent/mm/ui/b/b;


# direct methods
.method public static c(Landroid/app/Activity;Landroid/view/View;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 51
    invoke-static {p0}, Lcom/tencent/mm/ui/b/b;->cb(Landroid/content/Context;)Lcom/tencent/mm/ui/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/b/a;->hcB:Lcom/tencent/mm/ui/b/b;

    .line 52
    invoke-static {p0}, Lcom/tencent/mm/ui/b/b;->cb(Landroid/content/Context;)Lcom/tencent/mm/ui/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/b/a;->hcC:Lcom/tencent/mm/ui/b/b;

    .line 54
    new-array v4, v7, [I

    .line 55
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 58
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 60
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v1, v6, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    move v1, v0

    .line 67
    :goto_0
    aget v0, v4, v8

    sub-int/2addr v0, v5

    sub-int/2addr v0, v1

    .line 68
    sget-object v6, Lcom/tencent/mm/ui/b/a;->hcB:Lcom/tencent/mm/ui/b/b;

    invoke-virtual {v6, v0}, Lcom/tencent/mm/ui/b/b;->setHeight(I)V

    .line 70
    new-array v6, v7, [I

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v7, v6, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v0, v6, v8

    :goto_1
    aget v0, v6, v8

    aget v4, v4, v8

    sub-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 71
    sget-object v4, Lcom/tencent/mm/ui/b/a;->hcC:Lcom/tencent/mm/ui/b/b;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/ui/b/b;->setHeight(I)V

    .line 73
    sget-object v0, Lcom/tencent/mm/ui/b/a;->hcB:Lcom/tencent/mm/ui/b/b;

    const/16 v4, 0x30

    add-int/2addr v1, v5

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/mm/ui/b/b;->showAtLocation(Landroid/view/View;III)V

    .line 74
    sget-object v0, Lcom/tencent/mm/ui/b/a;->hcC:Lcom/tencent/mm/ui/b/b;

    const/16 v1, 0x50

    invoke-virtual {v0, v3, v1, v2, v2}, Lcom/tencent/mm/ui/b/b;->showAtLocation(Landroid/view/View;III)V

    .line 78
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v6, 0x10102eb

    invoke-virtual {v1, v6, v0, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    aput v7, v6, v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    aput v0, v6, v8

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 81
    sget-object v0, Lcom/tencent/mm/ui/b/a;->hcB:Lcom/tencent/mm/ui/b/b;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/tencent/mm/ui/b/a;->hcB:Lcom/tencent/mm/ui/b/b;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/b/b;->setAnimationStyle(I)V

    .line 83
    sget-object v0, Lcom/tencent/mm/ui/b/a;->hcB:Lcom/tencent/mm/ui/b/b;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/b/b;->dismiss()V

    .line 84
    sput-object v2, Lcom/tencent/mm/ui/b/a;->hcB:Lcom/tencent/mm/ui/b/b;

    .line 87
    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/b/a;->hcC:Lcom/tencent/mm/ui/b/b;

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/tencent/mm/ui/b/a;->hcC:Lcom/tencent/mm/ui/b/b;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/b/b;->setAnimationStyle(I)V

    .line 89
    sget-object v0, Lcom/tencent/mm/ui/b/a;->hcC:Lcom/tencent/mm/ui/b/b;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/b/b;->dismiss()V

    .line 90
    sput-object v2, Lcom/tencent/mm/ui/b/a;->hcC:Lcom/tencent/mm/ui/b/b;

    .line 92
    :cond_1
    return-void
.end method
