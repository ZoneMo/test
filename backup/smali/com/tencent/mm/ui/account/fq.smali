.class public final Lcom/tencent/mm/ui/account/fq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private gsl:Lcom/tencent/mm/ui/base/dn;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    .line 53
    iput-object p1, p0, Lcom/tencent/mm/ui/account/fq;->context:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/tencent/mm/ui/base/dn;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/base/dn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    .line 55
    iput-object v1, p0, Lcom/tencent/mm/ui/account/fq;->text:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private mM(I)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fq;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/account/fq;->vY(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private vY(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fq;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/dn;->aHx()V

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/dn;->cc(J)V

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/dn;->setLevel(I)V

    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/dn;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iput-object p1, p0, Lcom/tencent/mm/ui/account/fq;->text:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/dn;->aHy()V

    goto :goto_0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/dn;->aHx()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/fq;->text:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public final p(Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_2

    .line 17
    :cond_0
    sget v2, Lcom/tencent/mm/n;->bEd:I

    iget-object v3, p0, Lcom/tencent/mm/ui/account/fq;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/account/fq;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/dn;->aHx()V

    iget-object v3, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ui/base/dn;->cc(J)V

    iget-object v3, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/base/dn;->setLevel(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/dn;->setText(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/account/fq;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/dn;->aHy()V

    .line 44
    :cond_1
    :goto_0
    return v0

    .line 20
    :cond_2
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->m(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 21
    sget v1, Lcom/tencent/mm/n;->bEb:I

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/account/fq;->mM(I)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-lez v2, :cond_7

    .line 25
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 26
    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->m(C)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_6

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_6

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->n(C)Z

    move-result v4

    if-nez v4, :cond_6

    .line 27
    invoke-static {v3}, Ljava/lang/Character;->isSpace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 30
    sget v1, Lcom/tencent/mm/n;->bEa:I

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/account/fq;->mM(I)V

    goto :goto_0

    .line 33
    :cond_4
    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->l(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 34
    sget v1, Lcom/tencent/mm/n;->bDY:I

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/account/fq;->mM(I)V

    goto :goto_0

    .line 37
    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/ui/account/fq;->context:Landroid/content/Context;

    sget v4, Lcom/tencent/mm/n;->bDZ:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/account/fq;->vY(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 40
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    if-eqz v0, :cond_8

    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fq;->gsl:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/dn;->aHx()V

    :cond_8
    move v0, v1

    .line 44
    goto :goto_0
.end method
