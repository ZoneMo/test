.class public final Lcom/tencent/mm/storage/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bLN:I

.field private bTN:I

.field private bTY:Ljava/lang/String;

.field private bTZ:Ljava/lang/String;

.field private bUa:Ljava/lang/String;

.field private bUf:Ljava/lang/String;

.field private bUg:Ljava/lang/String;

.field private cif:Ljava/lang/String;

.field private crH:Ljava/lang/String;

.field private crI:Ljava/lang/String;

.field private crJ:Ljava/lang/String;

.field private crM:Ljava/lang/String;

.field private diH:Ljava/lang/String;

.field private frH:Ljava/lang/String;

.field private ghJ:Ljava/lang/String;

.field private ghK:I

.field private ghL:Ljava/lang/String;

.field private ghM:Ljava/lang/String;

.field private ghN:J

.field private ghO:I

.field private ghP:Ljava/lang/String;

.field private ghQ:Ljava/lang/String;

.field private ghR:Ljava/lang/String;

.field private wN:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->ghJ:Ljava/lang/String;

    .line 580
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->crH:Ljava/lang/String;

    .line 581
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->wN:Ljava/lang/String;

    .line 582
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->cif:Ljava/lang/String;

    .line 583
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->crI:Ljava/lang/String;

    .line 584
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->diH:Ljava/lang/String;

    .line 585
    iput v2, p0, Lcom/tencent/mm/storage/al;->ghK:I

    .line 586
    iput v2, p0, Lcom/tencent/mm/storage/al;->bLN:I

    .line 587
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->ghL:Ljava/lang/String;

    .line 588
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->ghM:Ljava/lang/String;

    .line 589
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/storage/al;->ghN:J

    .line 590
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->crJ:Ljava/lang/String;

    .line 591
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->crM:Ljava/lang/String;

    .line 596
    iput v2, p0, Lcom/tencent/mm/storage/al;->ghO:I

    .line 597
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->bUf:Ljava/lang/String;

    .line 598
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->ghP:Ljava/lang/String;

    .line 599
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->bUg:Ljava/lang/String;

    .line 600
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->ghQ:Ljava/lang/String;

    .line 601
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->ghR:Ljava/lang/String;

    .line 602
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->frH:Ljava/lang/String;

    .line 605
    return-void
.end method

.method public static uQ(Ljava/lang/String;)Lcom/tencent/mm/storage/al;
    .locals 6
    .parameter

    .prologue
    .line 608
    new-instance v1, Lcom/tencent/mm/storage/al;

    invoke-direct {v1}, Lcom/tencent/mm/storage/al;-><init>()V

    .line 610
    const-string v0, "msg"

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 611
    if-eqz v2, :cond_2

    .line 614
    :try_start_0
    const-string v0, ".msg.$fromusername"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 615
    const-string v0, ".msg.$username"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->ghJ:Ljava/lang/String;

    .line 619
    :goto_0
    const-string v0, ".msg.$fromnickname"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 620
    const-string v0, ".msg.$nickname"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->crH:Ljava/lang/String;

    .line 624
    :goto_1
    const-string v0, ".msg.$alias"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->wN:Ljava/lang/String;

    .line 625
    const-string v0, ".msg.$fullpy"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->cif:Ljava/lang/String;

    .line 626
    const-string v0, ".msg.$shortpy"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->crI:Ljava/lang/String;

    .line 627
    const-string v0, ".msg.$source"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->diH:Ljava/lang/String;

    .line 628
    const-string v0, ".msg.$imagestatus"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/mm/storage/al;->ghK:I

    .line 629
    const-string v0, ".msg.$scene"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/mm/storage/al;->bLN:I

    .line 630
    const-string v0, ".msg.$mobileidentify"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->ghL:Ljava/lang/String;

    .line 631
    const-string v0, ".msg.$mobilelongidentify"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->ghM:Ljava/lang/String;

    .line 632
    const-string v0, ".msg.$qqnum"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ".msg.$qqnum"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 633
    const-string v0, ".msg.$qqnum"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/mm/storage/al;->ghN:J

    .line 635
    :cond_0
    const-string v0, ".msg.$sign"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->bTY:Ljava/lang/String;

    .line 636
    const-string v0, ".msg.$sex"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ".msg.$sex"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 637
    const-string v0, ".msg.$sex"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/mm/storage/al;->bTN:I

    .line 639
    :cond_1
    const-string v0, ".msg.$city"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->bUa:Ljava/lang/String;

    .line 640
    const-string v0, ".msg.$province"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->bTZ:Ljava/lang/String;

    .line 642
    const-string v0, ".msg.$qqnickname"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->crJ:Ljava/lang/String;

    .line 643
    const-string v0, ".msg.$qqremark"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->crM:Ljava/lang/String;

    .line 645
    const-string v0, ".msg.$certflag"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "0"

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/mm/storage/al;->ghO:I

    .line 646
    const-string v0, ".msg.$certinfo"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->bUf:Ljava/lang/String;

    .line 647
    const-string v0, ".msg.$brandIconUrl"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->ghP:Ljava/lang/String;

    .line 649
    const-string v0, ".msg.$regionCode"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->bUg:Ljava/lang/String;

    .line 651
    const-string v0, ".msg.$bigheadimgurl"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->ghQ:Ljava/lang/String;

    .line 652
    const-string v0, ".msg.$smallheadimgurl"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->ghR:Ljava/lang/String;

    .line 653
    const-string v0, ".msg.$googlecontact"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->frH:Ljava/lang/String;

    .line 654
    const-string v0, "MicroMsg.MsgInfo"

    const-string v2, "dkavatar FriendContent user:[%s] big:[%s] sm:[%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/tencent/mm/storage/al;->ghJ:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/tencent/mm/storage/al;->ghQ:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v1, Lcom/tencent/mm/storage/al;->ghR:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    :cond_2
    :goto_3
    return-object v1

    .line 617
    :cond_3
    const-string v0, ".msg.$fromusername"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->ghJ:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    .line 622
    :cond_4
    const-string v0, ".msg.$fromnickname"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/al;->crH:Ljava/lang/String;

    goto/16 :goto_1

    .line 645
    :cond_5
    const-string v0, ".msg.$certflag"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public final Ah()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crJ:Ljava/lang/String;

    return-object v0
.end method

.method public final Ai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crM:Ljava/lang/String;

    return-object v0
.end method

.method public final Gf()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/tencent/mm/storage/al;->bLN:I

    return v0
.end method

.method public final aCA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->ghP:Ljava/lang/String;

    return-object v0
.end method

.method public final aCB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->frH:Ljava/lang/String;

    return-object v0
.end method

.method public final aCs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->ghQ:Ljava/lang/String;

    return-object v0
.end method

.method public final aCt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->ghR:Ljava/lang/String;

    return-object v0
.end method

.method public final aCu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->ghJ:Ljava/lang/String;

    return-object v0
.end method

.method public final aCv()I
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Lcom/tencent/mm/storage/al;->ghK:I

    return v0
.end method

.method public final aCw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->ghL:Ljava/lang/String;

    return-object v0
.end method

.method public final aCx()J
    .locals 2

    .prologue
    .line 767
    iget-wide v0, p0, Lcom/tencent/mm/storage/al;->ghN:J

    return-wide v0
.end method

.method public final aCy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crM:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crM:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crM:Ljava/lang/String;

    .line 799
    :goto_0
    return-object v0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crJ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crJ:Ljava/lang/String;

    goto :goto_0

    .line 799
    :cond_1
    iget-wide v0, p0, Lcom/tencent/mm/storage/al;->ghN:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final aCz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->ghM:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crH:Ljava/lang/String;

    .line 715
    :goto_0
    return-object v0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->wN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->wN:Ljava/lang/String;

    goto :goto_0

    .line 713
    :cond_1
    const-string v0, "MicroMsg.MsgInfo"

    const-string v1, "username is nullOrNil"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->ghJ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final kn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crH:Ljava/lang/String;

    return-object v0
.end method

.method public final rB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->bTY:Ljava/lang/String;

    return-object v0
.end method

.method public final rC()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 831
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->bUg:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->bUg:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 833
    array-length v1, v0

    if-lez v1, :cond_0

    .line 834
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/tencent/mm/storage/RegionCodeDecoder;->vw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    aget-object v1, v0, v3

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->bTZ:Ljava/lang/String;

    .line 841
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->bTZ:Ljava/lang/String;

    return-object v0

    .line 837
    :cond_1
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/tencent/mm/storage/RegionCodeDecoder;->vy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->bTZ:Ljava/lang/String;

    goto :goto_0
.end method

.method public final rD()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 811
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->bUg:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->bUg:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 813
    array-length v1, v0

    if-lez v1, :cond_0

    .line 814
    array-length v1, v0

    if-le v1, v3, :cond_1

    .line 815
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    aget-object v1, v0, v2

    aget-object v2, v0, v4

    aget-object v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/tencent/mm/storage/RegionCodeDecoder;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->bUa:Ljava/lang/String;

    .line 823
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->bUa:Ljava/lang/String;

    return-object v0

    .line 816
    :cond_1
    array-length v1, v0

    if-ne v1, v3, :cond_2

    .line 817
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    aget-object v1, v0, v2

    aget-object v0, v0, v4

    invoke-static {v1, v0}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->bUa:Ljava/lang/String;

    goto :goto_0

    .line 819
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/al;->bUa:Ljava/lang/String;

    goto :goto_0
.end method

.method public final rJ()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/tencent/mm/storage/al;->ghO:I

    return v0
.end method

.method public final rK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->bUf:Ljava/lang/String;

    return-object v0
.end method

.method public final rk()I
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lcom/tencent/mm/storage/al;->bTN:I

    return v0
.end method

.method public final rn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->crI:Ljava/lang/String;

    return-object v0
.end method

.method public final ro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->cif:Ljava/lang/String;

    return-object v0
.end method

.method public final rp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/tencent/mm/storage/al;->wN:Ljava/lang/String;

    return-object v0
.end method
