.class public final Lcom/tencent/mm/ui/contact/en;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# instance fields
.field private cIs:Ljava/lang/String;

.field protected cKz:Ljava/util/List;

.field private dKF:Ljava/util/List;

.field protected dKG:Ljava/lang/String;

.field private dKH:[I

.field private dKI:[Ljava/lang/String;

.field protected gRX:Ljava/lang/String;

.field private gRZ:I

.field private gVA:I

.field private gVw:[I

.field private gVx:Landroid/content/res/ColorStateList;

.field private gVy:Landroid/content/res/ColorStateList;

.field private gVz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 42
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/en;->dKG:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/en;->gRX:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/en;->cKz:Ljava/util/List;

    .line 46
    iput v2, p0, Lcom/tencent/mm/ui/contact/en;->gRZ:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/en;->cIs:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/en;->gVz:Ljava/lang/String;

    .line 54
    iput v2, p0, Lcom/tencent/mm/ui/contact/en;->gVA:I

    .line 76
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/en;->dKG:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/tencent/mm/ui/contact/en;->gRX:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/tencent/mm/ui/contact/en;->gVz:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    .line 80
    const v0, 0x7f0c0100

    invoke-static {p1, v0}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/en;->gVx:Landroid/content/res/ColorStateList;

    .line 81
    const v0, 0x7f0c0102

    invoke-static {p1, v0}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/en;->gVy:Landroid/content/res/ColorStateList;

    .line 82
    return-void
.end method

.method private VJ()Ljava/util/List;
    .locals 7

    .prologue
    .line 120
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 121
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/eo;

    .line 125
    const-string v4, "MicroMsg.SnsAddressAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "selectedContact.userName"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/tencent/mm/ui/contact/eo;->bPx:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v4, v0, Lcom/tencent/mm/ui/contact/eo;->bPx:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    iget-object v0, v0, Lcom/tencent/mm/ui/contact/eo;->bPx:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/r;->ch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 138
    :cond_2
    iget-object v4, v0, Lcom/tencent/mm/ui/contact/eo;->bPx:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    iget-object v4, v0, Lcom/tencent/mm/ui/contact/eo;->bPx:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, v0, Lcom/tencent/mm/ui/contact/eo;->bPx:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_3
    return-object v1
.end method

.method private a(ILcom/tencent/mm/storage/i;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 495
    iget v0, p0, Lcom/tencent/mm/ui/contact/en;->gVA:I

    if-ge p1, v0, :cond_0

    .line 496
    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    goto :goto_0
.end method

.method private b(ILcom/tencent/mm/storage/i;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x7b

    const/16 v0, 0x20

    const/4 v4, 0x0

    .line 502
    iget v2, p0, Lcom/tencent/mm/ui/contact/en;->gVA:I

    if-ge p1, v2, :cond_0

    .line 503
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    const v1, 0x7f0703f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 505
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 506
    const-string v0, "#"

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_2

    .line 508
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    const v1, 0x7f0702a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 510
    :cond_2
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_3

    .line 511
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    const v1, 0x7f070942

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 513
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v2

    if-ne v2, v0, :cond_d

    .line 514
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rv()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rv()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_4
    :goto_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_b

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_b

    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    :cond_5
    :goto_2
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rw()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rw()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rn()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->ro()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->ro()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->ro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/en;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/en;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x40

    if-eq v0, v2, :cond_5

    const/16 v2, 0x41

    if-lt v0, v2, :cond_c

    const/16 v2, 0x5a

    if-le v0, v2, :cond_5

    :cond_c
    move v0, v1

    goto/16 :goto_2

    .line 516
    :cond_d
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static isLetter(C)Z
    .locals 1
    .parameter

    .prologue
    .line 545
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private wP(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0709bb

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 275
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v2

    .line 298
    :goto_0
    return v0

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/en;->VJ()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->g(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    const/4 v0, 0x0

    .line 280
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/eo;

    .line 282
    :cond_2
    if-eqz v0, :cond_3

    .line 285
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    const v5, 0x7f070070

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v6

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/eo;->bPx:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    :cond_3
    move v0, v1

    .line 287
    goto :goto_0

    .line 289
    :cond_4
    invoke-static {p1}, Lcom/tencent/mm/model/v;->cm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 290
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    const v2, 0x7f07060f

    invoke-static {v0, v2, v7}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    .line 291
    goto :goto_0

    .line 293
    :cond_5
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/en;->VJ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {p1}, Lcom/tencent/mm/model/w;->co(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 294
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    const v3, 0x7f070975

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    .line 295
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 298
    goto/16 :goto_0
.end method

.method private wU(Ljava/lang/String;)Lcom/tencent/mm/ui/contact/eo;
    .locals 4
    .parameter

    .prologue
    .line 318
    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/eo;

    .line 320
    iget-object v3, v0, Lcom/tencent/mm/ui/contact/eo;->bPx:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move-object v1, v0

    .line 323
    goto :goto_0

    .line 324
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final FZ()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->gVz:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 384
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/en;->cIs:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/en;->cIs:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 385
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->dKG:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/en;->gRX:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/en;->cKz:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/contact/en;->setCursor(Landroid/database/Cursor;)V

    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/en;->gVA:I

    .line 392
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKG:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/en;->gRX:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->cKz:Ljava/util/List;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/en;->cIs:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKH:[I

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKG:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/en;->gRX:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->cIs:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/en;->cKz:Ljava/util/List;

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKI:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/en;->gVw:[I

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKH:[I

    if-eqz v0, :cond_5

    const-string v0, "MicroMsg.SnsAddressAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reset : showSection = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->dKI:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->dKH:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/en;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/en;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/en;->getCount()I

    move-result v0

    :goto_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/tencent/mm/ui/contact/en;->gVw:[I

    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/en;->dKH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/en;->dKH:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/en;->dKH:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    :goto_3
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->dKH:[I

    aget v3, v3, v1

    :goto_4
    if-ge v3, v2, :cond_4

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/en;->gVw:[I

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 388
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/en;->cIs:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->dKG:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/en;->gRX:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/en;->cKz:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tencent/mm/storage/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/en;->setCursor(Landroid/database/Cursor;)V

    .line 389
    iput v1, p0, Lcom/tencent/mm/ui/contact/en;->gVA:I

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 392
    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->gmO:Lcom/tencent/mm/ui/bd;

    if-eqz v0, :cond_6

    .line 395
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->gmO:Lcom/tencent/mm/ui/bd;

    invoke-interface {v0}, Lcom/tencent/mm/ui/bd;->FW()V

    .line 398
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/en;->notifyDataSetChanged()V

    .line 399
    return-void
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/en;->closeCursor()V

    .line 377
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/en;->FZ()V

    .line 378
    return-void
.end method

.method public final VG()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    const-string v0, "MicroMsg.SnsAddressAdapter"

    const-string v1, "getSections"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKI:[Ljava/lang/String;

    return-object v0
.end method

.method public final VL()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p1, Lcom/tencent/mm/storage/i;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/storage/i;

    invoke-direct {p1}, Lcom/tencent/mm/storage/i;-><init>()V

    const-string v0, "MicroMsg.SnsAddressAdapter"

    const-string v1, "new Contact"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/storage/i;->convertFrom(Landroid/database/Cursor;)V

    return-object p1
.end method

.method public final aB(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/en;->cKz:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->cKz:Ljava/util/List;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/en;->cKz:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/w;->tL()Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/en;->cKz:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/en;->ca(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public final aD(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 303
    invoke-static {}, Lcom/tencent/mm/model/v;->tJ()Lcom/tencent/mm/storage/i;

    move-result-object v1

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    new-instance v3, Lcom/tencent/mm/ui/contact/eo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/mm/ui/contact/eo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    new-instance v4, Lcom/tencent/mm/ui/contact/eo;

    invoke-direct {v4, v0}, Lcom/tencent/mm/ui/contact/eo;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/en;->ca(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public final aKU()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aKV()Ljava/util/List;
    .locals 6

    .prologue
    .line 162
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 163
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 165
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/tencent/mm/ui/contact/en;->gRZ:I

    if-ge v1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/eo;->bPx:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 171
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/contact/en;->gRZ:I

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/eo;->bPx:Ljava/lang/String;

    .line 173
    invoke-static {v0}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    invoke-static {v0}, Lcom/tencent/mm/model/r;->ch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_3

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 180
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 185
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 186
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 191
    :cond_4
    return-object v2
.end method

.method public final aKZ()Ljava/util/List;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    return-object v0
.end method

.method public final aLa()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/tencent/mm/ui/contact/en;->gVA:I

    return v0
.end method

.method public final gW(I)V
    .locals 3
    .parameter

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/contact/en;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 261
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/contact/en;->wU(Ljava/lang/String;)Lcom/tencent/mm/ui/contact/eo;

    move-result-object v1

    .line 262
    if-nez v1, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/contact/en;->wP(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    new-instance v2, Lcom/tencent/mm/ui/contact/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/eo;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/en;->notifyDataSetChanged()V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/en;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public final getPositionForSection(I)I
    .locals 1
    .parameter

    .prologue
    .line 333
    .line 334
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKH:[I

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKH:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKH:[I

    aget p1, v0, p1

    .line 337
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/contact/en;->gVA:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 427
    if-nez p2, :cond_0

    .line 431
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    const v1, 0x7f0300b9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 432
    new-instance v1, Lcom/tencent/mm/ui/contact/ep;

    invoke-direct {v1}, Lcom/tencent/mm/ui/contact/ep;-><init>()V

    .line 433
    const v0, 0x7f0a0078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/ep;->cMT:Landroid/widget/TextView;

    .line 434
    const v0, 0x7f0a007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MaskLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/ep;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    .line 435
    const v0, 0x7f0a0083

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/ep;->cMU:Landroid/widget/TextView;

    .line 436
    const v0, 0x7f0a0080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/ep;->cMW:Landroid/widget/CheckBox;

    .line 437
    const v0, 0x7f0a0084

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/ep;->dKL:Landroid/widget/TextView;

    .line 438
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 444
    :goto_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/en;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 447
    if-nez v0, :cond_1

    const/4 v0, -0x1

    move v1, v0

    .line 448
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/contact/en;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 450
    if-nez p1, :cond_2

    .line 451
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->cMT:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/contact/en;->b(ILcom/tencent/mm/storage/i;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 463
    :goto_2
    iget-object v4, v2, Lcom/tencent/mm/ui/contact/ep;->cMU:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/en;->gVx:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 468
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->cMW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 469
    iget-object v4, v2, Lcom/tencent/mm/ui/contact/ep;->cMW:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/contact/en;->wU(Ljava/lang/String;)Lcom/tencent/mm/ui/contact/eo;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 476
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/en;->dKG:Ljava/lang/String;

    const-string v3, "@domain.android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 477
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/base/MaskLayout;->setVisibility(I)V

    .line 478
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->dKL:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :goto_5
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->cMU:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/ep;->cMU:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/en;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/tencent/mm/ui/contact/ep;->cMU:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v3, v0, v2}, Lcom/tencent/mm/ao/b;->g(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    return-object p2

    .line 441
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/ep;

    move-object v2, v0

    goto/16 :goto_0

    .line 447
    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/contact/en;->a(ILcom/tencent/mm/storage/i;)I

    move-result v0

    move v1, v0

    goto/16 :goto_1

    .line 454
    :cond_2
    if-lez p1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/contact/en;->a(ILcom/tencent/mm/storage/i;)I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 455
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->cMT:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/contact/en;->b(ILcom/tencent/mm/storage/i;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 459
    :cond_3
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 463
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/en;->gVy:Landroid/content/res/ColorStateList;

    goto/16 :goto_3

    :cond_5
    move v1, v3

    .line 469
    goto :goto_4

    .line 481
    :cond_6
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 484
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->f(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 485
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ep;->dKL:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method public final ih(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/en;->dKG:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/en;->dKG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/en;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/tencent/mm/ui/contact/en;->cIs:Ljava/lang/String;

    .line 229
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/en;->closeCursor()V

    .line 230
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/en;->FZ()V

    .line 231
    return-void

    .line 228
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%@t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final nJ(I)Z
    .locals 1
    .parameter

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/contact/en;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 250
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/en;->wU(Ljava/lang/String;)Lcom/tencent/mm/ui/contact/eo;

    move-result-object v0

    .line 251
    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final wN(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 209
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/contact/en;->wU(Ljava/lang/String;)Lcom/tencent/mm/ui/contact/eo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/contact/en;->wP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    new-instance v2, Lcom/tencent/mm/ui/contact/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/contact/eo;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/en;->notifyDataSetChanged()V

    .line 213
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/en;->dKF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
