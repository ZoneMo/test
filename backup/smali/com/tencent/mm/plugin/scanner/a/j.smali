.class public final Lcom/tencent/mm/plugin/scanner/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ebv:Lcom/tencent/mm/plugin/scanner/a/j;


# instance fields
.field private bTQ:Ljava/lang/String;

.field private cie:Ljava/lang/String;

.field private ebc:Lcom/tencent/mm/plugin/scanner/a/l;

.field private ebd:Ljava/lang/String;

.field private ebe:Lcom/tencent/mm/plugin/scanner/a/m;

.field private ebf:Lcom/tencent/mm/plugin/scanner/a/m;

.field private ebg:Lcom/tencent/mm/plugin/scanner/a/m;

.field private ebh:Ljava/lang/String;

.field private ebi:Lcom/tencent/mm/plugin/scanner/a/k;

.field private ebj:Lcom/tencent/mm/plugin/scanner/a/k;

.field private ebk:Lcom/tencent/mm/plugin/scanner/a/k;

.field private ebl:Lcom/tencent/mm/plugin/scanner/a/k;

.field private ebm:Ljava/util/List;

.field private ebn:Ljava/util/List;

.field private ebo:Ljava/util/List;

.field private ebp:Ljava/util/List;

.field private ebq:Ljava/util/List;

.field private ebr:Ljava/lang/String;

.field private ebs:Ljava/lang/String;

.field private ebt:Ljava/lang/String;

.field private ebu:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    return-void
.end method

.method public static ZY()Lcom/tencent/mm/plugin/scanner/a/j;
    .locals 1

    .prologue
    .line 544
    sget-object v0, Lcom/tencent/mm/plugin/scanner/a/j;->ebv:Lcom/tencent/mm/plugin/scanner/a/j;

    return-object v0
.end method

.method public static a(Lcom/tencent/mm/plugin/scanner/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    sput-object p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebv:Lcom/tencent/mm/plugin/scanner/a/j;

    .line 541
    return-void
.end method


# virtual methods
.method public final ZG()Lcom/tencent/mm/plugin/scanner/a/l;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebc:Lcom/tencent/mm/plugin/scanner/a/l;

    return-object v0
.end method

.method public final ZH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebd:Ljava/lang/String;

    return-object v0
.end method

.method public final ZI()Lcom/tencent/mm/plugin/scanner/a/m;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebf:Lcom/tencent/mm/plugin/scanner/a/m;

    return-object v0
.end method

.method public final ZJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebh:Ljava/lang/String;

    return-object v0
.end method

.method public final ZK()Lcom/tencent/mm/plugin/scanner/a/k;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebi:Lcom/tencent/mm/plugin/scanner/a/k;

    return-object v0
.end method

.method public final ZL()Lcom/tencent/mm/plugin/scanner/a/k;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebj:Lcom/tencent/mm/plugin/scanner/a/k;

    return-object v0
.end method

.method public final ZM()Lcom/tencent/mm/plugin/scanner/a/k;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebk:Lcom/tencent/mm/plugin/scanner/a/k;

    return-object v0
.end method

.method public final ZN()Lcom/tencent/mm/plugin/scanner/a/k;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebl:Lcom/tencent/mm/plugin/scanner/a/k;

    return-object v0
.end method

.method public final ZO()Lcom/tencent/mm/plugin/scanner/a/k;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebj:Lcom/tencent/mm/plugin/scanner/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebj:Lcom/tencent/mm/plugin/scanner/a/k;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/a/k;->ZZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebj:Lcom/tencent/mm/plugin/scanner/a/k;

    .line 154
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebk:Lcom/tencent/mm/plugin/scanner/a/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebk:Lcom/tencent/mm/plugin/scanner/a/k;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/a/k;->ZZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebk:Lcom/tencent/mm/plugin/scanner/a/k;

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebl:Lcom/tencent/mm/plugin/scanner/a/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebl:Lcom/tencent/mm/plugin/scanner/a/k;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/a/k;->ZZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebl:Lcom/tencent/mm/plugin/scanner/a/k;

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebi:Lcom/tencent/mm/plugin/scanner/a/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebi:Lcom/tencent/mm/plugin/scanner/a/k;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/a/k;->ZZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebi:Lcom/tencent/mm/plugin/scanner/a/k;

    goto :goto_0

    .line 154
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ZP()Ljava/util/List;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebm:Ljava/util/List;

    return-object v0
.end method

.method public final ZQ()Ljava/util/List;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebn:Ljava/util/List;

    return-object v0
.end method

.method public final ZR()Ljava/util/List;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebo:Ljava/util/List;

    return-object v0
.end method

.method public final ZS()Ljava/util/List;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebp:Ljava/util/List;

    return-object v0
.end method

.method public final ZT()Ljava/util/List;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebq:Ljava/util/List;

    return-object v0
.end method

.method public final ZU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebr:Ljava/lang/String;

    return-object v0
.end method

.method public final ZV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebs:Ljava/lang/String;

    return-object v0
.end method

.method public final ZW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebt:Ljava/lang/String;

    return-object v0
.end method

.method public final ZX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebu:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/plugin/scanner/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebi:Lcom/tencent/mm/plugin/scanner/a/k;

    .line 108
    return-void
.end method

.method public final a(Lcom/tencent/mm/plugin/scanner/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebc:Lcom/tencent/mm/plugin/scanner/a/l;

    .line 38
    return-void
.end method

.method public final a(Lcom/tencent/mm/plugin/scanner/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebe:Lcom/tencent/mm/plugin/scanner/a/m;

    .line 68
    return-void
.end method

.method public final b(Lcom/tencent/mm/plugin/scanner/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebj:Lcom/tencent/mm/plugin/scanner/a/k;

    .line 118
    return-void
.end method

.method public final b(Lcom/tencent/mm/plugin/scanner/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebf:Lcom/tencent/mm/plugin/scanner/a/m;

    .line 78
    return-void
.end method

.method public final bF(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->bTQ:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public final c(Lcom/tencent/mm/plugin/scanner/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebk:Lcom/tencent/mm/plugin/scanner/a/k;

    .line 128
    return-void
.end method

.method public final c(Lcom/tencent/mm/plugin/scanner/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebg:Lcom/tencent/mm/plugin/scanner/a/m;

    .line 88
    return-void
.end method

.method public final d(Lcom/tencent/mm/plugin/scanner/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebl:Lcom/tencent/mm/plugin/scanner/a/k;

    .line 138
    return-void
.end method

.method public final fc(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->cie:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final mo(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebd:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public final mp(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebh:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public final mq(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebm:Ljava/util/List;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebm:Ljava/util/List;

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    return-void
.end method

.method public final mr(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebn:Ljava/util/List;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebn:Ljava/util/List;

    .line 178
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    return-void
.end method

.method public final ms(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebo:Ljava/util/List;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebo:Ljava/util/List;

    .line 193
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_1
    return-void
.end method

.method public final mt(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebp:Ljava/util/List;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebp:Ljava/util/List;

    .line 208
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_1
    return-void
.end method

.method public final mu(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebq:Ljava/util/List;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebq:Ljava/util/List;

    .line 223
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_1
    return-void
.end method

.method public final mv(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebr:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public final mw(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebs:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public final mx(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebt:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public final my(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->ebu:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->title:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/j;->url:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public final yP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->cie:Ljava/lang/String;

    return-object v0
.end method

.method public final yT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/j;->bTQ:Ljava/lang/String;

    return-object v0
.end method
