.class public abstract Lcom/tencent/mm/pluginsdk/ui/simley/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cZs:Ljava/lang/String;

.field private fsO:I

.field private fsP:Lcom/tencent/mm/pluginsdk/ui/simley/i;

.field private fsQ:Lcom/tencent/mm/ui/base/MMRadioImageButton;

.field private fsR:I

.field private fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

.field private fsT:I

.field private fsU:I

.field protected fsV:Lcom/tencent/mm/pluginsdk/ui/simley/k;

.field private fsW:I

.field private fsX:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/tencent/mm/pluginsdk/ui/simley/g;Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/ui/base/MMRadioImageButton;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "MicroMsg.SmileyPanel.Tab"

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->TAG:Ljava/lang/String;

    .line 43
    iput-boolean v3, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsX:Z

    .line 70
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "MicroMsg.SmileyPanel.Tab"

    const-string v2, "catch invalid Smiley Tab want add??!!"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsX:Z

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsQ:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    .line 77
    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    .line 79
    iput-object p4, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsV:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    .line 80
    iput p2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsR:I

    .line 82
    if-eqz p6, :cond_0

    .line 86
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    const-string v4, "TAG_DEFAULT_TAB"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atR()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atS()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    :goto_3
    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsO:I

    .line 87
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qY(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsT:I

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qZ(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsU:I

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsT:I

    invoke-virtual {v0, v2, v4}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ab(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsW:I

    .line 91
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/i;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/i;-><init>()V

    .line 92
    invoke-virtual {p5}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/pluginsdk/ui/simley/i;->fts:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsP:Lcom/tencent/mm/pluginsdk/ui/simley/i;

    .line 95
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsX:Z

    .line 96
    const-string v0, "MicroMsg.SmileyPanel.Tab"

    const-string v2, "smiley panel tab: productId: %s, startIndex: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v0, v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atP()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atQ()I

    move-result v2

    goto :goto_2

    :cond_4
    sget v2, Lcom/tencent/mm/storage/w;->ggX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/i;->KY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/mm/pluginsdk/i;->jd(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_3
.end method


# virtual methods
.method public final Lg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/simley/i;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsP:Lcom/tencent/mm/pluginsdk/ui/simley/i;

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/pluginsdk/ui/simley/g;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 190
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsV:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    .line 191
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    .line 192
    const-string v2, "MicroMsg.SmileyPanel.Tab"

    const-string v3, "refresh cache"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsP:Lcom/tencent/mm/pluginsdk/ui/simley/i;

    .line 196
    if-nez v2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    iget-object v3, v2, Lcom/tencent/mm/pluginsdk/ui/simley/i;->fts:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 201
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsQ:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    iget-object v2, v2, Lcom/tencent/mm/pluginsdk/ui/simley/i;->fts:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :cond_2
    iget-object v3, v2, Lcom/tencent/mm/pluginsdk/ui/simley/i;->WE:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/tencent/mm/pluginsdk/ui/simley/i;->WE:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 206
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsQ:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    iget-object v2, v2, Lcom/tencent/mm/pluginsdk/ui/simley/i;->WE:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move v0, v1

    .line 207
    goto :goto_0

    .line 210
    :cond_3
    iget v3, v2, Lcom/tencent/mm/pluginsdk/ui/simley/i;->resource:I

    if-lez v3, :cond_0

    .line 211
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsQ:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    iget v2, v2, Lcom/tencent/mm/pluginsdk/ui/simley/i;->resource:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setImageResource(I)V

    move v0, v1

    .line 212
    goto :goto_0
.end method

.method public final atA()Lcom/tencent/mm/pluginsdk/ui/h;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsV:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auz()Lcom/tencent/mm/pluginsdk/ui/h;

    move-result-object v0

    return-object v0
.end method

.method public final atB()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsW:I

    return v0
.end method

.method public final atC()Lcom/tencent/mm/ui/base/MMRadioImageButton;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsQ:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    return-object v0
.end method

.method public final atr()Lcom/tencent/mm/pluginsdk/ui/simley/g;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    return-object v0
.end method

.method public final ats()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsO:I

    return v0
.end method

.method public final att()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsR:I

    return v0
.end method

.method public final atu()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v0, "TAG_DEFAULT_TAB"

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final atv()I
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsT:I

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsU:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final atw()I
    .locals 4

    .prologue
    .line 152
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsO:I

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->atv()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final atx()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsU:I

    return v0
.end method

.method public final aty()Lcom/tencent/mm/pluginsdk/ui/aw;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsV:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aty()Lcom/tencent/mm/pluginsdk/ui/aw;

    move-result-object v0

    return-object v0
.end method

.method public final atz()Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsV:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auA()Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/pluginsdk/ui/simley/g;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 220
    const-string v0, "MicroMsg.SmileyPanel.Tab"

    const-string v1, "deep refresh cache"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->a(Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/pluginsdk/ui/simley/g;)Z

    move-result v0

    .line 224
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsR:I

    .line 225
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qY(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsT:I

    .line 226
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qZ(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsU:I

    .line 227
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsT:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ab(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsW:I

    .line 229
    return v0
.end method

.method public final getType()I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/e;->cZs:Ljava/lang/String;

    const-string v1, "TAG_DEFAULT_TAB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    :goto_0
    return v0

    :cond_0
    sget v1, Lcom/tencent/mm/storage/w;->ggX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    goto :goto_0
.end method
