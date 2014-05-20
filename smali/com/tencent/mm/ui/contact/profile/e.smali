.class public final Lcom/tencent/mm/ui/contact/profile/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/b/a;


# instance fields
.field private bLH:Lcom/tencent/mm/ui/MMActivity;

.field private cHU:Lcom/tencent/mm/ui/base/ch;

.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private cQI:Lcom/tencent/mm/storage/i;

.field private cQb:Z

.field private cSY:Lcom/tencent/mm/p/a;

.field private cnb:Ljava/util/List;

.field private cnc:Lcom/tencent/mm/p/f;

.field private cnl:Z

.field private cnn:Ljava/lang/String;

.field private dNx:Z

.field private edN:I

.field gOJ:Lcom/tencent/mm/ui/base/x;

.field private gVY:Lcom/tencent/mm/protocal/a/dl;

.field private gVZ:Z

.field private gWa:Z

.field private gWb:Z

.field private ghP:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/MMActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVY:Lcom/tencent/mm/protocal/a/dl;

    .line 96
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVZ:Z

    .line 97
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->gWa:Z

    .line 98
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnl:Z

    .line 99
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->gWb:Z

    .line 104
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->gOJ:Lcom/tencent/mm/ui/base/x;

    .line 772
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cHU:Lcom/tencent/mm/ui/base/ch;

    .line 773
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQb:Z

    .line 112
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;Lcom/tencent/mm/protocal/a/dl;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/contact/profile/e;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    .line 117
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/e;->ghP:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVY:Lcom/tencent/mm/protocal/a/dl;

    .line 119
    return-void
.end method

.method private a(Lcom/tencent/mm/p/a;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_subscribe_bizinfo"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    .line 241
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "contact_info_locate"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    .line 243
    new-instance v2, Lcom/tencent/mm/protocal/a/nv;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/nv;-><init>()V

    .line 244
    iget v3, p1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    iput v3, v2, Lcom/tencent/mm/protocal/a/nv;->cqC:I

    .line 245
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/nv;->eBo:Ljava/lang/String;

    .line 246
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/storage/az;

    const/16 v5, 0x2f

    invoke-direct {v4, v5, v2}, Lcom/tencent/mm/storage/az;-><init>(ILcom/tencent/mm/am/a;)V

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 247
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/z/i;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 248
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/tencent/mm/p/k;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    .line 250
    invoke-virtual {p1}, Lcom/tencent/mm/p/a;->xx()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 253
    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p1}, Lcom/tencent/mm/p/a;->xz()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 257
    :cond_0
    if-eqz p2, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/e;->aLc()V

    .line 260
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/e;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcom/tencent/mm/ui/tools/dl;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/tencent/mm/ui/contact/profile/m;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/profile/m;-><init>(Lcom/tencent/mm/ui/contact/profile/e;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/ca;)V

    new-instance v1, Lcom/tencent/mm/ui/contact/profile/n;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/profile/n;-><init>(Lcom/tencent/mm/ui/contact/profile/e;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    new-instance v1, Lcom/tencent/mm/ui/contact/profile/o;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/profile/o;-><init>(Lcom/tencent/mm/ui/contact/profile/e;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/e;Lcom/tencent/mm/p/a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/contact/profile/e;->a(Lcom/tencent/mm/p/a;Z)V

    return-void
.end method

.method private aLc()V
    .locals 12

    .prologue
    const/4 v10, -0x2

    const/high16 v9, 0x4000

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 279
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/profile/e;->Ji()Z

    .line 281
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const v1, 0x7f050007

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->addPreferencesFromResource(I)V

    .line 283
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->gWb:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_time_expired"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_header_bizinfo"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;

    .line 289
    if-eqz v0, :cond_6

    .line 290
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->ghP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->c(Lcom/tencent/mm/storage/i;Ljava/lang/String;)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/p/p;->eI(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v0

    .line 297
    iput-object v11, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnb:Ljava/util/List;

    .line 298
    iput-object v11, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    .line 300
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v1

    if-nez v1, :cond_20

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVY:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v1, :cond_20

    .line 301
    new-instance v0, Lcom/tencent/mm/p/a;

    invoke-direct {v0}, Lcom/tencent/mm/p/a;-><init>()V

    .line 302
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/p/a;->field_username:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVY:Lcom/tencent/mm/protocal/a/dl;

    iget v1, v1, Lcom/tencent/mm/protocal/a/dl;->cqC:I

    iput v1, v0, Lcom/tencent/mm/p/a;->field_brandFlag:I

    .line 304
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVY:Lcom/tencent/mm/protocal/a/dl;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/dl;->cqF:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/p/a;->field_brandIconURL:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVY:Lcom/tencent/mm/protocal/a/dl;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/dl;->cqE:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/p/a;->field_brandInfo:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVY:Lcom/tencent/mm/protocal/a/dl;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/dl;->cqD:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/p/a;->field_extInfo:Ljava/lang/String;

    move-object v6, v0

    .line 309
    :goto_1
    if-eqz v6, :cond_9

    .line 310
    iput-object v6, p0, Lcom/tencent/mm/ui/contact/profile/e;->cSY:Lcom/tencent/mm/p/a;

    .line 311
    invoke-virtual {v6}, Lcom/tencent/mm/p/a;->xF()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnb:Ljava/util/List;

    .line 312
    invoke-virtual {v6}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    .line 315
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v0, v0, Lcom/tencent/mm/p/f;->cno:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 316
    iput-boolean v4, p0, Lcom/tencent/mm/ui/contact/profile/e;->gWa:Z

    .line 318
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v0, v0, Lcom/tencent/mm/p/f;->cno:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/e;->wX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 319
    iput-boolean v4, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVZ:Z

    .line 322
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-nez v0, :cond_7

    .line 323
    const-string v0, "MicroMsg.ContactWidgetBizInfo"

    const-string v1, "expireTime not null, and %s is not my contact"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/e;->aLd()V

    .line 332
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->field_username:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->da(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/e;->aLd()V

    .line 340
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v0, v0, Lcom/tencent/mm/p/f;->cnn:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v0, v0, Lcom/tencent/mm/p/f;->cnn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v0, v0, Lcom/tencent/mm/p/f;->cnn:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnn:Ljava/lang/String;

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-boolean v0, v0, Lcom/tencent/mm/p/f;->cnl:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnl:Z

    .line 352
    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 353
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_user_desc"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    .line 354
    if-eqz v0, :cond_4

    .line 355
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->aIh()V

    .line 356
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    .line 357
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f07046f

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->ws(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    .line 360
    invoke-static {}, Lcom/tencent/mm/model/ar;->ub()Lcom/tencent/mm/model/av;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rJ()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/model/av;->cp(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/tencent/mm/platformtools/b;->e(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 362
    const-string v3, "MicroMsg.ContactWidgetBizInfo"

    const-string v7, "verify bmp is null ? %B"

    new-array v8, v4, [Ljava/lang/Object;

    if-nez v2, :cond_a

    move v1, v4

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v5

    invoke-static {v3, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 364
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    .line 365
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->aIf()V

    .line 376
    :cond_4
    :goto_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v0, v0, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    if-eqz v0, :cond_10

    .line 377
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_verifyuser"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    .line 378
    if-eqz v0, :cond_5

    .line 379
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->aIh()V

    .line 380
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    .line 381
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v1, v1, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    iget-object v1, v1, Lcom/tencent/mm/p/i;->cnM:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 382
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v1, v1, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    iget v1, v1, Lcom/tencent/mm/p/i;->cnK:I

    packed-switch v1, :pswitch_data_0

    const-string v2, "MicroMsg.ContactWidgetBizInfo"

    const-string v3, "getVerifyStr, error type %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v2, v3, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07046f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->ws(Ljava/lang/String;)V

    .line 386
    :goto_8
    invoke-static {}, Lcom/tencent/mm/model/ar;->ub()Lcom/tencent/mm/model/av;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rJ()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/model/av;->cp(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/tencent/mm/platformtools/b;->e(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 388
    const-string v3, "MicroMsg.ContactWidgetBizInfo"

    const-string v7, "verify bmp is null ? %B"

    new-array v8, v4, [Ljava/lang/Object;

    if-nez v2, :cond_d

    move v1, v4

    :goto_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v5

    invoke-static {v3, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 390
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v1, v1, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    iget-object v1, v1, Lcom/tencent/mm/p/i;->cnL:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 392
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v2, v2, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    iget-object v2, v2, Lcom/tencent/mm/p/i;->cnL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 397
    :goto_a
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v1, v1, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    iget-object v1, v1, Lcom/tencent/mm/p/i;->cnN:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v4

    :goto_b
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    .line 404
    :cond_5
    :goto_c
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v0, v0, Lcom/tencent/mm/p/f;->cnp:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v0, v0, Lcom/tencent/mm/p/f;->cnp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 405
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_privilege"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    .line 406
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->aIh()V

    .line 407
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    .line 408
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->aIg()V

    .line 409
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v1, v1, Lcom/tencent/mm/p/f;->cnp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/p/j;

    .line 410
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f030154

    invoke-static {v2, v3, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 412
    const v3, 0x7f0a031f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v8, Lcom/tencent/mm/ui/contact/profile/t;

    iget-object v9, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v9}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v1, Lcom/tencent/mm/p/j;->cnh:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/tencent/mm/ui/contact/profile/t;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    const v3, 0x7f0a01da

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/tencent/mm/p/ab;->yi()Lcom/tencent/mm/compatible/loader/b;

    move-result-object v8

    iget-object v9, v1, Lcom/tencent/mm/p/j;->cnO:Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/mm/p/j;->description:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Lcom/tencent/mm/compatible/loader/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->ak(Landroid/view/View;)V

    goto :goto_d

    .line 292
    :cond_6
    const-string v0, "MicroMsg.ContactWidgetBizInfo"

    const-string v1, "head pref is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_header_bizinfo"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 326
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_time_expired"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 337
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_time_expired"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 347
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_time_expired"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 348
    const-string v0, "MicroMsg.ContactWidgetBizInfo"

    const-string v1, "get biz info from storage, but return null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    move v1, v5

    .line 362
    goto/16 :goto_5

    .line 368
    :cond_b
    const-string v0, "MicroMsg.ContactWidgetBizInfo"

    const-string v1, "has not desc info"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_user_desc"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 370
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVZ:Z

    if-nez v0, :cond_4

    .line 371
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_time_expired"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 382
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070800

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :pswitch_2
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 384
    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnc:Lcom/tencent/mm/p/f;

    iget-object v1, v1, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    iget-object v1, v1, Lcom/tencent/mm/p/i;->cnM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->ws(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    move v1, v5

    .line 388
    goto/16 :goto_9

    .line 394
    :cond_e
    const-string v1, "MicroMsg.ContactWidgetBizInfo"

    const-string v2, "[arthurdan.emojiSpan] Notice!!!! extInfo.verifyInfo.verifySourceDescription is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_f
    move v1, v5

    .line 397
    goto/16 :goto_b

    .line 400
    :cond_10
    const-string v0, "MicroMsg.ContactWidgetBizInfo"

    const-string v1, "has not verify info"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_verifyuser"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto/16 :goto_c

    .line 418
    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_privilege"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 422
    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_subscribe_bizinfo"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 423
    if-ltz v2, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnb:Ljava/util/List;

    if-eqz v0, :cond_16

    .line 424
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_17

    .line 425
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f0704bc

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnb:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/b;

    iget-object v0, v0, Lcom/tencent/mm/p/b;->title:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnl:Z

    if-eqz v0, :cond_15

    .line 426
    :cond_13
    new-instance v3, Lcom/tencent/mm/ui/base/preference/Preference;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-direct {v3, v0}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "contact_info_bizinfo_external#"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/tencent/mm/p/ab;->yi()Lcom/tencent/mm/compatible/loader/b;

    move-result-object v7

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnb:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/b;

    iget-object v8, v0, Lcom/tencent/mm/p/b;->cnd:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnb:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/b;

    iget-object v0, v0, Lcom/tencent/mm/p/b;->title:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcom/tencent/mm/compatible/loader/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnb:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/b;

    iget-object v0, v0, Lcom/tencent/mm/p/b;->description:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 433
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnb:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/b;

    iget-object v0, v0, Lcom/tencent/mm/p/b;->description:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    :cond_14
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v3, v2}, Lcom/tencent/mm/ui/base/preference/n;->a(Lcom/tencent/mm/ui/base/preference/Preference;I)V

    .line 424
    :cond_15
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    .line 439
    :cond_16
    const-string v0, "MicroMsg.ContactWidgetBizInfo"

    const-string v1, "pos no more"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_17
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVZ:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->p(Lcom/tencent/mm/storage/i;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rG()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rG()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 444
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_verifyuser_weibo"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    .line 445
    if-eqz v0, :cond_18

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rI()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f070291

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v8}, Lcom/tencent/mm/storage/i;->rG()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/mm/model/w;->di(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v2, v3, v7}, Lcom/tencent/mm/ui/MMActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    .line 453
    :cond_18
    :goto_f
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 454
    if-eqz v6, :cond_1d

    .line 455
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_subscribe_bizinfo"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    .line 457
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "contact_info_locate"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    .line 458
    invoke-virtual {v6}, Lcom/tencent/mm/p/a;->xx()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 461
    invoke-virtual {v6}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/mm/p/f;->cns:Z

    if-eqz v0, :cond_1c

    .line 462
    invoke-virtual {v6}, Lcom/tencent/mm/p/a;->xz()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 474
    :goto_10
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_biz_read_msg_online"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 475
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_biz_add"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 478
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_19

    .line 480
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMActivity;->vT(Ljava/lang/String;)V

    .line 483
    :cond_19
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->field_username:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->da(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 485
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f020539

    new-instance v2, Lcom/tencent/mm/ui/contact/profile/l;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/contact/profile/l;-><init>(Lcom/tencent/mm/ui/contact/profile/e;)V

    invoke-virtual {v0, v5, v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 507
    :cond_1a
    :goto_11
    return-void

    .line 450
    :cond_1b
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_verifyuser_weibo"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_f

    .line 464
    :cond_1c
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "contact_info_locate"

    invoke-interface {v0, v2, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 465
    invoke-virtual {v6}, Lcom/tencent/mm/p/a;->xz()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_10

    .line 469
    :cond_1d
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_subscribe_bizinfo"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 471
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_locate"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_10

    .line 496
    :cond_1e
    const-string v0, "MicroMsg.ContactWidgetBizInfo"

    const-string v1, "%s is not my contact"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/e;->aLd()V

    .line 498
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_biz_add"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_1f

    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->gWa:Z

    if-eqz v1, :cond_1f

    .line 500
    const v1, 0x7f0704ba

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 504
    :cond_1f
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/MMActivity;->dh(Z)V

    goto :goto_11

    :cond_20
    move-object v6, v0

    goto/16 :goto_1

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private aLd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 592
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_verifyuser_weibo"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 593
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_subscribe_bizinfo"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 595
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_locate"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 596
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_biz_view"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 599
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->gVZ:Z

    if-nez v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_time_expired"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_biz_remove"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 606
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_biz_add"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/MMActivity;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/profile/e;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const-class v2, Lcom/tencent/mm/ui/transmit/SelectConversationUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Select_Talker_Name"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Select_block_List"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Select_Send_Card"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/contact/profile/e;)V
    .locals 5
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ap;->uV(Ljava/lang/String;)Lcom/tencent/mm/storage/ak;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/storage/bc;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v1

    invoke-direct {v3, v0, v1}, Lcom/tencent/mm/storage/bc;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQb:Z

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f0709bb

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f0709ee

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/contact/profile/g;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/contact/profile/g;-><init>(Lcom/tencent/mm/ui/contact/profile/e;)V

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cHU:Lcom/tencent/mm/ui/base/ch;

    new-instance v1, Lcom/tencent/mm/ui/contact/profile/h;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/profile/h;-><init>(Lcom/tencent/mm/ui/contact/profile/e;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/model/bv;->a(Ljava/lang/String;Lcom/tencent/mm/model/ca;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/ui/contact/profile/e;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const-class v2, Lcom/tencent/mm/ui/ExposeUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "k_username"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic g(Lcom/tencent/mm/ui/contact/profile/e;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    const-string v0, "MicroMsg.ContactWidgetBizInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dealAddShortcut, username = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/base/a/a;->B(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v0, Lcom/tencent/mm/ui/contact/profile/s;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/s;-><init>(Lcom/tencent/mm/ui/contact/profile/e;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/an;->b(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f0709d7

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    return-void
.end method

.method static synthetic h(Lcom/tencent/mm/ui/contact/profile/e;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->qJ()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v1

    new-instance v4, Lcom/tencent/mm/storage/bb;

    invoke-direct {v4, v0}, Lcom/tencent/mm/storage/bb;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/k;->tU(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/c;->tx(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/mm/p/p;->xH()Lcom/tencent/mm/p/a;

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/tencent/mm/p/a;->a(Lcom/tencent/mm/p/d;)Lcom/tencent/mm/p/c;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v5, v1, Lcom/tencent/mm/p/c;->cng:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<brandlist>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/tencent/mm/p/c;->cng:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/e;

    if-eqz v0, :cond_1

    const-string v1, "<brand>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<username><![CDATA[%s]]></username>"

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/mm/p/e;->username:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_2
    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<nickname><![CDATA[%s]]></nickname>"

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/mm/p/e;->bPk:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_3
    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<alias><![CDATA[%s]]></alias>"

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/mm/p/e;->wN:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_4
    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<iconurl>%s</iconurl>"

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/mm/p/e;->cnh:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_5
    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<Hidden><![CDATA[%d]]></Hidden>"

    new-array v7, v2, [Ljava/lang/Object;

    iget-boolean v0, v0, Lcom/tencent/mm/p/e;->cni:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</brand>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQb:Z

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v5, 0x7f0709bb

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v5, 0x7f0709ee

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/contact/profile/i;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/profile/i;-><init>(Lcom/tencent/mm/ui/contact/profile/e;)V

    invoke-static {v1, v4, v2, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cHU:Lcom/tencent/mm/ui/base/ch;

    new-instance v1, Lcom/tencent/mm/ui/contact/profile/j;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/profile/j;-><init>(Lcom/tencent/mm/ui/contact/profile/e;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/model/bv;->a(Ljava/lang/String;Lcom/tencent/mm/model/ca;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1, v0, v4}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/o;->tX(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/p/k;->eH(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "_delete_ok_"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Lcom/tencent/mm/ui/MMActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, v0, Lcom/tencent/mm/p/e;->username:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    iget-object v1, v0, Lcom/tencent/mm/p/e;->bPk:Ljava/lang/String;

    goto/16 :goto_3

    :cond_5
    iget-object v1, v0, Lcom/tencent/mm/p/e;->wN:Ljava/lang/String;

    goto/16 :goto_4

    :cond_6
    iget-object v1, v0, Lcom/tencent/mm/p/e;->cnh:Ljava/lang/String;

    goto/16 :goto_5

    :cond_7
    move v0, v3

    goto/16 :goto_6

    :cond_8
    const-string v0, "</brandlist>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/mm/p/a;->field_brandList:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/p/k;->b(Lcom/tencent/mm/p/a;)Z

    :cond_9
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Kdel_from"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    :goto_7
    return-void

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->finish()V

    goto :goto_7
.end method

.method static synthetic i(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/base/preference/n;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/contact/profile/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->gWb:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/contact/profile/e;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/e;->aLc()V

    return-void
.end method

.method static synthetic l(Lcom/tencent/mm/ui/contact/profile/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQb:Z

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/contact/profile/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQb:Z

    return v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/base/ch;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cHU:Lcom/tencent/mm/ui/base/ch;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/base/ch;
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cHU:Lcom/tencent/mm/ui/base/ch;

    return-object v0
.end method

.method private static wX(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 630
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 636
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final Ji()Z
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_header_bizinfo"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;

    .line 611
    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->onDetach()V

    .line 620
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/storage/i;ZI)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 264
    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 265
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 266
    if-eqz p1, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 268
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 269
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    .line 270
    iput-boolean p3, p0, Lcom/tencent/mm/ui/contact/profile/e;->dNx:Z

    .line 271
    iput p4, p0, Lcom/tencent/mm/ui/contact/profile/e;->edN:I

    .line 273
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/e;->aLc()V

    .line 274
    return v1

    :cond_1
    move v0, v2

    .line 264
    goto :goto_0

    :cond_2
    move v0, v2

    .line 265
    goto :goto_1
.end method

.method public final iO(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 124
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return v0

    .line 128
    :cond_0
    const-string v1, "contact_info_verifyuser_weibo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    new-instance v0, Lcom/tencent/mm/ui/applet/x;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/applet/x;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->rG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/applet/x;->bb(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 130
    goto :goto_0

    .line 133
    :cond_1
    const-string v1, "contact_info_biz_remove"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cSY:Lcom/tencent/mm/p/a;

    invoke-virtual {v1}, Lcom/tencent/mm/p/a;->xE()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f0708f9

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ui/MMActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const-string v2, ""

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v4, 0x7f0704ad

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v5, 0x7f0709c1

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/contact/profile/q;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/profile/q;-><init>(Lcom/tencent/mm/ui/contact/profile/e;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move v0, v7

    .line 135
    goto :goto_0

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f0708f8

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ui/MMActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 138
    :cond_3
    const-string v1, "contact_info_biz_add"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    new-instance v2, Lcom/tencent/mm/ui/contact/profile/r;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/contact/profile/r;-><init>(Lcom/tencent/mm/ui/contact/profile/e;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/a;-><init>(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ui/applet/f;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->edN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnn:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/a;->qF(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/a;->e(Ljava/lang/String;Ljava/util/LinkedList;)V

    move v0, v7

    .line 140
    goto/16 :goto_0

    .line 143
    :cond_5
    const-string v1, "contact_info_biz_view"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 144
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const-class v2, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->dNx:Z

    if-eqz v1, :cond_6

    const-string v1, "Chat_User"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Chat_Mode"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/MMActivity;->setResult(ILandroid/content/Intent;)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->finish()V

    move v0, v7

    .line 145
    goto/16 :goto_0

    .line 144
    :cond_6
    const-string v1, "Chat_User"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Chat_Mode"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 148
    :cond_7
    const-string v1, "contact_info_biz_read_msg_online"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v7

    .line 150
    goto/16 :goto_0

    .line 153
    :cond_8
    const-string v1, "contact_info_bizinfo_external#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 154
    const-string v1, "contact_info_bizinfo_external#"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 155
    if-ltz v1, :cond_9

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 156
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cnb:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/b;

    iget-object v0, v0, Lcom/tencent/mm/p/b;->url:Ljava/lang/String;

    .line 158
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 159
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const-class v3, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 160
    const-string v2, "rawUrl"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v0, "useJs"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string v0, "vertical_scroll"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const-string v0, "geta8key_scene"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v7

    .line 165
    goto/16 :goto_0

    .line 169
    :cond_9
    const-string v1, "contact_info_subscribe_bizinfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "contact_info_show_brand"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "contact_info_locate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 170
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/p/p;->eI(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v1

    .line 171
    if-nez v1, :cond_b

    move v0, v7

    .line 172
    goto/16 :goto_0

    .line 175
    :cond_b
    const-string v2, "contact_info_subscribe_bizinfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 176
    invoke-virtual {v1}, Lcom/tencent/mm/p/a;->xx()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 177
    iget v2, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    .line 211
    :cond_c
    :goto_3
    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/contact/profile/e;->a(Lcom/tencent/mm/p/a;Z)V

    move v0, v7

    .line 213
    goto/16 :goto_0

    .line 179
    :cond_d
    iget v2, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    goto :goto_3

    .line 182
    :cond_e
    const-string v2, "contact_info_show_brand"

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 183
    invoke-virtual {v1}, Lcom/tencent/mm/p/a;->xy()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 184
    iget v2, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    goto :goto_3

    .line 186
    :cond_f
    iget v2, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    goto :goto_3

    .line 189
    :cond_10
    const-string v2, "contact_info_locate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 190
    invoke-virtual {v1}, Lcom/tencent/mm/p/a;->xz()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 191
    iget v2, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    goto :goto_3

    .line 193
    :cond_11
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v4, 0x7f070263

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ui/MMActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const v5, 0x7f0709bb

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/contact/profile/f;

    invoke-direct {v5, p0, v1}, Lcom/tencent/mm/ui/contact/profile/f;-><init>(Lcom/tencent/mm/ui/contact/profile/e;Lcom/tencent/mm/p/a;)V

    new-instance v6, Lcom/tencent/mm/ui/contact/profile/k;

    invoke-direct {v6, p0, v1}, Lcom/tencent/mm/ui/contact/profile/k;-><init>(Lcom/tencent/mm/ui/contact/profile/e;Lcom/tencent/mm/p/a;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->gOJ:Lcom/tencent/mm/ui/base/x;

    goto :goto_3

    .line 216
    :cond_12
    const-string v0, "contact_info_verifyuser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 217
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/p/p;->eI(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v0

    .line 218
    if-nez v0, :cond_13

    move v0, v7

    .line 219
    goto/16 :goto_0

    .line 222
    :cond_13
    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    iget-object v1, v1, Lcom/tencent/mm/p/i;->cnN:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 223
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 224
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    const-class v3, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 225
    const-string v2, "rawUrl"

    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    iget-object v0, v0, Lcom/tencent/mm/p/i;->cnN:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v0, "useJs"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const-string v0, "vertical_scroll"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    const-string v0, "geta8key_scene"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/e;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    :cond_14
    move v0, v7

    .line 232
    goto/16 :goto_0

    :cond_15
    move v0, v7

    .line 235
    goto/16 :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    return-void
.end method
