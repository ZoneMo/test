.class public final Lcom/tencent/mm/storage/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bPb:I

.field private dto:D

.field private dtp:D

.field private dzw:Ljava/lang/String;

.field private ghJ:Ljava/lang/String;

.field private ghS:Ljava/lang/String;

.field private ghT:Ljava/lang/String;

.field private ghU:Ljava/lang/String;

.field private ghV:Ljava/lang/String;

.field private ghW:Ljava/lang/String;

.field private label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/am;->ghJ:Ljava/lang/String;

    .line 924
    iput-wide v2, p0, Lcom/tencent/mm/storage/am;->dto:D

    .line 925
    iput-wide v2, p0, Lcom/tencent/mm/storage/am;->dtp:D

    .line 926
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/storage/am;->bPb:I

    .line 927
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/am;->label:Ljava/lang/String;

    .line 928
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/am;->dzw:Ljava/lang/String;

    .line 929
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/am;->ghS:Ljava/lang/String;

    .line 930
    iput-object v1, p0, Lcom/tencent/mm/storage/am;->ghT:Ljava/lang/String;

    .line 931
    iput-object v1, p0, Lcom/tencent/mm/storage/am;->ghU:Ljava/lang/String;

    .line 932
    iput-object v1, p0, Lcom/tencent/mm/storage/am;->ghV:Ljava/lang/String;

    .line 933
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/am;->ghW:Ljava/lang/String;

    .line 937
    return-void
.end method

.method public static uR(Ljava/lang/String;)Lcom/tencent/mm/storage/am;
    .locals 5
    .parameter

    .prologue
    .line 948
    new-instance v1, Lcom/tencent/mm/storage/am;

    invoke-direct {v1}, Lcom/tencent/mm/storage/am;-><init>()V

    .line 949
    const-string v0, "msg"

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 951
    if-eqz v2, :cond_0

    .line 952
    const-string v0, ".msg.location.$fromusername"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/am;->ghJ:Ljava/lang/String;

    .line 953
    const-string v0, ".msg.location.$x"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sW(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/mm/storage/am;->dto:D

    .line 954
    const-string v0, ".msg.location.$y"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sW(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/mm/storage/am;->dtp:D

    .line 955
    const-string v0, ".msg.location.$label"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/am;->label:Ljava/lang/String;

    .line 956
    const-string v0, ".msg.location.$maptype"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/am;->ghS:Ljava/lang/String;

    .line 957
    const-string v0, ".msg.location.$scale"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/mm/storage/am;->bPb:I

    .line 958
    const-string v0, ".msg.location.$localLocationen"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/am;->ghV:Ljava/lang/String;

    .line 959
    const-string v0, ".msg.location.$localLocationcn"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/am;->ghT:Ljava/lang/String;

    .line 960
    const-string v0, ".msg.location.$localLocationtw"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/am;->ghU:Ljava/lang/String;

    .line 961
    const-string v0, ".msg.location.$poiname"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/am;->dzw:Ljava/lang/String;

    .line 962
    const-string v0, ".msg.location.$infourl"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/am;->ghW:Ljava/lang/String;

    .line 964
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final aCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/tencent/mm/storage/am;->dzw:Ljava/lang/String;

    return-object v0
.end method

.method public final aCD()Z
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/tencent/mm/storage/am;->dzw:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storage/am;->dzw:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final aCE()D
    .locals 2

    .prologue
    .line 1006
    iget-wide v0, p0, Lcom/tencent/mm/storage/am;->dto:D

    return-wide v0
.end method

.method public final aCF()D
    .locals 2

    .prologue
    .line 1014
    iget-wide v0, p0, Lcom/tencent/mm/storage/am;->dtp:D

    return-wide v0
.end method

.method public final aCG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/tencent/mm/storage/am;->ghW:Ljava/lang/String;

    return-object v0
.end method

.method public final axF()I
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Lcom/tencent/mm/storage/am;->bPb:I

    return v0
.end method

.method public final e(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 973
    iget-object v0, p0, Lcom/tencent/mm/storage/am;->ghV:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/storage/am;->ghV:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/am;->ghV:Ljava/lang/String;

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/storage/am;->ghU:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/storage/am;->ghU:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 977
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/am;->ghV:Ljava/lang/String;

    .line 979
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/storage/am;->ghT:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/storage/am;->ghT:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 980
    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/am;->ghT:Ljava/lang/String;

    .line 983
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/storage/am;->ghJ:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/storage/am;->ghJ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 984
    :cond_6
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/am;->ghJ:Ljava/lang/String;

    .line 986
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/storage/am;->label:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/storage/am;->label:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 987
    :cond_8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/am;->label:Ljava/lang/String;

    .line 990
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/storage/am;->ghS:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/storage/am;->ghS:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 991
    :cond_a
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/am;->ghS:Ljava/lang/String;

    .line 995
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<msg><location x=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tencent/mm/storage/am;->dto:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" y=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/storage/am;->dtp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" scale=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/storage/am;->bPb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" label=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/storage/am;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" maptype=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/storage/am;->ghS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"  fromusername=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/storage/am;->ghJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" /></msg>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    if-eqz p1, :cond_c

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    :cond_c
    return-object v0
.end method

.method public final kI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/tencent/mm/storage/am;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final uS(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/tencent/mm/storage/am;->label:Ljava/lang/String;

    .line 1035
    return-void
.end method
