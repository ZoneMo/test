.class public final Lcom/tencent/mm/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fc:Ljava/lang/Object;

.field public gkR:I

.field public gkS:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    .line 603
    iput p2, p0, Lcom/tencent/mm/ui/l;->gkR:I

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/l;->gkS:Ljava/lang/Object;

    .line 605
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 619
    if-ne p0, p1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v0

    .line 621
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 622
    goto :goto_0

    .line 623
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 624
    goto :goto_0

    .line 625
    :cond_3
    check-cast p1, Lcom/tencent/mm/ui/l;

    .line 626
    iget v2, p0, Lcom/tencent/mm/ui/l;->gkR:I

    iget v3, p1, Lcom/tencent/mm/ui/l;->gkR:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 627
    goto :goto_0

    .line 628
    :cond_4
    iget-object v2, p0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    if-nez v2, :cond_5

    .line 629
    iget-object v2, p1, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 630
    goto :goto_0

    .line 631
    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    iget-object v3, p1, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 632
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 609
    iget v0, p0, Lcom/tencent/mm/ui/l;->gkR:I

    add-int/lit8 v0, v0, 0x1f

    .line 612
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 614
    return v0

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
