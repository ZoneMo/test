.class public final Lcom/tencent/mm/pluginsdk/ui/applet/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final FN:I

.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private context:Landroid/content/Context;

.field private fnJ:Ljava/lang/String;

.field private fnK:Ljava/util/HashMap;

.field private fnL:Z

.field private fnM:Z

.field public fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

.field private fnO:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

.field private fnP:Lcom/tencent/mm/pluginsdk/ui/applet/aa;

.field private fnQ:Landroid/view/View$OnClickListener;

.field private fnR:Landroid/view/View$OnClickListener;

.field private fnS:Landroid/view/View;

.field private fnT:Landroid/view/View;

.field private fnU:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

.field private fnV:Lcom/tencent/mm/pluginsdk/ui/applet/ai;

.field private fnW:Lcom/tencent/mm/pluginsdk/ui/applet/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnK:Ljava/util/HashMap;

    .line 33
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnL:Z

    .line 34
    iget-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnL:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnM:Z

    .line 38
    iput-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnO:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

    .line 39
    iput-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnP:Lcom/tencent/mm/pluginsdk/ui/applet/aa;

    .line 46
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/t;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/t;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/s;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnU:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

    .line 59
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/u;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/u;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/s;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnV:Lcom/tencent/mm/pluginsdk/ui/applet/ai;

    .line 80
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/v;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/v;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/s;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnW:Lcom/tencent/mm/pluginsdk/ui/applet/x;

    .line 136
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->FN:I

    .line 90
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->context:Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/w;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnW:Lcom/tencent/mm/pluginsdk/ui/applet/x;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->a(Lcom/tencent/mm/pluginsdk/ui/applet/x;)V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/applet/s;)Lcom/tencent/mm/pluginsdk/ui/applet/aa;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnP:Lcom/tencent/mm/pluginsdk/ui/applet/aa;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/applet/s;)Lcom/tencent/mm/ui/base/preference/n;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    return-object v0
.end method

.method private static kk(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 241
    if-ltz p0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pref_contact_list_row_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 244
    :cond_0
    const-string v0, "unkown"

    .line 245
    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    .line 246
    const-string v0, "header"

    .line 250
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pref_contact_list_row_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_2
    const/4 v1, -0x2

    if-ne p0, v1, :cond_1

    .line 248
    const-string v0, "footer"

    goto :goto_1
.end method

.method private qG(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->setUsername(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    iget-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnM:Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->cq(Z)V

    .line 122
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->notifyChanged()V

    .line 123
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->Yy()V

    .line 124
    return-void
.end method


# virtual methods
.method public final Yy()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnJ:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnK:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v4, v0}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnK:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 259
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnJ:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnS:Landroid/view/View;

    if-eqz v0, :cond_e

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnT:Landroid/view/View;

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnL:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v4}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->asc()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_3
    move v7, v1

    :goto_3
    if-eqz v0, :cond_4

    new-instance v4, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;-><init>(Landroid/content/Context;)V

    const/4 v5, -0x1

    invoke-static {v5}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->kk(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;->setKey(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnS:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;->setCustomView(Landroid/view/View;)V

    sget v5, Lcom/tencent/mm/h;->ady:I

    invoke-virtual {v4, v5}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;->kq(I)V

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnQ:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v5, v4, v3}, Lcom/tencent/mm/ui/base/preference/n;->a(Lcom/tencent/mm/ui/base/preference/Preference;I)V

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnK:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_4
    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnO:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnO:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

    :goto_4
    move v5, v2

    :goto_5
    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v6}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_c

    new-instance v8, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->context:Landroid/content/Context;

    invoke-direct {v8, v6, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;-><init>(Landroid/content/Context;I)V

    invoke-static {v5}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->kk(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->setKey(Ljava/lang/String;)V

    iget-object v6, v8, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foC:Lcom/tencent/mm/pluginsdk/ui/applet/ae;

    iget-object v9, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v6, v9, v5}, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->a(Lcom/tencent/mm/pluginsdk/ui/applet/w;I)V

    iget-object v6, v8, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foC:Lcom/tencent/mm/pluginsdk/ui/applet/ae;

    invoke-virtual {v6}, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->asf()V

    iget-object v6, v8, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foC:Lcom/tencent/mm/pluginsdk/ui/applet/ae;

    iget-object v9, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnV:Lcom/tencent/mm/pluginsdk/ui/applet/ai;

    invoke-virtual {v6, v9}, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->a(Lcom/tencent/mm/pluginsdk/ui/applet/ai;)V

    iget-object v6, v8, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foC:Lcom/tencent/mm/pluginsdk/ui/applet/ae;

    invoke-virtual {v6, v4}, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->a(Lcom/tencent/mm/pluginsdk/ui/applet/aj;)V

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    add-int v9, v3, v5

    invoke-interface {v6, v8, v9}, Lcom/tencent/mm/ui/base/preference/n;->a(Lcom/tencent/mm/ui/base/preference/Preference;I)V

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnK:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v6, Lcom/tencent/mm/h;->adF:I

    if-nez v2, :cond_9

    add-int/lit8 v9, v2, 0x4

    iget-object v10, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v10}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->getCount()I

    move-result v10

    if-lt v9, v10, :cond_9

    if-nez v0, :cond_7

    if-nez v7, :cond_7

    sget v6, Lcom/tencent/mm/h;->adG:I

    :cond_5
    :goto_6
    iget-object v8, v8, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foC:Lcom/tencent/mm/pluginsdk/ui/applet/ae;

    invoke-virtual {v8, v6}, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->kq(I)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnU:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    sget v6, Lcom/tencent/mm/h;->adE:I

    goto :goto_6

    :cond_8
    if-eqz v7, :cond_5

    sget v6, Lcom/tencent/mm/h;->adD:I

    goto :goto_6

    :cond_9
    if-nez v2, :cond_b

    if-nez v0, :cond_a

    sget v6, Lcom/tencent/mm/h;->adD:I

    goto :goto_6

    :cond_a
    sget v6, Lcom/tencent/mm/h;->adF:I

    goto :goto_6

    :cond_b
    add-int/lit8 v9, v2, 0x4

    iget-object v10, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v10}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->getCount()I

    move-result v10

    if-lt v9, v10, :cond_5

    if-nez v7, :cond_5

    sget v6, Lcom/tencent/mm/h;->adE:I

    goto :goto_6

    :cond_c
    if-eqz v7, :cond_0

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x2

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->kk(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnT:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnR:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    add-int v2, v3, v5

    invoke-interface {v1, v0, v2}, Lcom/tencent/mm/ui/base/preference/n;->a(Lcom/tencent/mm/ui/base/preference/Preference;I)V

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnK:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListCustomPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    move v7, v2

    goto/16 :goto_3

    :cond_e
    move v0, v2

    goto/16 :goto_2
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/applet/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnP:Lcom/tencent/mm/pluginsdk/ui/applet/aa;

    .line 294
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/applet/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnO:Lcom/tencent/mm/pluginsdk/ui/applet/aj;

    .line 290
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 132
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnJ:Ljava/lang/String;

    .line 133
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final arV()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnL:Z

    .line 269
    iget-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnL:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnM:Z

    .line 270
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->ab(Ljava/util/List;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->qG(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public final z(Ljava/util/ArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->A(Ljava/util/ArrayList;)V

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->qG(Ljava/lang/String;)V

    .line 117
    return-void
.end method
