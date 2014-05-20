.class public final Lcom/tencent/mm/pluginsdk/ui/chat/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private cXH:Landroid/widget/ImageView;

.field private cYm:Landroid/view/View;

.field private chz:Landroid/content/SharedPreferences;

.field private context:Landroid/content/Context;

.field private dmp:Landroid/view/View;

.field private dyD:Landroid/view/View;

.field private fqT:Lcom/tencent/mm/pluginsdk/ui/chat/at;

.field private fqU:Lcom/tencent/mm/pluginsdk/ui/chat/as;

.field private fqV:Lcom/tencent/mm/ui/base/ce;

.field private fqW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->cYm:Landroid/view/View;

    .line 52
    iput-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->cXH:Landroid/widget/ImageView;

    .line 53
    iput-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->bitmap:Landroid/graphics/Bitmap;

    .line 57
    iput-boolean v5, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqW:Z

    .line 60
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->dmp:Landroid/view/View;

    .line 62
    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->dyD:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/at;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/at;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqT:Lcom/tencent/mm/pluginsdk/ui/chat/at;

    .line 64
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->chz:Landroid/content/SharedPreferences;

    .line 65
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/k;->aSZ:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->cYm:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->cYm:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aGR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->cXH:Landroid/widget/ImageView;

    new-instance v0, Lcom/tencent/mm/ui/base/ce;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->cYm:Landroid/view/View;

    invoke-direct {v0, v1, v4, v4, v3}, Lcom/tencent/mm/ui/base/ce;-><init>(Landroid/view/View;IIB)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqV:Lcom/tencent/mm/ui/base/ce;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqV:Lcom/tencent/mm/ui/base/ce;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/ce;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqV:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/ce;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->cYm:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/av;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/av;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/au;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/chat/au;)Lcom/tencent/mm/pluginsdk/ui/chat/as;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqU:Lcom/tencent/mm/pluginsdk/ui/chat/as;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/chat/au;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/ui/chat/au;)Lcom/tencent/mm/ui/base/ce;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqV:Lcom/tencent/mm/ui/base/ce;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/pluginsdk/ui/chat/au;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->ate()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v2, 0x46

    invoke-direct {p0, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->kE(I)F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x78

    invoke-direct {p0, v3}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->kE(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->kE(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v1, v3, v2, v0}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v2, v4

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "chattingui_recent_shown_image_path"

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqU:Lcom/tencent/mm/pluginsdk/ui/chat/as;

    iget-object v3, v3, Lcom/tencent/mm/pluginsdk/ui/chat/as;->fqS:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "MicroMsg.RecentImageBubble"

    const-string v2, "check ok"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private kE(I)F
    .locals 3
    .parameter

    .prologue
    .line 231
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method


# virtual methods
.method public final atc()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/aw;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/aw;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/au;Landroid/os/Looper;)V

    .line 109
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/ax;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ax;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/au;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ax;->start()V

    .line 119
    return-void
.end method

.method public final atd()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqW:Z

    .line 123
    return-void
.end method

.method public final declared-synchronized ate()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqT:Lcom/tencent/mm/pluginsdk/ui/chat/at;

    if-nez v0, :cond_2

    const-string v0, "MicroMsg.RecentImageBubble"

    const-string v2, "because of imageQuery == null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqU:Lcom/tencent/mm/pluginsdk/ui/chat/as;

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqU:Lcom/tencent/mm/pluginsdk/ui/chat/as;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_b

    move-object v0, v1

    .line 182
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    .line 176
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqT:Lcom/tencent/mm/pluginsdk/ui/chat/at;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/at;->atb()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const-string v0, "MicroMsg.RecentImageBubble"

    const-string v2, "because of items == null || items.size() == 0"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/chat/as;

    if-eqz v0, :cond_6

    iget-wide v4, v0, Lcom/tencent/mm/pluginsdk/ui/chat/as;->dlU:J

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/cj;->M(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    move v4, v2

    :goto_2
    if-eqz v4, :cond_6

    const-string v2, "MicroMsg.RecentImageBubble"

    const-string v3, "we found u have a future pic that lead to forbid this featur. file : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/chat/as;->fqS:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    iget-object v4, v0, Lcom/tencent/mm/pluginsdk/ui/chat/as;->fqS:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/tencent/mm/pluginsdk/ui/chat/as;->fqS:Ljava/lang/String;

    sget-object v5, Lcom/tencent/mm/storage/h;->cfG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v0, v1

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_9

    iget-wide v4, v0, Lcom/tencent/mm/pluginsdk/ui/chat/as;->dlU:J

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/cj;->M(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v4, v4, v6

    if-gtz v4, :cond_8

    move v4, v2

    :goto_3
    if-eqz v4, :cond_9

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->chz:Landroid/content/SharedPreferences;

    const-string v3, "chattingui_recent_shown_image_path"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/ui/chat/as;->fqS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "MicroMsg.RecentImageBubble"

    const-string v2, "because of recentImage.equals(imageItem.orginalPath)"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    move v4, v3

    goto :goto_3

    :cond_9
    const-string v4, "MicroMsg.RecentImageBubble"

    const-string v5, "because of checkAddDate(addDate) == false, or imageItem == null : %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez v0, :cond_a

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto :goto_4

    .line 178
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqU:Lcom/tencent/mm/pluginsdk/ui/chat/as;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/chat/as;->bOV:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqU:Lcom/tencent/mm/pluginsdk/ui/chat/as;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/chat/as;->bOV:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqU:Lcom/tencent/mm/pluginsdk/ui/chat/as;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/chat/as;->fqS:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final hide()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqV:Lcom/tencent/mm/ui/base/ce;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqV:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    goto :goto_0
.end method

.method public final show()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->cXH:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqU:Lcom/tencent/mm/pluginsdk/ui/chat/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqV:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->dmp:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->dyD:Landroid/view/View;

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->cXH:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqW:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x53

    .line 210
    :goto_1
    iget-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqW:Z

    if-eqz v1, :cond_3

    move v1, v2

    .line 211
    :goto_2
    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->fqV:Lcom/tencent/mm/ui/base/ce;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->dmp:Landroid/view/View;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/chat/au;->dyD:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/tencent/mm/ui/base/ce;->showAtLocation(Landroid/view/View;III)V

    .line 213
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/ay;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ay;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/au;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    goto :goto_0

    .line 209
    :cond_2
    const/16 v0, 0x55

    goto :goto_1

    .line 210
    :cond_3
    const/16 v1, 0xa

    goto :goto_2
.end method
