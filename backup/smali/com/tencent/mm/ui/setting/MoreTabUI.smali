.class public Lcom/tencent/mm/ui/setting/MoreTabUI;
.super Lcom/tencent/mm/ui/b;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/ar;


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private hdT:Lcom/tencent/mm/i/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/ui/b;-><init>()V

    .line 47
    new-instance v0, Lcom/tencent/mm/ui/setting/m;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/m;-><init>(Lcom/tencent/mm/ui/setting/MoreTabUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->hdT:Lcom/tencent/mm/i/c;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/MoreTabUI;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aMg()V

    return-void
.end method

.method private aLX()V
    .locals 6

    .prologue
    const v5, 0x7f020599

    const v3, 0x41004

    const/4 v4, 0x0

    .line 239
    const-string v0, "emoji"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    .line 242
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_emoji_store"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 245
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40003

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v1

    .line 246
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v2, 0x40005

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v2

    .line 247
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "settings_emoji_store"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconPreference;

    .line 248
    if-nez v0, :cond_1

    .line 262
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_emoji_store"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_0

    .line 251
    :cond_1
    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 253
    const v1, 0x7f0709f2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/MoreTabUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_0

    .line 254
    :cond_2
    if-eqz v2, :cond_3

    .line 255
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 256
    const v1, 0x7f0709f3

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/MoreTabUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_0

    .line 258
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 259
    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private aMf()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 148
    const-string v0, "sns"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_my_album"

    invoke-interface {v0, v1, v5}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "settings_my_album"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "settings_my_album"

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_0

    .line 154
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 157
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/tencent/mm/pluginsdk/v;->op(Ljava/lang/String;)I

    move-result v0

    .line 159
    :goto_1
    if-lez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001e

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private aMg()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "more_setting"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 187
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "more_setting"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconPreference;

    .line 188
    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v1

    const v2, 0x40001

    const v3, 0x41002

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v1

    .line 191
    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 193
    const v1, 0x7f0709f2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/MoreTabUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020599

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    .line 199
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    invoke-static {}, Lcom/tencent/mm/model/v;->to()Z

    move-result v1

    if-nez v1, :cond_2

    .line 202
    const v1, 0x7f0707e5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconPreference;->setSummary(I)V

    .line 209
    :cond_0
    :goto_1
    return-void

    .line 195
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 196
    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_0

    .line 204
    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private aMh()V
    .locals 4

    .prologue
    .line 265
    invoke-static {}, Lcom/tencent/mm/model/v;->tp()Z

    move-result v0

    .line 266
    const-string v1, "MicroMsg.MoreTabUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wallet status: is open"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "settings_mm_wallet"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 269
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 270
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aMi()V
    .locals 9

    .prologue
    const v8, 0x7f02081c

    const v3, 0x41008

    const/4 v7, 0x0

    .line 274
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x32014

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v7}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 276
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v2, 0x32011

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v7}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 277
    add-int/2addr v1, v0

    .line 281
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v2, 0x40004

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v2

    .line 282
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/i/a;->cc(I)Z

    move-result v3

    .line 283
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v4, "settings_mm_wallet"

    invoke-interface {v0, v4}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconPreference;

    .line 284
    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v4, "MicroMsg.MoreTabUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isShowNew : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v4, "MicroMsg.MoreTabUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isShowDot : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 292
    const v1, 0x7f0709f2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/MoreTabUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020599

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_0

    .line 293
    :cond_1
    const/16 v2, 0x63

    if-le v1, v2, :cond_2

    .line 294
    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 295
    const v1, 0x7f070fa6

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/MoreTabUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_0

    .line 296
    :cond_2
    if-lez v1, :cond_3

    .line 297
    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 298
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_0

    .line 299
    :cond_3
    if-eqz v3, :cond_4

    .line 300
    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 301
    const-string v1, ""

    const v2, 0x7f02081d

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_0

    .line 303
    :cond_4
    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    .line 304
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/MoreTabUI;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aMf()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/setting/MoreTabUI;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aLX()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/setting/MoreTabUI;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aMi()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/setting/MoreTabUI;)Lcom/tencent/mm/ui/base/preference/n;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f070191

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->mn(I)V

    .line 75
    return-void
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f05002c

    return v0
.end method

.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 329
    invoke-static {p3}, Lcom/tencent/mm/platformtools/au;->U(Ljava/lang/Object;)I

    move-result v0

    .line 330
    const-string v1, "MicroMsg.MoreTabUI"

    const-string v2, "onNotifyChange event:%d obj:%d stg:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p2, v3, v7

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    if-ne p2, v1, :cond_0

    if-gtz v0, :cond_2

    .line 332
    :cond_0
    const-string v1, "MicroMsg.MoreTabUI"

    const-string v2, "onNotifyChange error obj:%d stg:%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object p2, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    const v1, 0x32011

    if-eq v1, v0, :cond_3

    const v1, 0x32014

    if-ne v1, v0, :cond_4

    .line 336
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aMi()V

    goto :goto_0

    .line 337
    :cond_4
    const/16 v1, 0x28

    if-ne v1, v0, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aMh()V

    goto :goto_0
.end method

.method protected final aDG()V
    .locals 1

    .prologue
    .line 368
    const v0, 0x7f070191

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->mn(I)V

    .line 369
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 370
    return-void
.end method

.method protected final aDH()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 375
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 376
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->hdT:Lcom/tencent/mm/i/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/i/a;->a(Lcom/tencent/mm/i/c;)V

    .line 377
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "more_tab_setting_personal_info"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    const-string v1, "more_tab_setting_personal_info"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/AccountInfoPreference;

    invoke-static {}, Lcom/tencent/mm/model/v;->ti()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/AccountInfoPreference;->setAccountName(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/AccountInfoPreference;->mJ(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v1, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/AccountInfoPreference;->a(Landroid/text/SpannableString;)V

    .line 378
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aMf()V

    .line 379
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aLX()V

    .line 380
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aMg()V

    .line 381
    const-string v0, "favorite"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_mm_favorite"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 382
    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aMi()V

    .line 383
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aMh()V

    .line 385
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 388
    const v0, 0x7f0a087c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 390
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/tencent/mm/ui/setting/n;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/setting/n;-><init>(Lcom/tencent/mm/ui/setting/MoreTabUI;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    :cond_1
    return-void

    .line 377
    :cond_2
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/AccountInfoPreference;->setAccountName(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/AccountInfoPreference;->setAccountName(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_mm_favorite"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected final aDI()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method protected final aDJ()V
    .locals 2

    .prologue
    .line 415
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->hdT:Lcom/tencent/mm/i/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/i/a;->b(Lcom/tencent/mm/i/c;)V

    .line 416
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 418
    return-void
.end method

.method protected final aDK()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method protected final aDL()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public final aDN()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->arP()V

    .line 442
    return-void
.end method

.method public final aDO()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 448
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const v1, 0x7f05002c

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->addPreferencesFromResource(I)V

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aIo()V

    .line 451
    return-void
.end method

.method public final aDQ()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method protected final aFq()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method public final f(Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 7
    .parameter

    .prologue
    const v6, 0x10b25

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/16 v4, 0x2ace

    const/4 v1, 0x1

    .line 96
    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "more_tab_setting_personal_info"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsPersonalInfoUI;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 143
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "settings_mm_wallet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v2, "9"

    invoke-virtual {v0, v4, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "mall"

    const-string v3, ".ui.MallIndexUI"

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 107
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v2, 0x40004

    const v3, 0x41008

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/i/a;->y(II)V

    .line 108
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Lcom/tencent/mm/ab/j;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Lcom/tencent/mm/ab/j;-><init>(I)V

    .line 110
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    :cond_1
    move v0, v1

    .line 113
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "settings_my_album"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "sns_userName"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x2000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x400

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "sns"

    const-string v4, ".ui.SnsUserUI"

    invoke-static {v0, v2, v4, v3}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    .line 120
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "settings_mm_favorite"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v2, "8"

    invoke-virtual {v0, v4, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "favorite"

    const-string v3, ".ui.FavoriteIndexUI"

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 123
    goto/16 :goto_0

    .line 126
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "settings_emoji_store"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 127
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v2, "7"

    invoke-virtual {v0, v4, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v2, 0x40003

    const v3, 0x41004

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/i/a;->y(II)V

    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v2, 0x40005

    const v3, 0x41004

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/i/a;->y(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "preceding_scence"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "emoji"

    const-string v4, ".ui.EmojiStoreUI"

    invoke-static {v2, v3, v4, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    .line 131
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "more_setting"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 133
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v2, 0x40001

    const v3, 0x41002

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/i/a;->y(II)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 140
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 143
    goto/16 :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 79
    const-string v0, "MicroMsg.MoreTabUI"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/MoreTabUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "more_setting"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_emoji_store"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_mm_wallet"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_mm_favorite"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_my_album"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/MoreTabUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "more_tab_setting_personal_info"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 82
    return-void
.end method
