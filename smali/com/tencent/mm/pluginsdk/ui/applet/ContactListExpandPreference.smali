.class public Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;
.super Lcom/tencent/mm/ui/base/preference/Preference;
.source "SourceFile"


# instance fields
.field private foA:I

.field public foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

.field public foC:Lcom/tencent/mm/pluginsdk/ui/applet/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foA:I

    .line 51
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->asd()V

    .line 52
    sget v0, Lcom/tencent/mm/k;->aWI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->setLayoutResource(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foA:I

    .line 41
    if-nez p2, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->asd()V

    .line 46
    :cond_0
    :goto_0
    sget v0, Lcom/tencent/mm/k;->aWI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->setLayoutResource(I)V

    .line 47
    return-void

    .line 43
    :cond_1
    if-ne p2, v1, :cond_0

    .line 44
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foA:I

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/ae;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ae;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foC:Lcom/tencent/mm/pluginsdk/ui/applet/ae;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foA:I

    .line 57
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->asd()V

    .line 58
    sget v0, Lcom/tencent/mm/k;->aWI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->setLayoutResource(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foA:I

    .line 63
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->asd()V

    .line 64
    sget v0, Lcom/tencent/mm/k;->aWI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->setLayoutResource(I)V

    .line 65
    return-void
.end method

.method private asd()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foA:I

    .line 69
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    .line 70
    return-void
.end method

.method public static onDetach()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method


# virtual methods
.method public final B(Ljava/util/ArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->B(Ljava/util/ArrayList;)V

    .line 301
    :cond_0
    return-void
.end method

.method public final G(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->G(Ljava/util/List;)V

    .line 295
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/applet/aa;)V
    .locals 1
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->a(Lcom/tencent/mm/pluginsdk/ui/applet/aa;)V

    .line 339
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/applet/aj;)V
    .locals 1
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->a(Lcom/tencent/mm/pluginsdk/ui/applet/aj;)V

    .line 333
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/e;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->a(Lcom/tencent/mm/pluginsdk/ui/e;)V

    .line 105
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->a(Lcom/tencent/mm/ui/base/preference/n;Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public final al(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->d(Ljava/lang/String;Ljava/util/List;)V

    .line 122
    return-void
.end method

.method public final arV()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->arV()V

    .line 279
    :cond_0
    return-void
.end method

.method public final arX()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->arX()V

    .line 150
    :cond_0
    return-void
.end method

.method public final arY()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->arY()V

    .line 144
    :cond_0
    return-void
.end method

.method public final asb()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->asb()V

    .line 237
    :cond_0
    return-void
.end method

.method public final ct(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->cs(Z)Lcom/tencent/mm/pluginsdk/ui/applet/w;

    .line 250
    :cond_0
    return-object p0
.end method

.method public final cu(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->cr(Z)Lcom/tencent/mm/pluginsdk/ui/applet/w;

    .line 257
    :cond_0
    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->d(Ljava/lang/String;Ljava/util/List;)V

    .line 118
    :cond_0
    return-void
.end method

.method public final km(I)Z
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->km(I)Z

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final kp(I)Z
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->kp(I)Z

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final kr(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->kp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final ks(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->kp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final kt(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->kp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->ru()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final notifyChanged()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->Yy()V

    .line 112
    :cond_0
    return-void
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foA:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foC:Lcom/tencent/mm/pluginsdk/ui/applet/ae;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ae;->onBindView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method public final qH(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/applet/s;->fnN:Lcom/tencent/mm/pluginsdk/ui/applet/w;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/w;->qH(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public final z(Ljava/util/ArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->foB:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->z(Ljava/util/ArrayList;)V

    .line 128
    :cond_0
    return-void
.end method
