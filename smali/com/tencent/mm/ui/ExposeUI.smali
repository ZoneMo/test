.class public Lcom/tencent/mm/ui/ExposeUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private bMS:J

.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private cvK:I

.field private dID:Landroid/app/Dialog;

.field private dpp:I

.field private emA:Ljava/lang/String;

.field private glh:Lcom/tencent/mm/modelsimple/v;

.field private gli:I

.field private glj:Ljava/lang/String;

.field private glk:Ljava/lang/Boolean;

.field private gll:Z

.field private glm:Z

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->dID:Landroid/app/Dialog;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->username:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->glj:Ljava/lang/String;

    .line 59
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->glk:Ljava/lang/Boolean;

    .line 60
    iput-boolean v1, p0, Lcom/tencent/mm/ui/ExposeUI;->gll:Z

    .line 62
    iput-boolean v1, p0, Lcom/tencent/mm/ui/ExposeUI;->glm:Z

    return-void
.end method

.method private Zz()V
    .locals 3

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/tencent/mm/ui/ExposeUI;->gll:Z

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ExposeUI;->startActivity(Landroid/content/Intent;)V

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/ExposeUI;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tencent/mm/ui/ExposeUI;->Zz()V

    return-void
.end method

.method private aEn()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    const-string v0, ""

    .line 354
    iget v1, p0, Lcom/tencent/mm/ui/ExposeUI;->dpp:I

    packed-switch v1, :pswitch_data_0

    .line 373
    :goto_0
    :pswitch_0
    return-object v0

    .line 356
    :pswitch_1
    const-string v0, "<exposecontent><weburl>%s</weburl><webscence>%d</webscence></exposecontent>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/mm/ui/ExposeUI;->emA:Ljava/lang/String;

    aput-object v2, v1, v3

    iget v2, p0, Lcom/tencent/mm/ui/ExposeUI;->gli:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :pswitch_2
    const-string v0, "<exposecontent><bottleid>%s</bottleid></exposecontent>"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/mm/ui/ExposeUI;->glj:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :pswitch_3
    const-string v0, ""

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :pswitch_4
    const-string v0, ""

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 372
    :pswitch_5
    const-string v0, ""

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/tencent/mm/ui/ExposeUI;)Z
    .locals 3
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    if-gez v0, :cond_0

    const v0, 0x7f0704d7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ExposeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/ExposeUI;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 34
    iget-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->glk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->glk:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->glj:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->glj:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v8, :cond_0

    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->username:Ljava/lang/String;

    :cond_0
    iget-wide v0, p0, Lcom/tencent/mm/ui/ExposeUI;->bMS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/mm/modelsimple/v;

    iget-object v1, p0, Lcom/tencent/mm/ui/ExposeUI;->username:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/ui/ExposeUI;->dpp:I

    iget v3, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    iget-wide v4, p0, Lcom/tencent/mm/ui/ExposeUI;->bMS:J

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelsimple/v;-><init>(Ljava/lang/String;IIJ)V

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->glh:Lcom/tencent/mm/modelsimple/v;

    const-string v0, "ui.contact.profile.ExposeUI"

    const-string v1, "do Expose usename- %s,reportScene-%d,reportType-%d,msgId-%d"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/ExposeUI;->username:Ljava/lang/String;

    aput-object v3, v2, v7

    iget v3, p0, Lcom/tencent/mm/ui/ExposeUI;->dpp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget-wide v3, p0, Lcom/tencent/mm/ui/ExposeUI;->bMS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/ExposeUI;->glh:Lcom/tencent/mm/modelsimple/v;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/ExposeUI;->getString(I)Ljava/lang/String;

    const v1, 0x7f0704d6

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/ExposeUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/w;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/w;-><init>(Lcom/tencent/mm/ui/ExposeUI;)V

    invoke-static {v0, v1, v6, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->dID:Landroid/app/Dialog;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/tencent/mm/modelsimple/v;

    iget-object v1, p0, Lcom/tencent/mm/ui/ExposeUI;->username:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/ui/ExposeUI;->dpp:I

    iget v3, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    invoke-direct {p0}, Lcom/tencent/mm/ui/ExposeUI;->aEn()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/modelsimple/v;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->glh:Lcom/tencent/mm/modelsimple/v;

    const-string v0, "ui.contact.profile.ExposeUI"

    const-string v1, "do Expose usename- %s,reportScene-%d,reportType-%d,ExposeContent-%s"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/ExposeUI;->username:Ljava/lang/String;

    aput-object v3, v2, v7

    iget v3, p0, Lcom/tencent/mm/ui/ExposeUI;->dpp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-direct {p0}, Lcom/tencent/mm/ui/ExposeUI;->aEn()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/ExposeUI;)Lcom/tencent/mm/modelsimple/v;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->glh:Lcom/tencent/mm/modelsimple/v;

    return-object v0
.end method

.method private refresh()V
    .locals 7

    .prologue
    const v5, 0x7f0301e5

    const v4, 0x7f0301e4

    const v3, 0x7f0301b3

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 167
    new-instance v0, Lcom/tencent/mm/ui/base/preference/PreferenceTitleCategory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/PreferenceTitleCategory;-><init>(Landroid/content/Context;)V

    .line 168
    const v1, 0x7f07044c

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 169
    iget-object v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 172
    new-instance v0, Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 173
    const v1, 0x7f0704d1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 174
    const-string v1, "MM_EXPOSE_TYPE_SEX"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/Preference;->setLayoutResource(I)V

    .line 176
    iget v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 177
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 184
    new-instance v0, Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 185
    const v1, 0x7f0704d2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 186
    const-string v1, "MM_EXPOSE_TYPE_CHEAT"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/Preference;->setLayoutResource(I)V

    .line 188
    iget v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 189
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    .line 193
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 196
    new-instance v0, Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 197
    const v1, 0x7f0704d3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 198
    const-string v1, "MM_EXPOSE_TYPE_RUBBISH"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/Preference;->setLayoutResource(I)V

    .line 200
    iget v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 201
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    .line 205
    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 208
    new-instance v0, Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 209
    const v1, 0x7f0704d4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 210
    const-string v1, "MM_EXPOSE_TYPE_INFRINGEMENT"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/Preference;->setLayoutResource(I)V

    .line 212
    iget v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 213
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    .line 217
    :goto_3
    iget-object v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 220
    new-instance v0, Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 221
    const v1, 0x7f0704d0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 222
    const-string v1, "MM_EXPOSE_TYPE_OTHER"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/Preference;->setLayoutResource(I)V

    .line 224
    iget v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_5

    .line 225
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    .line 229
    :goto_4
    iget-object v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 231
    new-instance v0, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 232
    iget-object v1, p0, Lcom/tencent/mm/ui/ExposeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 234
    iget-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 236
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->aES()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 237
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_5
    if-ge v1, v2, :cond_6

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 239
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 240
    const-string v4, "ui.contact.profile.ExposeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 179
    :cond_1
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    goto/16 :goto_0

    .line 191
    :cond_2
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    goto/16 :goto_1

    .line 203
    :cond_3
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    goto/16 :goto_2

    .line 215
    :cond_4
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_3

    .line 227
    :cond_5
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_4

    .line 243
    :cond_6
    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 103
    const v0, 0x7f0704c9

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ExposeUI;->mn(I)V

    .line 104
    new-instance v0, Lcom/tencent/mm/ui/t;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/t;-><init>(Lcom/tencent/mm/ui/ExposeUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ExposeUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 113
    const v0, 0x7f0704ce

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ExposeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/u;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/u;-><init>(Lcom/tencent/mm/ui/ExposeUI;)V

    sget-object v2, Lcom/tencent/mm/ui/bt;->gnO:Lcom/tencent/mm/ui/bt;

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/ui/ExposeUI;->a(Ljava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 125
    const v0, 0x7f0a0314

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ExposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-direct {p0}, Lcom/tencent/mm/ui/ExposeUI;->refresh()V

    .line 128
    return-void
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, -0x1

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    iget-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->dID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->dID:Landroid/app/Dialog;

    .line 257
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->glk:Ljava/lang/Boolean;

    .line 259
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 260
    iput-boolean v5, p0, Lcom/tencent/mm/ui/ExposeUI;->glm:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->aER()V

    const v0, 0x7f0704ca

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ExposeUI;->mn(I)V

    const v0, 0x7f0704cf

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ExposeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/v;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/v;-><init>(Lcom/tencent/mm/ui/ExposeUI;)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/tencent/mm/ui/ExposeUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_1
    const-string v0, "ui.contact.profile.ExposeUI"

    const-string v1, "error update expose: errType:%d, errCode:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "MM_EXPOSE_TYPE_OTHER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    .line 154
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/ExposeUI;->refresh()V

    .line 156
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_1
    const-string v1, "MM_EXPOSE_TYPE_SEX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    goto :goto_0

    .line 144
    :cond_2
    const-string v1, "MM_EXPOSE_TYPE_CHEAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    goto :goto_0

    .line 147
    :cond_3
    const-string v1, "MM_EXPOSE_TYPE_RUBBISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    goto :goto_0

    .line 150
    :cond_4
    const-string v1, "MM_EXPOSE_TYPE_INFRINGEMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/mm/ui/ExposeUI;->cvK:I

    goto :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 247
    const v0, 0x7f0300ea

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0314

    if-ne v0, v1, :cond_0

    .line 386
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0704cd

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/ExposeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lang=%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 388
    const-string v2, "rawUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v1, "title"

    const v2, 0x7f0704cc

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/ExposeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 391
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 393
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iput-boolean v4, p0, Lcom/tencent/mm/ui/ExposeUI;->glm:Z

    .line 75
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "k_username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->username:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "k_bottle_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->glj:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "k_expose_scene"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/ExposeUI;->dpp:I

    .line 78
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "k_expose_web_scene"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/ExposeUI;->gli:I

    .line 79
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "k_expose_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/ExposeUI;->emA:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "k_expose_msg_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/ExposeUI;->bMS:J

    .line 81
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "k_jump_to_launcher"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/ExposeUI;->gll:Z

    .line 82
    const-string v0, "ui.contact.profile.ExposeUI"

    const-string v1, "usename- %s,reportScene-%d,msgId-%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/ExposeUI;->username:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mm/ui/ExposeUI;->dpp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/tencent/mm/ui/ExposeUI;->bMS:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/tencent/mm/ui/ExposeUI;->FR()V

    .line 85
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/tencent/mm/ui/ExposeUI;->Zz()V

    .line 298
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 96
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onPause()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onResume()V

    .line 90
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 91
    return-void
.end method
