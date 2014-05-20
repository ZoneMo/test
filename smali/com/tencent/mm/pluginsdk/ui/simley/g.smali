.class public final Lcom/tencent/mm/pluginsdk/ui/simley/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cYS:F

.field private fmb:I

.field private fmc:I

.field private fmd:I

.field private ftc:I

.field private ftd:I

.field private fte:I

.field private ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

.field private ftg:Ljava/lang/String;

.field private fth:I

.field private fti:Z

.field private ftj:Z

.field private ftk:Z

.field private ftl:Z

.field private ftm:Z

.field private ftn:Z

.field private fto:Z

.field private ftp:I

.field private final ftq:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "MicroMsg.SmileyPanel.Stg"

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->TAG:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/a;->fsB:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftg:Ljava/lang/String;

    .line 849
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftq:I

    .line 80
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->cYS:F

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/g;->abq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fmc:I

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/g;->abs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fmb:I

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/g;->abr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fmd:I

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fte:I

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->flx:I

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftc:I

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftd:I

    const-string v0, "TAG_DEFAULT_TAB"

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atL()V

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atM()V

    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/simley/a;->atq()V

    .line 83
    return-void
.end method

.method public static ac(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 448
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 449
    if-gez v0, :cond_0

    .line 450
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 452
    :cond_0
    return v0
.end method

.method public static atD()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40003

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/i/a;->e(IZ)V

    .line 177
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40005

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/i/a;->e(IZ)V

    .line 178
    return-void
.end method

.method private aup()[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 911
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 913
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 914
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 915
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 916
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v0, v1, v3

    .line 917
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v0, v1, v4

    .line 923
    :goto_0
    return-object v1

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 920
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    aput v2, v1, v3

    .line 921
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    aput v0, v1, v4

    goto :goto_0
.end method

.method public static b(Lcom/tencent/mm/storage/w;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 424
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/w;->aBn()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/tencent/mm/storage/w;)Z
    .locals 1
    .parameter

    .prologue
    .line 428
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/w;->aBn()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static qT(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/ui/simley/j;
    .locals 1
    .parameter

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 112
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftw:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    .line 123
    :goto_0
    return-object v0

    .line 115
    :cond_0
    const-string v0, "TAG_DEFAULT_TAB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftt:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    goto :goto_0

    .line 117
    :cond_1
    sget v0, Lcom/tencent/mm/storage/w;->ggW:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftu:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    goto :goto_0

    .line 119
    :cond_2
    sget v0, Lcom/tencent/mm/storage/w;->ggX:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftv:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    goto :goto_0

    .line 123
    :cond_3
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftw:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    goto :goto_0
.end method

.method private qU(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 220
    const-string v0, "TAG_DEFAULT_TAB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fte:I

    .line 224
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftc:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Lcom/tencent/mm/storage/w;)Lcom/tencent/mm/pluginsdk/ui/simley/i;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 132
    :cond_0
    new-instance v6, Lcom/tencent/mm/pluginsdk/ui/simley/i;

    invoke-direct {v6}, Lcom/tencent/mm/pluginsdk/ui/simley/i;-><init>()V

    .line 134
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/h;->ftr:[I

    invoke-virtual {p2}, Lcom/tencent/mm/storage/w;->aBb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qT(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/ui/simley/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    move-object v0, v6

    .line 155
    goto :goto_0

    .line 136
    :pswitch_0
    sget v0, Lcom/tencent/mm/h;->aee:I

    iput v0, v6, Lcom/tencent/mm/pluginsdk/ui/simley/i;->resource:I

    goto :goto_1

    .line 139
    :pswitch_1
    sget v0, Lcom/tencent/mm/h;->aea:I

    iput v0, v6, Lcom/tencent/mm/pluginsdk/ui/simley/i;->resource:I

    goto :goto_1

    .line 143
    :pswitch_2
    sget v0, Lcom/tencent/mm/h;->aec:I

    iput v0, v6, Lcom/tencent/mm/pluginsdk/ui/simley/i;->resource:I

    goto :goto_1

    .line 147
    :pswitch_3
    invoke-static {p2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->b(Lcom/tencent/mm/storage/w;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/w;->aBb()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p2}, Lcom/tencent/mm/storage/w;->aBd()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fmd:I

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/i;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/mm/pluginsdk/ui/simley/i;->WE:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 152
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/w;->aBb()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    const-string v4, ""

    iget v5, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fmd:I

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/i;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/mm/pluginsdk/ui/simley/i;->WE:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/ui/base/MMRadioImageButton;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 641
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    if-nez v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 646
    :cond_0
    if-nez p3, :cond_1

    move-object v0, v1

    .line 647
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    const-string v0, "MicroMsg.SmileyPanel.Stg"

    const-string v1, "add Tab: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v7

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    move-object v0, v1

    :goto_2
    if-nez p3, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v2, v2, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/q;

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    move v2, v7

    :goto_3
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/q;

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/pluginsdk/ui/simley/q;-><init>(Ljava/lang/String;ILcom/tencent/mm/pluginsdk/ui/simley/g;Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/ui/base/MMRadioImageButton;Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/q;->att()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/q;->atw()I

    move-result v0

    add-int v2, v1, v0

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/ui/base/MMRadioImageButton;ZI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 671
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    if-nez v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    if-lez p5, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v8, :cond_3

    :cond_2
    move v2, v7

    :goto_1
    if-nez p3, :cond_5

    const/4 v0, 0x0

    .line 677
    :goto_2
    if-eqz v0, :cond_0

    .line 682
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 683
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v1, p5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 685
    const-string v0, "MicroMsg.SmileyPanel.Stg"

    const-string v1, "replace Tab: %s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v7

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p5, v0, :cond_4

    :goto_3
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/q;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/q;->att()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/q;->atw()I

    move-result v0

    add-int v2, v1, v0

    goto :goto_1

    :cond_4
    move v0, p5

    goto :goto_3

    :cond_5
    if-gez v2, :cond_6

    move v2, v7

    :cond_6
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/q;

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/pluginsdk/ui/simley/q;-><init>(Ljava/lang/String;ILcom/tencent/mm/pluginsdk/ui/simley/g;Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/ui/base/MMRadioImageButton;Z)V

    goto :goto_2
.end method

.method public final ab(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 878
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsH:I

    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qU(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, p2

    sub-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    div-int/2addr v0, v1

    return v0
.end method

.method public final atE()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 181
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/i;->KX()Ljava/util/ArrayList;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsE:J

    .line 183
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iput-object v0, v1, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsD:Ljava/util/ArrayList;

    .line 184
    return-object v0
.end method

.method public final atF()J
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-wide v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsE:J

    return-wide v0
.end method

.method public final atG()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fmb:I

    return v0
.end method

.method public final atH()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fmc:I

    return v0
.end method

.method public final atI()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fmd:I

    return v0
.end method

.method public final atJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftg:Ljava/lang/String;

    return-object v0
.end method

.method public final atK()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftg:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftn:Z

    if-nez v0, :cond_0

    .line 275
    const-string v0, "MicroMsg.SmileyPanel.Stg"

    const-string v1, "save product Id"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, -0x1c0d2c6

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final atL()V
    .locals 3

    .prologue
    .line 280
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, -0x1c0d2c6

    const-string v2, "TAG_DEFAULT_TAB"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftg:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public final atM()V
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, -0x1c0d2c3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fth:I

    .line 285
    return-void
.end method

.method public final atN()V
    .locals 3

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftn:Z

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    const-string v0, "MicroMsg.SmileyPanel.Stg"

    const-string v1, "save index Id"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, -0x1c0d2c3

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final atO()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fth:I

    return v0
.end method

.method public final atP()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/ao/c;->bH(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final atQ()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/ao/c;->bI(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final atR()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fti:Z

    return v0
.end method

.method public final atS()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftj:Z

    return v0
.end method

.method public final atT()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftj:Z

    .line 344
    return-void
.end method

.method public final atU()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsD:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final atV()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v2, 0x10510

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final atW()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 532
    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftg:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->Lg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final atX()Lcom/tencent/mm/pluginsdk/ui/simley/e;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qX(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/ui/simley/e;

    move-result-object v0

    return-object v0
.end method

.method public final atY()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftk:Z

    return v0
.end method

.method public final atZ()Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-boolean v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsJ:Z

    return v0
.end method

.method public final aua()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 572
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iput-boolean v1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsK:Z

    .line 573
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iput-boolean v1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsJ:Z

    .line 574
    return-void
.end method

.method public final aub()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsJ:Z

    .line 578
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsK:Z

    .line 579
    return-void
.end method

.method public final auc()Z
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-boolean v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsK:Z

    return v0
.end method

.method public final aud()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsK:Z

    .line 587
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsJ:Z

    .line 588
    return-void
.end method

.method public final aue()Z
    .locals 1

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftl:Z

    return v0
.end method

.method public final auf()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftm:Z

    return v0
.end method

.method public final aug()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftn:Z

    return v0
.end method

.method public final auh()V
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftn:Z

    .line 612
    return-void
.end method

.method public final aui()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftp:I

    return v0
.end method

.method public final auj()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/b;->clear()V

    .line 634
    return-void
.end method

.method public final auk()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    .line 638
    return-void
.end method

.method public final aul()I
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftn:Z

    if-eqz v0, :cond_0

    .line 750
    const-string v0, "TAG_DEFAULT_TAB"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qX(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/ui/simley/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->atw()I

    move-result v0

    .line 752
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsG:I

    goto :goto_0
.end method

.method public final aum()Ljava/util/List;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    return-object v0
.end method

.method public final aun()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iput v2, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsG:I

    .line 768
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/e;

    .line 773
    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v4, v3, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsG:I

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->atw()I

    move-result v0

    add-int/2addr v0, v4

    iput v0, v3, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsG:I

    goto :goto_1

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v1, v1, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsG:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsF:[I

    move v1, v2

    move v3, v2

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/e;

    move v4, v2

    :goto_3
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->atw()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v5, v5, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsG:I

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v6, v5, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsF:[I

    add-int/lit8 v5, v3, 0x1

    aput v1, v6, v3

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 777
    :cond_3
    const-string v0, "MicroMsg.SmileyPanel.Stg"

    const-string v1, "refreshAllCount count: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v4, v4, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsG:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final auo()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 886
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->aup()[I

    move-result-object v2

    aget v3, v2, v1

    aget v2, v2, v0

    if-ge v3, v2, :cond_0

    move v2, v0

    :goto_0
    if-ne v2, v0, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final cH(Z)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fti:Z

    .line 340
    return-void
.end method

.method public final cI(Z)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->fto:Z

    .line 348
    return-void
.end method

.method public final cJ(Z)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftk:Z

    .line 561
    return-void
.end method

.method public final cK(Z)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftl:Z

    .line 596
    return-void
.end method

.method public final cL(Z)V
    .locals 0
    .parameter

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftm:Z

    .line 600
    return-void
.end method

.method public final kI(I)V
    .locals 5
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iput p1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsH:I

    .line 233
    const-string v0, "MicroMsg.SmileyPanel.Stg"

    const-string v1, "set viewpager height px: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public final kJ(I)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iput p1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsI:I

    .line 246
    return-void
.end method

.method public final kK(I)Lcom/tencent/mm/pluginsdk/ui/simley/e;
    .locals 1
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 509
    :cond_0
    const/4 v0, 0x0

    .line 512
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/e;

    goto :goto_0
.end method

.method public final kL(I)Lcom/tencent/mm/pluginsdk/ui/simley/e;
    .locals 2
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    if-nez v0, :cond_0

    .line 518
    const/4 v0, 0x0

    .line 520
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->kM(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/e;

    goto :goto_0
.end method

.method public final kM(I)I
    .locals 1
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsF:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gtz p1, :cond_1

    .line 525
    :cond_0
    const/4 v0, 0x0

    .line 528
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsF:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public final kN(I)V
    .locals 0
    .parameter

    .prologue
    .line 619
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftp:I

    .line 620
    return-void
.end method

.method public final kO(I)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    .line 756
    const-string v0, "MicroMsg.SmileyPanel.Stg"

    const-string v1, "get Item: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->kM(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/q;

    .line 759
    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;-><init>(Landroid/content/Context;)V

    :goto_0
    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/q;->att()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/q;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final qV(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 249
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftg:Ljava/lang/String;

    goto :goto_0
.end method

.method public final qW(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 256
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final qX(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/ui/simley/e;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 486
    :goto_0
    return-object v0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/e;

    .line 473
    if-nez v0, :cond_3

    .line 474
    const-string v0, "MicroMsg.SmileyPanel.Stg"

    const-string v3, "get null tab"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 477
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->Lg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 478
    const-string v0, "MicroMsg.SmileyPanel.Stg"

    const-string v3, "get null tab productId"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 481
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->Lg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 486
    goto :goto_0
.end method

.method public final qY(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 822
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v1, v1, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsH:I

    if-lez v1, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v1, v1, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsH:I

    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qU(Ljava/lang/String;)I

    move-result v2

    div-int/2addr v1, v2

    .line 828
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    :goto_1
    if-gt v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 828
    :cond_2
    const-string v0, "TAG_DEFAULT_TAB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public final qZ(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 852
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 871
    :cond_0
    :goto_0
    return v0

    .line 856
    :cond_1
    const-string v2, "TAG_DEFAULT_TAB"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 857
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->auo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 858
    const/4 v0, 0x7

    goto :goto_0

    .line 860
    :cond_2
    const/16 v0, 0xe

    goto :goto_0

    .line 863
    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsH:I

    if-gtz v2, :cond_4

    move v0, v1

    .line 864
    goto :goto_0

    .line 866
    :cond_4
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsI:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_5

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->aup()[I

    move-result-object v3

    aget v1, v3, v1

    iput v1, v2, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsI:I

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftf:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v1, v1, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsI:I

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ftd:I

    div-int/2addr v1, v2

    .line 868
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->auo()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 869
    if-gt v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method
