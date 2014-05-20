.class public final Lcom/tencent/mm/ui/contact/profile/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/pluginsdk/b/a;
.implements Lcom/tencent/mm/pluginsdk/z;


# instance fields
.field private bNc:I

.field private bOt:Landroid/app/Activity;

.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private cQI:Lcom/tencent/mm/storage/i;

.field private dNx:Z

.field private dsv:Ljava/lang/String;

.field private edN:I

.field private frx:Ljava/lang/String;

.field private fsh:Z

.field private fst:Z

.field private gVU:Z

.field private gWA:Z

.field private gWB:Ljava/lang/String;

.field private gWC:Z

.field private gWD:Z

.field private gWq:I

.field private gWw:Lcom/tencent/mm/protocal/a/vp;

.field private gWx:Ljava/lang/String;

.field private gWy:I

.field private gWz:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/tencent/mm/protocal/a/vp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/vp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWw:Lcom/tencent/mm/protocal/a/vp;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWx:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bNc:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWy:I

    .line 80
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWz:Z

    .line 81
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWA:Z

    .line 87
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWD:Z

    .line 89
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->fst:Z

    .line 92
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/ay;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    return-object v0
.end method

.method private aLc()V
    .locals 15

    .prologue
    const v14, 0x7f020687

    const/4 v2, 0x0

    const v12, 0x7f070473

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/profile/ay;->Ji()Z

    .line 305
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 306
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const v1, 0x7f050014

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->addPreferencesFromResource(I)V

    .line 309
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apD()Lcom/tencent/mm/pluginsdk/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apD()Lcom/tencent/mm/pluginsdk/y;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, p0}, Lcom/tencent/mm/pluginsdk/y;->a(ILjava/lang/String;Lcom/tencent/mm/pluginsdk/z;)V

    .line 312
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 316
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_header_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;

    .line 317
    if-eqz v13, :cond_14

    .line 318
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    iget v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->edN:I

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->frx:Ljava/lang/String;

    invoke-virtual {v13, v0, v1, v3}, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;->a(Lcom/tencent/mm/storage/i;ILjava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWz:Z

    invoke-virtual {v13, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;->I(Ljava/lang/String;Z)V

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWA:Z

    invoke-virtual {v13, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;->J(Ljava/lang/String;Z)V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 327
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_district"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    .line 328
    if-eqz v0, :cond_1

    .line 329
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v3, 0x7f07046b

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rC()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/w;->dj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->rD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    .line 338
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rB()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 339
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_signature"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    .line 340
    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    .line 342
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v3, 0x7f07046d

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rB()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    .line 351
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->p(Lcom/tencent/mm/storage/i;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rG()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rG()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 352
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_weibo"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    .line 353
    if-eqz v0, :cond_3

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rI()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v4, 0x7f070291

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mm/model/w;->di(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    .line 362
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->bUk:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->bUj:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 364
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_remarkinfo"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/RemarkInfoPreference;

    .line 366
    if-eqz v0, :cond_6

    .line 367
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v1, v1, Lcom/tencent/mm/storage/i;->bUk:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 368
    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/RemarkInfoPreference;->aKQ()V

    .line 370
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v3, 0x7f070418

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/RemarkInfoPreference;->setTitle(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v1, v1, Lcom/tencent/mm/storage/i;->bUj:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 372
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v1, v1, Lcom/tencent/mm/storage/i;->bUj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/RemarkInfoPreference;->lg(Ljava/lang/String;)V

    .line 377
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_remarkinfo"

    invoke-interface {v0, v1, v11}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 382
    :goto_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_facebook"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    .line 388
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_facebook"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 390
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v0

    const-string v1, "LinkedinPluginClose"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1b

    :cond_7
    move v0, v10

    .line 392
    :goto_7
    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->bUl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 393
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_linkedin"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    .line 394
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v1, v1, Lcom/tencent/mm/storage/i;->bUm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    .line 396
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_linkedin"

    invoke-interface {v0, v1, v11}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 401
    :goto_8
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_Uin"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_QQNick"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "contact_info_friend_qq"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    const-wide/16 v7, 0x0

    cmp-long v3, v4, v7

    if-eqz v3, :cond_1d

    if-eqz v1, :cond_1d

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Aq()Lcom/tencent/mm/modelfriend/aw;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mm/modelfriend/aw;->C(J)Lcom/tencent/mm/modelfriend/av;

    move-result-object v1

    if-nez v1, :cond_9

    move-object v1, v2

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/av;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    :cond_a
    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ui/contact/FriendPreference;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    :cond_b
    :goto_9
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_Mobile_MD5"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_full_Mobile_MD5"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_friend_mobile"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/tencent/mm/ui/contact/FriendPreference;

    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    const-wide/16 v7, 0x0

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/mm/ui/contact/FriendPreference;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    .line 404
    :cond_c
    :goto_a
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWw:Lcom/tencent/mm/protocal/a/vp;

    iget v0, v0, Lcom/tencent/mm/protocal/a/vp;->cqz:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_20

    move v0, v10

    .line 405
    :goto_b
    const-string v1, "sns"

    invoke-static {v1}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 406
    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rd()Z

    move-result v0

    if-nez v0, :cond_21

    .line 407
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_sns"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/o;

    .line 408
    if-eqz v0, :cond_d

    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 409
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/pluginsdk/v;->oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/o;->qS(Ljava/lang/String;)V

    .line 416
    :cond_d
    :goto_c
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 417
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_verifyuser"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    .line 418
    if-eqz v0, :cond_e

    .line 419
    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    .line 420
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v2, 0x7f07046e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->ws(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/tencent/mm/model/ar;->ub()Lcom/tencent/mm/model/av;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rJ()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/model/av;->cp(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/b;->e(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 423
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 424
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->h(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rK()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    .line 433
    :cond_e
    :goto_d
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_Source_FMessage"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "MicroMsg.ContactWidgetNormal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initFriendSource, contact source = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getSource()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", sourceFMessage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2c

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_source"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "contact_info_google_contact"

    invoke-interface {v1, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    const/16 v3, 0xd

    if-eq v2, v3, :cond_f

    const/16 v3, 0xa

    if-ne v2, v3, :cond_10

    :cond_f
    iget-boolean v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWD:Z

    if-nez v3, :cond_10

    const/4 v2, 0x3

    :cond_10
    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2, v1}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    .line 436
    :cond_11
    :goto_e
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_footer_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    .line 439
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "User_From_Fmessage"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 440
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Contact_FMessageCard"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 441
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Contact_KHideExpose"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 442
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Contact_Uin"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 443
    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->frx:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->dNx:Z

    iget-boolean v4, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gVU:Z

    iget-boolean v5, p0, Lcom/tencent/mm/ui/contact/profile/ay;->fsh:Z

    iget v6, p0, Lcom/tencent/mm/ui/contact/profile/ay;->edN:I

    iget v7, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWq:I

    iget-object v12, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWx:Ljava/lang/String;

    invoke-virtual/range {v0 .. v12}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;ZZZIIZZJLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 445
    iget-object v1, v0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ckD:Lcom/tencent/mm/sdk/e/am;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/e/am;->removeAll()V

    .line 446
    iget-object v1, v0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ckD:Lcom/tencent/mm/sdk/e/am;

    new-instance v2, Lcom/tencent/mm/ui/contact/profile/ba;

    invoke-direct {v2, p0, v13}, Lcom/tencent/mm/ui/contact/profile/ba;-><init>(Lcom/tencent/mm/ui/contact/profile/ay;Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/sdk/e/am;->a(Ljava/lang/Object;Landroid/os/Looper;)V

    .line 461
    :goto_f
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->rF()I

    .line 472
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "clear_lbs_info"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 476
    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->fst:Z

    if-eqz v1, :cond_13

    .line 477
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 478
    if-eqz v13, :cond_12

    .line 479
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v13}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 481
    :cond_12
    if-eqz v0, :cond_13

    .line 482
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 486
    :cond_13
    return-void

    .line 322
    :cond_14
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v13}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_0

    .line 330
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->rD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 334
    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_district"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 347
    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_signature"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 359
    :cond_18
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_weibo"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 374
    :cond_19
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v3, 0x7f07041c

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/RemarkInfoPreference;->lg(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 379
    :cond_1a
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_remarkinfo"

    invoke-interface {v0, v1, v10}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_1b
    move v0, v11

    .line 391
    goto/16 :goto_7

    .line 398
    :cond_1c
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_linkedin"

    invoke-interface {v0, v1, v10}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 401
    :cond_1d
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_9

    :cond_1e
    iput-boolean v10, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWD:Z

    goto/16 :goto_a

    :cond_1f
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_a

    :cond_20
    move v0, v11

    .line 404
    goto/16 :goto_b

    .line 412
    :cond_21
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_sns"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    goto/16 :goto_c

    .line 429
    :cond_22
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_verifyuser"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    goto/16 :goto_d

    .line 433
    :sswitch_0
    if-eqz v0, :cond_23

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v3, 0x7f070409

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    :cond_23
    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_e

    :sswitch_1
    if-eqz v0, :cond_24

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020407

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v3, 0x7f07040a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    :cond_24
    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_e

    :sswitch_2
    if-eqz v0, :cond_25

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020404

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v3, 0x7f07040b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    :cond_25
    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_e

    :sswitch_3
    if-eqz v0, :cond_26

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020190

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v3, 0x7f070647

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    :cond_26
    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_e

    :sswitch_4
    if-eqz v0, :cond_27

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v3, 0x7f070ca1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    :cond_27
    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_e

    :sswitch_5
    iput-boolean v10, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWC:Z

    :sswitch_6
    if-eqz v0, :cond_28

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02045d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v3, 0x7f070573

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    :cond_28
    if-eqz v1, :cond_11

    invoke-virtual {v1, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v2, 0x7f07055f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWC:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->dsv:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->tb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWB:Ljava/lang/String;

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWB:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->dsv:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_10
    invoke-virtual {v1, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->dsv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_e

    :cond_2a
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->dsv:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_10

    :sswitch_7
    if-eqz v0, :cond_2b

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020408

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v3, 0x7f070475

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    :cond_2b
    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_e

    :cond_2c
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_source"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "contact_info_google_contact"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;

    if-eqz v1, :cond_2d

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2, v1}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    :cond_2d
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getSource()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_e

    :sswitch_8
    if-eqz v0, :cond_11

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v2, 0x7f070474

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    goto/16 :goto_e

    :sswitch_9
    if-eqz v0, :cond_11

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v2, 0x7f070ca1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    goto/16 :goto_e

    :sswitch_a
    if-eqz v0, :cond_11

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020408

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v2, 0x7f070475

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    goto/16 :goto_e

    :sswitch_b
    if-eqz v0, :cond_11

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v2, 0x7f070479

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    goto/16 :goto_e

    :sswitch_c
    if-eqz v0, :cond_11

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v2, 0x7f070476

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    goto/16 :goto_e

    :sswitch_d
    if-eqz v0, :cond_11

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v2, 0x7f07079a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    goto/16 :goto_e

    :sswitch_e
    if-eqz v0, :cond_11

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dB(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02045d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->g(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const v2, 0x7f070573

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/preference/KeyValuePreference;->dC(Z)V

    goto/16 :goto_e

    .line 457
    :cond_2e
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "contact_info_footer_normal"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    goto/16 :goto_f

    .line 433
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x19 -> :sswitch_3
        0x1e -> :sswitch_4
        0x30 -> :sswitch_7
        0x3a -> :sswitch_5
        0x3b -> :sswitch_6
        0x3c -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_b
        0x12 -> :sswitch_8
        0x16 -> :sswitch_c
        0x17 -> :sswitch_c
        0x18 -> :sswitch_c
        0x1a -> :sswitch_c
        0x1b -> :sswitch_c
        0x1c -> :sswitch_c
        0x1d -> :sswitch_c
        0x1e -> :sswitch_9
        0x22 -> :sswitch_d
        0x30 -> :sswitch_a
        0x3a -> :sswitch_e
        0x3b -> :sswitch_e
        0x3c -> :sswitch_e
    .end sparse-switch
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/profile/ay;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    return-object v0
.end method


# virtual methods
.method public final Ji()Z
    .locals 2

    .prologue
    .line 807
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apD()Lcom/tencent/mm/pluginsdk/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 808
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apD()Lcom/tencent/mm/pluginsdk/y;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Lcom/tencent/mm/pluginsdk/y;->a(Lcom/tencent/mm/pluginsdk/z;I)Z

    .line 810
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 812
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_header_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;

    .line 813
    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;->onDetach()V

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_footer_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    .line 818
    if-eqz v0, :cond_2

    .line 819
    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->Ji()Z

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_friend_qq"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    .line 823
    if-eqz v0, :cond_3

    .line 824
    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->Ji()Z

    .line 827
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_friend_mobile"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    .line 828
    if-eqz v0, :cond_4

    .line 829
    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->Ji()Z

    .line 832
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_facebook"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    .line 833
    if-eqz v0, :cond_5

    .line 834
    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->Ji()Z

    .line 842
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_sns"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    .line 843
    const/4 v0, 0x1

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1e

    const/4 v3, 0x1

    .line 889
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x1ca

    if-eq v0, v1, :cond_1

    .line 890
    const-string v0, "MicroMsg.ContactWidgetNormal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not expected scene,  type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 902
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 903
    check-cast p4, Lcom/tencent/mm/pluginsdk/model/j;

    .line 904
    invoke-virtual {p4}, Lcom/tencent/mm/pluginsdk/model/j;->apI()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p4}, Lcom/tencent/mm/pluginsdk/model/j;->apI()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 907
    :cond_2
    invoke-virtual {p4}, Lcom/tencent/mm/pluginsdk/model/j;->apH()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Lcom/tencent/mm/pluginsdk/model/j;->apH()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_header_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;

    .line 911
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "contact_info_footer_normal"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    .line 912
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXj:Z

    if-eqz v1, :cond_0

    .line 913
    const-string v1, "MicroMsg.ContactWidgetNormal"

    const-string v2, "happy update remark change"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iput-boolean v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWz:Z

    .line 915
    iput-boolean v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWA:Z

    .line 916
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;->I(Ljava/lang/String;Z)V

    .line 917
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;->J(Ljava/lang/String;Z)V

    .line 918
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/preference/NormalUserHeaderPreference;->ei(Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_NeedShowChangeRemarkButton"

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWz:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 921
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_NeedShowChangeSnsPreButton"

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWA:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public final a(ZZLjava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 859
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_sns"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/o;

    .line 860
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 861
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/pluginsdk/v;->oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/o;->qS(Ljava/lang/String;)V

    .line 864
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWw:Lcom/tencent/mm/protocal/a/vp;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/v;->b(Ljava/lang/String;Lcom/tencent/mm/protocal/a/vp;)Lcom/tencent/mm/protocal/a/vp;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWw:Lcom/tencent/mm/protocal/a/vp;

    .line 869
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/ay;->aLc()V

    .line 871
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 872
    if-eqz p4, :cond_1

    .line 873
    const-string v0, "MicroMsg.ContactWidgetNormal"

    const-string v1, "bg Change!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apD()Lcom/tencent/mm/pluginsdk/y;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 875
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apD()Lcom/tencent/mm/pluginsdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/y;->nR(Ljava/lang/String;)V

    .line 879
    :cond_1
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/storage/i;ZI)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    if-eqz p2, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 244
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 245
    if-eqz p1, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 246
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 247
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    .line 248
    iput-boolean p3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->dNx:Z

    .line 249
    iput p4, p0, Lcom/tencent/mm/ui/contact/profile/ay;->edN:I

    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "User_Verify"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gVU:Z

    .line 251
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Verify_ticket"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->frx:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_IsLBSFriend"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->fsh:Z

    .line 253
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Kdel_from"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWq:I

    .line 254
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_RemarkName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWx:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Sns_from_Scene"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bNc:I

    .line 257
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_NeedShowChangeRemarkButton"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWz:Z

    .line 258
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_NeedShowChangeSnsPreButton"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWA:Z

    .line 259
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_KSnsIFlag"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWy:I

    .line 260
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_KSnsBgId"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 261
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "Contact_KSnsBgUrl"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v5, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "verify_gmail"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/mm/ui/contact/profile/ay;->dsv:Ljava/lang/String;

    .line 264
    iget-object v5, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "profileName"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/ui/contact/profile/ay;->dsv:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/mm/sdk/platformtools/cj;->tb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWB:Ljava/lang/String;

    .line 266
    iget-object v5, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWw:Lcom/tencent/mm/protocal/a/vp;

    iget v6, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWy:I

    iput v6, v5, Lcom/tencent/mm/protocal/a/vp;->cqz:I

    .line 267
    iget-object v5, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWw:Lcom/tencent/mm/protocal/a/vp;

    iput-wide v3, v5, Lcom/tencent/mm/protocal/a/vp;->cqB:J

    .line 268
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWw:Lcom/tencent/mm/protocal/a/vp;

    iput-object v0, v3, Lcom/tencent/mm/protocal/a/vp;->cqA:Ljava/lang/String;

    .line 270
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWw:Lcom/tencent/mm/protocal/a/vp;

    invoke-interface {v0, v3, v4}, Lcom/tencent/mm/pluginsdk/v;->b(Ljava/lang/String;Lcom/tencent/mm/protocal/a/vp;)Lcom/tencent/mm/protocal/a/vp;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWw:Lcom/tencent/mm/protocal/a/vp;

    .line 283
    :cond_0
    iget v0, p2, Lcom/tencent/mm/storage/i;->field_deleteFlag:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->fst:Z

    .line 285
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/ay;->aLc()V

    .line 287
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/k;->tK(Ljava/lang/String;)Z

    .line 288
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 290
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->gWw:Lcom/tencent/mm/protocal/a/vp;

    iget v3, v3, Lcom/tencent/mm/protocal/a/vp;->cqz:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    move v2, v1

    .line 291
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rd()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/storage/i;->tz(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 294
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apD()Lcom/tencent/mm/pluginsdk/y;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 295
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apD()Lcom/tencent/mm/pluginsdk/y;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bNc:I

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/tencent/mm/pluginsdk/y;->b(ILjava/lang/String;ZI)V

    .line 298
    :cond_2
    return v1

    :cond_3
    move v0, v2

    .line 243
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 244
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 245
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 283
    goto :goto_3
.end method

.method public final b(ZLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    return-void
.end method

.method public final iO(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    const-string v0, "contact_info_weibo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/tencent/mm/ui/applet/x;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/tencent/mm/ui/applet/x;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rG()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/ui/applet/x;->bb(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 218
    :goto_0
    return v0

    .line 102
    :cond_0
    const-string v0, "contact_info_remarkinfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const-class v3, Lcom/tencent/mm/ui/contact/ContactRemarkInfoViewUI;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_Scene"

    iget v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->edN:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Contact_User"

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "contact_info_friend_qq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "contact_info_friend_qq"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    .line 111
    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->aKI()Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    .line 113
    goto :goto_0

    .line 116
    :cond_3
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    array-length v3, v0

    if-le v3, v1, :cond_4

    .line 119
    aget-object v3, v0, v1

    .line 120
    aget-object v0, v0, v2

    .line 121
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07049f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0704a0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 124
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    new-instance v5, Lcom/tencent/mm/ui/contact/profile/az;

    invoke-direct {v5, p0, v3, v0}, Lcom/tencent/mm/ui/contact/profile/az;-><init>(Lcom/tencent/mm/ui/contact/profile/ay;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v7, v4, v7, v5}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    :cond_4
    move v0, v1

    .line 157
    goto/16 :goto_0

    .line 160
    :cond_5
    const-string v0, "contact_info_friend_mobile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "contact_info_friend_mobile"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    .line 162
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->aKH()I

    move-result v3

    if-ne v3, v1, :cond_8

    .line 165
    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->aKI()Ljava/lang/String;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    move v0, v2

    .line 167
    goto/16 :goto_0

    .line 169
    :cond_7
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 170
    if-lez v2, :cond_8

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_8
    move v0, v1

    .line 174
    goto/16 :goto_0

    .line 177
    :cond_9
    const-string v0, "contact_info_sns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 178
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    move v0, v1

    .line 180
    goto/16 :goto_0

    .line 182
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 189
    const-string v2, "sns_source"

    iget v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bNc:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v2, "sns_signature"

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v2, "sns_nickName"

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v2, "sns_title"

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apD()Lcom/tencent/mm/pluginsdk/y;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 195
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apD()Lcom/tencent/mm/pluginsdk/y;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/tencent/mm/pluginsdk/y;->a(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 197
    :cond_b
    if-nez v0, :cond_d

    .line 198
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->finish()V

    .line 204
    :cond_c
    :goto_1
    const-string v0, "contact_info_linkedin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 205
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->bUn:Ljava/lang/String;

    .line 206
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 207
    const-string v0, "MicroMsg.ContactWidgetNormal"

    const-string v2, "this liurl is null!"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 208
    goto/16 :goto_0

    .line 200
    :cond_d
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const-string v3, "sns"

    const-string v4, ".ui.SnsUserUI"

    invoke-static {v2, v3, v4, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 211
    :cond_e
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 212
    const-string v3, "rawUrl"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v0, "geta8key_username"

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ay;->bOt:Landroid/app/Activity;

    const-string v3, "webview"

    const-string v4, "com.tencent.mm.ui.tools.WebViewUI"

    invoke-static {v0, v3, v4, v2}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_f
    move v0, v1

    .line 218
    goto/16 :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 854
    return-void
.end method
