.class public final Lcom/tencent/mm/ui/contact/fe;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# instance fields
.field private cIs:Ljava/lang/String;

.field protected cKz:Ljava/util/List;

.field private dKE:I

.field protected dKG:Ljava/lang/String;

.field private dKH:[I

.field private dKI:[Ljava/lang/String;

.field protected gRX:Ljava/lang/String;

.field private gVA:I

.field private gVL:Ljava/util/List;

.field private gVw:[I

.field private gVx:Landroid/content/res/ColorStateList;

.field private gVy:Landroid/content/res/ColorStateList;

.field private gVz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 35
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->gRX:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->cKz:Ljava/util/List;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->cIs:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->gVz:Ljava/lang/String;

    .line 45
    iput v2, p0, Lcom/tencent/mm/ui/contact/fe;->gVA:I

    .line 46
    iput v2, p0, Lcom/tencent/mm/ui/contact/fe;->dKE:I

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->gVL:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->gRX:Ljava/lang/String;

    .line 54
    const v0, 0x7f0c0100

    invoke-static {p1, v0}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->gVx:Landroid/content/res/ColorStateList;

    .line 55
    const v0, 0x7f0c0102

    invoke-static {p1, v0}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->gVy:Landroid/content/res/ColorStateList;

    .line 56
    return-void
.end method

.method private a(ILcom/tencent/mm/storage/i;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 274
    iget v0, p0, Lcom/tencent/mm/ui/contact/fe;->gVA:I

    if-ge p1, v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    .line 276
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/contact/fe;->gVA:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKE:I

    iget v1, p0, Lcom/tencent/mm/ui/contact/fe;->gVA:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 277
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v0

    goto :goto_0
.end method

.method private aKn()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

    const-string v1, "@micromsg.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

    const-string v1, "@all.contact.without.chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

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

    .line 283
    iget v2, p0, Lcom/tencent/mm/ui/contact/fe;->gVA:I

    if-ge p1, v2, :cond_0

    .line 284
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->context:Landroid/content/Context;

    const v1, 0x7f0703f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    .line 286
    :cond_0
    iget v2, p0, Lcom/tencent/mm/ui/contact/fe;->gVA:I

    iget v3, p0, Lcom/tencent/mm/ui/contact/fe;->dKE:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    .line 287
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->context:Landroid/content/Context;

    const v1, 0x7f0703f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 290
    const-string v0, "#"

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_3

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->context:Landroid/content/Context;

    const v1, 0x7f0702a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_4

    .line 295
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->context:Landroid/content/Context;

    const v1, 0x7f070942

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_4
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 298
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rv()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rv()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_5
    :goto_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_c

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_c

    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    :cond_6
    :goto_2
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rw()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rw()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rn()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->rn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->ro()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->ro()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->ro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_a
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/fe;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/fe;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0x40

    if-eq v0, v2, :cond_6

    const/16 v2, 0x41

    if-lt v0, v2, :cond_d

    const/16 v2, 0x5a

    if-le v0, v2, :cond_6

    :cond_d
    move v0, v1

    goto/16 :goto_2

    .line 300
    :cond_e
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
    .line 329
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


# virtual methods
.method public final FZ()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 157
    iget-object v5, p0, Lcom/tencent/mm/ui/contact/fe;->gVL:Ljava/util/List;

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->cIs:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->cIs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 159
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/fe;->gRX:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/fe;->cKz:Ljava/util/List;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/fe;->aKn()Z

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/fe;->setCursor(Landroid/database/Cursor;)V

    .line 162
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/fe;->gVA:I

    .line 163
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/fe;->aKn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->cKz:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/k;->c(Ljava/util/List;Z)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKE:I

    .line 174
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->gRX:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/fe;->cKz:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/fe;->cIs:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKH:[I

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->gRX:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/fe;->cIs:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/fe;->cKz:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKI:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->gVw:[I

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKH:[I

    if-eqz v0, :cond_6

    const-string v0, "MicroMsg.VoipAddressAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reset : showSection = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/fe;->dKI:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/fe;->dKH:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/fe;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/fe;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/fe;->getCount()I

    move-result v0

    :goto_1
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->gVw:[I

    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->dKH:[I

    array-length v1, v1

    if-ge v6, v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->dKH:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v6, v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->dKH:[I

    add-int/lit8 v2, v6, 0x1

    aget v1, v1, v2

    :goto_3
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/fe;->dKH:[I

    aget v2, v2, v6

    :goto_4
    if-ge v2, v1, :cond_5

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/fe;->gVw:[I

    aput v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 167
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->cIs:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/fe;->gRX:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/fe;->cKz:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/storage/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/fe;->setCursor(Landroid/database/Cursor;)V

    .line 168
    iput v6, p0, Lcom/tencent/mm/ui/contact/fe;->gVA:I

    .line 169
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/fe;->aKn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iput v6, p0, Lcom/tencent/mm/ui/contact/fe;->dKE:I

    goto/16 :goto_0

    :cond_3
    move v0, v6

    .line 174
    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 176
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->gmO:Lcom/tencent/mm/ui/bd;

    if-eqz v0, :cond_7

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->gmO:Lcom/tencent/mm/ui/bd;

    invoke-interface {v0}, Lcom/tencent/mm/ui/bd;->FW()V

    .line 180
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/fe;->notifyDataSetChanged()V

    .line 181
    return-void
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/fe;->closeCursor()V

    .line 147
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/fe;->FZ()V

    .line 148
    return-void
.end method

.method public final VG()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    const-string v0, "MicroMsg.VoipAddressAdapter"

    const-string v1, "getSections"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKI:[Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p1, Lcom/tencent/mm/storage/i;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/storage/i;

    invoke-direct {p1}, Lcom/tencent/mm/storage/i;-><init>()V

    const-string v0, "MicroMsg.VoipAddressAdapter"

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
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/fe;->cKz:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->cKz:Ljava/util/List;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->cKz:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/w;->tL()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/fe;->cKz:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/fe;->ca(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public final aLa()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/tencent/mm/ui/contact/fe;->gVA:I

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/fe;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public final getPositionForSection(I)I
    .locals 1
    .parameter

    .prologue
    .line 103
    .line 104
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKH:[I

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKH:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->dKH:[I

    aget p1, v0, p1

    .line 107
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/contact/fe;->gVA:I

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

    const/4 v4, 0x0

    .line 213
    if-nez p2, :cond_0

    .line 217
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->context:Landroid/content/Context;

    const v1, 0x7f0300b9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 218
    new-instance v1, Lcom/tencent/mm/ui/contact/ff;

    invoke-direct {v1}, Lcom/tencent/mm/ui/contact/ff;-><init>()V

    .line 219
    const v0, 0x7f0a0078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/ff;->cMT:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f0a007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MaskLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/ff;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    .line 221
    const v0, 0x7f0a0083

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/ff;->cMU:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0a0080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/ff;->cMW:Landroid/widget/CheckBox;

    .line 223
    const v0, 0x7f0a0084

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/contact/ff;->dKL:Landroid/widget/TextView;

    .line 225
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 231
    :goto_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/fe;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 234
    if-nez v0, :cond_1

    const/4 v0, -0x1

    move v1, v0

    .line 235
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/contact/fe;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 237
    if-nez p1, :cond_2

    .line 238
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->cMT:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/contact/fe;->b(ILcom/tencent/mm/storage/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 250
    :goto_2
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/ff;->cMU:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->gVx:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 251
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->cMW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

    const-string v3, "@domain.android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 255
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/base/MaskLayout;->setVisibility(I)V

    .line 256
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->dKL:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :goto_4
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->cMU:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/ff;->cMU:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/fe;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/tencent/mm/ui/contact/ff;->cMU:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v3, v0, v2}, Lcom/tencent/mm/ao/b;->g(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-object p2

    .line 228
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/ff;

    move-object v2, v0

    goto :goto_0

    .line 234
    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/contact/fe;->a(ILcom/tencent/mm/storage/i;)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 241
    :cond_2
    if-lez p1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/contact/fe;->a(ILcom/tencent/mm/storage/i;)I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 242
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->cMT:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/contact/fe;->b(ILcom/tencent/mm/storage/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 246
    :cond_3
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->gVy:Landroid/content/res/ColorStateList;

    goto :goto_3

    .line 259
    :cond_5
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->cTU:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 260
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 261
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/ff;->dKL:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public final ih(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/fe;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/tencent/mm/ui/contact/fe;->cIs:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/fe;->closeCursor()V

    .line 80
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/fe;->FZ()V

    .line 81
    return-void

    .line 78
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
