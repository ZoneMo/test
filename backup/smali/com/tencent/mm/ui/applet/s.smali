.class final Lcom/tencent/mm/ui/applet/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic gxE:Lcom/tencent/mm/ui/applet/p;

.field gxF:I

.field gxG:I

.field gxH:I

.field gxI:I

.field gxJ:J

.field final synthetic gxK:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/applet/p;Landroid/util/DisplayMetrics;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/applet/s;->gxK:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxK:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/applet/s;->gxH:I

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxK:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/applet/s;->gxI:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return v1

    .line 122
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v2}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/mm/ui/applet/s;->gxF:I

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v2}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/mm/ui/applet/s;->gxG:I

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/mm/ui/applet/s;->gxJ:J

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxK:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v2}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/applet/s;->gxH:I

    .line 128
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxK:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v2}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/applet/s;->gxI:I

    .line 129
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/tencent/mm/ui/applet/s;->gxF:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 130
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/tencent/mm/ui/applet/s;->gxG:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 131
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 132
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/tencent/mm/ui/applet/s;->gxH:I

    if-le v0, v3, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/applet/s;->gxH:I

    :goto_2
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 133
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v0, :cond_3

    move v0, v1

    :goto_3
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 134
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/tencent/mm/ui/applet/s;->gxI:I

    if-le v0, v3, :cond_4

    iget v0, p0, Lcom/tencent/mm/ui/applet/s;->gxI:I

    :goto_4
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->f(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v2}, Lcom/tencent/mm/ui/applet/p;->e(Lcom/tencent/mm/ui/applet/p;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v3}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->d(Lcom/tencent/mm/ui/applet/p;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    .line 139
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    iget-wide v4, p0, Lcom/tencent/mm/ui/applet/s;->gxJ:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/s;->gxE:Lcom/tencent/mm/ui/applet/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/applet/p;->g(Lcom/tencent/mm/ui/applet/p;)V

    goto/16 :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
