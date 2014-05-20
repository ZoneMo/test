.class public final Lcom/tencent/mm/ui/contact/ap;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# instance fields
.field protected bLH:Lcom/tencent/mm/ui/MMActivity;

.field protected cKz:Ljava/util/List;

.field protected cPK:Lcom/tencent/mm/ui/base/dc;

.field protected cPL:Lcom/tencent/mm/ui/base/cy;

.field protected cPN:Lcom/tencent/mm/ui/base/cz;

.field private cqO:Lcom/tencent/mm/ui/applet/b;

.field private cqP:Lcom/tencent/mm/ui/applet/f;

.field protected dKG:Ljava/lang/String;

.field protected dNc:Lcom/tencent/mm/ui/base/db;

.field private fof:Lcom/tencent/mm/pluginsdk/ui/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 42
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/ap;->dKG:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/ap;->cKz:Ljava/util/List;

    .line 48
    invoke-static {}, Lcom/tencent/mm/ui/base/MMSlideDelView;->aHp()Lcom/tencent/mm/ui/base/cz;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->cPN:Lcom/tencent/mm/ui/base/cz;

    .line 54
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/ap;->cqO:Lcom/tencent/mm/ui/applet/b;

    .line 55
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/ap;->cqP:Lcom/tencent/mm/ui/applet/f;

    .line 66
    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ap;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 67
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ap;->dKG:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/tencent/mm/ui/applet/b;

    new-instance v1, Lcom/tencent/mm/ui/contact/aq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/aq;-><init>(Lcom/tencent/mm/ui/contact/ap;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/applet/b;-><init>(Lcom/tencent/mm/ui/applet/e;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->cqO:Lcom/tencent/mm/ui/applet/b;

    .line 77
    return-void
.end method

.method private F(Lcom/tencent/mm/storage/i;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 292
    const-string v0, ""

    .line 296
    :goto_0
    return-object v0

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f070942

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized FZ()V
    .locals 5

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ap;->dKG:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ap;->cKz:Ljava/util/List;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ap;->closeCursor()V

    .line 145
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ap;->setCursor(Landroid/database/Cursor;)V

    .line 146
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ap;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ap;->FZ()V

    .line 137
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/mm/storage/i;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tI(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/storage/i;->convertFrom(Landroid/database/Cursor;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/k;->y(Lcom/tencent/mm/storage/i;)V

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/e;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ap;->fof:Lcom/tencent/mm/pluginsdk/ui/e;

    .line 94
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/cy;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ap;->cPL:Lcom/tencent/mm/ui/base/cy;

    .line 106
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/db;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ap;->dNc:Lcom/tencent/mm/ui/base/db;

    .line 102
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/dc;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ap;->cPK:Lcom/tencent/mm/ui/base/dc;

    .line 98
    return-void
.end method

.method public final detach()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->cqO:Lcom/tencent/mm/ui/applet/b;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->cqO:Lcom/tencent/mm/ui/applet/b;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/applet/b;->detach()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->cqO:Lcom/tencent/mm/ui/applet/b;

    .line 90
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ap;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 119
    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->cqP:Lcom/tencent/mm/ui/applet/f;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/tencent/mm/ui/contact/ar;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/ar;-><init>(Lcom/tencent/mm/ui/contact/ap;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->cqP:Lcom/tencent/mm/ui/applet/f;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->cqO:Lcom/tencent/mm/ui/applet/b;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->cqO:Lcom/tencent/mm/ui/applet/b;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ap;->cqP:Lcom/tencent/mm/ui/applet/f;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mm/ui/applet/b;->a(ILcom/tencent/mm/ui/applet/f;)V

    .line 177
    :cond_1
    if-nez p2, :cond_4

    .line 181
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f030064

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 182
    new-instance v1, Lcom/tencent/mm/ui/contact/as;

    invoke-direct {v1}, Lcom/tencent/mm/ui/contact/as;-><init>()V

    .line 183
    const v0, 0x7f0a0078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/as;->cMT:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0a007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MaskLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/as;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    .line 185
    const v0, 0x7f0a0083

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/as;->cMU:Landroid/widget/TextView;

    .line 197
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 203
    :goto_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 206
    if-nez v0, :cond_5

    const/4 v0, -0x1

    move v1, v0

    .line 207
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/contact/ap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 209
    if-nez p1, :cond_7

    .line 210
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/ap;->F(Lcom/tencent/mm/storage/i;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 212
    const-string v1, "MicroMsg.ChatroomContactAdapter"

    const-string v3, "get display show head return null, user[%s] pos[%d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_2
    :goto_2
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/as;->cMT:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :goto_3
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/as;->cMU:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/ap;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const v1, 0x7f0c0100

    :goto_4
    invoke-static {v4, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 245
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/as;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 246
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/pluginsdk/ui/a;

    .line 248
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ap;->fof:Lcom/tencent/mm/pluginsdk/ui/e;

    if-eqz v3, :cond_3

    .line 249
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ap;->fof:Lcom/tencent/mm/pluginsdk/ui/e;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/pluginsdk/ui/e;->a(Lcom/tencent/mm/pluginsdk/ui/f;)V

    .line 254
    :cond_3
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/as;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->aHz()V

    .line 259
    :try_start_0
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/as;->cMU:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/as;->cMU:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ap;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v2, Lcom/tencent/mm/ui/contact/as;->cMU:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v0, v4}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_5
    return-object p2

    .line 200
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/as;

    move-object v2, v0

    goto/16 :goto_0

    .line 206
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    move v1, v0

    goto/16 :goto_1

    .line 215
    :cond_6
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/as;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/as;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/as;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3

    .line 220
    :cond_7
    if-lez p1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 221
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/ap;->F(Lcom/tencent/mm/storage/i;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 223
    const-string v1, "MicroMsg.ChatroomContactAdapter"

    const-string v3, "get display show head return null, user[%s] pos[%d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 226
    :cond_8
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/as;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/as;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_9

    .line 229
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/as;->cMT:Landroid/widget/TextView;

    const v3, 0x7f020525

    invoke-virtual {v1, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 230
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/as;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_3

    .line 232
    :cond_9
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/as;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_3

    .line 240
    :cond_a
    const v1, 0x7f0c0102

    goto/16 :goto_4

    .line 261
    :catch_0
    move-exception v0

    iget-object v0, v2, Lcom/tencent/mm/ui/contact/as;->cMU:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->cqO:Lcom/tencent/mm/ui/applet/b;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ap;->cqO:Lcom/tencent/mm/ui/applet/b;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/applet/b;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 83
    :cond_0
    return-void
.end method
