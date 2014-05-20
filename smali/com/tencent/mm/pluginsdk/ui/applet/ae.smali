.class public final Lcom/tencent/mm/pluginsdk/ui/applet/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private FN:I

.field private background:I

.field private fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

.field private fnV:Lcom/tencent/mm/pluginsdk/ui/applet/ai;

.field private foM:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

.field private final foy:Landroid/view/View$OnTouchListener;

.field private row:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->background:I

    .line 34
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/af;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/af;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/ae;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->foy:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/applet/ae;)Lcom/tencent/mm/pluginsdk/ui/applet/ai;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->fnV:Lcom/tencent/mm/pluginsdk/ui/applet/ai;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/applet/ae;)Lcom/tencent/mm/pluginsdk/ui/applet/aj;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->foM:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/pluginsdk/ui/applet/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->fnV:Lcom/tencent/mm/pluginsdk/ui/applet/ai;

    .line 48
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/applet/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->foM:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

    .line 52
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/applet/w;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    .line 43
    iput p2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->row:I

    .line 44
    return-void
.end method

.method public final asf()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->FN:I

    .line 60
    return-void
.end method

.method public final kq(I)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->background:I

    .line 56
    return-void
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 64
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 66
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->foy:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->FN:I

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->row:I

    iget v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->FN:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v4, v3, v2, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->fnV:Lcom/tencent/mm/pluginsdk/ui/applet/ai;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/tencent/mm/pluginsdk/ui/applet/ag;

    invoke-direct {v4, p0, v0, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/ag;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/ae;Landroid/view/ViewGroup;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->foM:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

    if-eqz v4, :cond_1

    new-instance v4, Lcom/tencent/mm/pluginsdk/ui/applet/ah;

    invoke-direct {v4, p0, v0, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/ah;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/ae;Landroid/view/ViewGroup;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_2
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->background:I

    if-ltz v0, :cond_3

    .line 69
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    :cond_3
    return-void
.end method
