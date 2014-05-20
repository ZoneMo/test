.class public final Lcom/tencent/mm/ui/base/dn;
.super Landroid/widget/Toast;
.source "SourceFile"


# instance fields
.field private final cBV:Lcom/tencent/mm/sdk/platformtools/ay;

.field private final context:Landroid/content/Context;

.field private dlh:J

.field private dqS:I

.field private gCI:Landroid/view/View;

.field private final gCJ:Landroid/widget/TextView;

.field private level:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/ui/base/do;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/base/do;-><init>(Lcom/tencent/mm/ui/base/dn;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/dn;->cBV:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 66
    iput-object p1, p0, Lcom/tencent/mm/ui/base/dn;->context:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/dn;->reset()V

    .line 68
    sget v0, Lcom/tencent/mm/k;->baW:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/dn;->gCI:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dn;->gCI:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/dn;->setView(Landroid/view/View;)V

    .line 70
    const/16 v0, 0x37

    const/high16 v1, 0x4220

    invoke-static {p1, v1}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/tencent/mm/ui/base/dn;->setGravity(III)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/base/dn;->setDuration(I)V

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dn;->gCI:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aNv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/dn;->gCJ:Landroid/widget/TextView;

    .line 73
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/dn;->aHw()V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/dn;)J
    .locals 2
    .parameter

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/tencent/mm/ui/base/dn;->dlh:J

    return-wide v0
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;)Lcom/tencent/mm/ui/base/ce;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/tencent/mm/ui/base/dn;->a(Landroid/app/Activity;ILjava/lang/String;ZLandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;ZLandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/ce;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 234
    sget v0, Lcom/tencent/mm/k;->aVk:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/tencent/mm/i;->axZ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/tencent/mm/i;->axY:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez p1, :cond_1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    new-instance v2, Lcom/tencent/mm/ui/base/ce;

    invoke-direct {v2, v1}, Lcom/tencent/mm/ui/base/ce;-><init>(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/base/ce;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/base/ce;->setHeight(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, Lcom/tencent/mm/ui/base/dn;->bV(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x30

    add-int/2addr v0, v3

    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/tencent/mm/ui/base/ce;->showAtLocation(Landroid/view/View;III)V

    new-instance v3, Lcom/tencent/mm/ui/base/dr;

    invoke-direct {v3, v2}, Lcom/tencent/mm/ui/base/dr;-><init>(Lcom/tencent/mm/ui/base/ce;)V

    sget v0, Lcom/tencent/mm/i;->axX:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v1, Lcom/tencent/mm/ui/base/ds;

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/base/ds;-><init>(Lcom/tencent/mm/ui/base/ce;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;J)Lcom/tencent/mm/ui/base/ce;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 148
    sget v0, Lcom/tencent/mm/k;->baW:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 149
    sget v0, Lcom/tencent/mm/i;->aNv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v0, Lcom/tencent/mm/ui/base/ce;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/base/ce;-><init>(Landroid/view/View;)V

    .line 152
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/ce;->setWidth(I)V

    .line 153
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/ce;->setHeight(I)V

    .line 156
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 159
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 160
    invoke-static {p0}, Lcom/tencent/mm/ui/base/dn;->bV(Landroid/content/Context;)I

    move-result v2

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x30

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/tencent/mm/ui/base/ce;->showAtLocation(Landroid/view/View;III)V

    .line 164
    new-instance v1, Lcom/tencent/mm/ui/base/dp;

    invoke-direct {v1, v0}, Lcom/tencent/mm/ui/base/dp;-><init>(Lcom/tencent/mm/ui/base/ce;)V

    .line 173
    invoke-virtual {v1, v5, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    return-object v0
.end method

.method private aHw()V
    .locals 3

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/mm/ui/base/dn;->level:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dn;->gCJ:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dn;->gCJ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/dn;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->aaA:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/tencent/mm/ui/base/dn;)I
    .locals 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/tencent/mm/ui/base/dn;->dqS:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tencent/mm/ui/base/dn;->dqS:I

    return v0
.end method

.method public static b(Landroid/app/Activity;Landroid/view/View;)Lcom/tencent/mm/ui/base/ce;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 194
    new-instance v0, Lcom/tencent/mm/ui/base/ce;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/base/ce;-><init>(Landroid/view/View;)V

    .line 195
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/ce;->setWidth(I)V

    .line 196
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/ce;->setHeight(I)V

    .line 200
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 203
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 204
    invoke-static {p0}, Lcom/tencent/mm/ui/base/dn;->bV(Landroid/content/Context;)I

    move-result v2

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x30

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/tencent/mm/ui/base/ce;->showAtLocation(Landroid/view/View;III)V

    .line 208
    new-instance v1, Lcom/tencent/mm/ui/base/dq;

    invoke-direct {v1, v0}, Lcom/tencent/mm/ui/base/dq;-><init>(Lcom/tencent/mm/ui/base/ce;)V

    .line 217
    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 218
    return-object v0
.end method

.method private static bV(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 179
    instance-of v0, p0, Landroid/support/v7/app/ActionBarActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    check-cast p0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result v0

    .line 190
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 184
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v0, :cond_1

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/g;->aaM:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/g;->aaN:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public static bW(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 376
    invoke-static {}, Lcom/tencent/mm/compatible/g/l;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/dt;->y(Landroid/content/Context;I)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/dt;->y(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static bX(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 384
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/dt;->y(Landroid/content/Context;I)V

    .line 385
    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/base/dn;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/tencent/mm/ui/base/dn;->dqS:I

    return v0
.end method

.method private reset()V
    .locals 4

    .prologue
    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/base/dn;->level:I

    .line 118
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/tencent/mm/ui/base/dn;->dlh:J

    .line 119
    iget-wide v0, p0, Lcom/tencent/mm/ui/base/dn;->dlh:J

    const-wide/16 v2, 0x46

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/base/dn;->dqS:I

    .line 120
    return-void
.end method


# virtual methods
.method public final aHx()V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/dn;->cancel()V

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dn;->cBV:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 125
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/dn;->reset()V

    .line 126
    return-void
.end method

.method public final aHy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x46

    .line 129
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/dn;->cancel()V

    .line 130
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dn;->cBV:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 131
    iget-wide v0, p0, Lcom/tencent/mm/ui/base/dn;->dlh:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/base/dn;->dqS:I

    .line 132
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dn;->cBV:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 133
    return-void
.end method

.method public final cc(J)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/tencent/mm/ui/base/dn;->dlh:J

    .line 85
    return-void
.end method

.method public final setLevel(I)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput p1, p0, Lcom/tencent/mm/ui/base/dn;->level:I

    .line 89
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/dn;->aHw()V

    .line 90
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dn;->gCJ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dn;->gCJ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method
