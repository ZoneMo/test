.class public final Lcom/tencent/mm/modelstat/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cyx:Lcom/tencent/mm/modelstat/b;

.field private final cyy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelstat/a;->cyx:Lcom/tencent/mm/modelstat/b;

    .line 25
    iput-object p1, p0, Lcom/tencent/mm/modelstat/a;->cyy:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final CM()Lcom/tencent/mm/modelstat/b;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 29
    iget-object v0, p0, Lcom/tencent/mm/modelstat/a;->cyx:Lcom/tencent/mm/modelstat/b;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/tencent/mm/modelstat/a;->cyx:Lcom/tencent/mm/modelstat/b;

    .line 46
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/modelstat/a;->cyy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mobileinfo.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v2, "readConfig file not exist :%s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v4, v3, v10

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/tencent/mm/modelstat/a;->cyx:Lcom/tencent/mm/modelstat/b;

    .line 35
    iget-object v0, p0, Lcom/tencent/mm/modelstat/a;->cyx:Lcom/tencent/mm/modelstat/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/modelstat/a;->cyx:Lcom/tencent/mm/modelstat/b;

    iget-boolean v0, v0, Lcom/tencent/mm/modelstat/b;->cyC:Z

    if-nez v0, :cond_4

    .line 36
    const-string v0, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v1, "checkInfo mobile info cache Read file succ."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/tencent/mm/modelstat/a;->cyx:Lcom/tencent/mm/modelstat/b;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v3, Lcom/tencent/mm/platformtools/i;

    invoke-direct {v3, v4}, Lcom/tencent/mm/platformtools/i;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/modelstat/b;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/b;-><init>()V

    const-string v5, "ispCode"

    invoke-virtual {v3, v5}, Lcom/tencent/mm/platformtools/i;->hL(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v5

    iput v5, v0, Lcom/tencent/mm/modelstat/b;->cyz:I

    const-string v5, "ispName"

    invoke-virtual {v3, v5}, Lcom/tencent/mm/platformtools/i;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/mm/modelstat/b;->ispName:Ljava/lang/String;

    const-string v5, "subType"

    invoke-virtual {v3, v5}, Lcom/tencent/mm/platformtools/i;->hL(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v5

    iput v5, v0, Lcom/tencent/mm/modelstat/b;->cyA:I

    const-string v5, "extraInfo"

    invoke-virtual {v3, v5}, Lcom/tencent/mm/platformtools/i;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/modelstat/b;->cyB:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const/16 v5, 0x271b

    sget v6, Lcom/tencent/mm/platformtools/at;->cHJ:I

    if-ne v5, v6, :cond_2

    sget v5, Lcom/tencent/mm/platformtools/at;->cHK:I

    if-lez v5, :cond_2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v2

    sget v5, Lcom/tencent/mm/platformtools/at;->cHK:I

    int-to-long v5, v5

    sub-long/2addr v2, v5

    const-string v5, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v6, "readConfig DK_TEST_MOBILEINFOFILE_MODTIME val:%d lm:%d"

    new-array v7, v11, [Ljava/lang/Object;

    sget v8, Lcom/tencent/mm/platformtools/at;->cHK:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput v10, Lcom/tencent/mm/platformtools/at;->cHK:I

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->N(J)J

    move-result-wide v5

    const-wide/32 v7, 0xf731400

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    const-string v5, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v6, "readConfig  diff:%d file:%s cache expired remove!"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->N(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v10

    aput-object v4, v7, v9

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v9, v0, Lcom/tencent/mm/modelstat/b;->cyC:Z

    :cond_3
    const-string v2, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v3, "readConfig MobileInfo subType:%d ispCode:%d ispName:%s extraInfo:%s expired:%b"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/tencent/mm/modelstat/b;->cyA:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    iget v6, v0, Lcom/tencent/mm/modelstat/b;->cyz:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, v0, Lcom/tencent/mm/modelstat/b;->ispName:Ljava/lang/String;

    aput-object v6, v5, v11

    iget-object v6, v0, Lcom/tencent/mm/modelstat/b;->cyB:Ljava/lang/String;

    aput-object v6, v5, v12

    const/4 v6, 0x4

    iget-boolean v7, v0, Lcom/tencent/mm/modelstat/b;->cyC:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 39
    :cond_4
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v0, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v2, "readInfoBySystem MMApplicationContext is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_2
    if-nez v1, :cond_9

    .line 41
    const-string v0, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v1, "readInfoBySystem failed , use old."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/modelstat/a;->cyx:Lcom/tencent/mm/modelstat/b;

    goto/16 :goto_0

    .line 39
    :cond_5
    const-string v0, "connectivity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_6

    const-string v0, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v2, "readInfoBySystem ConnectivityManager is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v2, "readInfoBySystem getActiveNetworkInfo is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v9, :cond_8

    const-string v0, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v2, "readInfoBySystem net type is wifi"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    new-instance v1, Lcom/tencent/mm/modelstat/b;

    invoke-direct {v1}, Lcom/tencent/mm/modelstat/b;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    iput v3, v1, Lcom/tencent/mm/modelstat/b;->cyA:I

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/ba;->bm(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lcom/tencent/mm/modelstat/b;->cyz:I

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/ba;->bn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/modelstat/b;->ispName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/modelstat/b;->cyB:Ljava/lang/String;

    const-string v0, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v2, "readInfoBySystem subType:%d ispCode:%d ispName:%s extraInfo:%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, v1, Lcom/tencent/mm/modelstat/b;->cyA:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v10

    iget v5, v1, Lcom/tencent/mm/modelstat/b;->cyz:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v9

    iget-object v5, v1, Lcom/tencent/mm/modelstat/b;->ispName:Ljava/lang/String;

    aput-object v5, v3, v11

    iget-object v5, v1, Lcom/tencent/mm/modelstat/b;->cyB:Ljava/lang/String;

    aput-object v5, v3, v12

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 44
    :cond_9
    iput-object v1, p0, Lcom/tencent/mm/modelstat/a;->cyx:Lcom/tencent/mm/modelstat/b;

    .line 45
    iget-object v0, p0, Lcom/tencent/mm/modelstat/a;->cyx:Lcom/tencent/mm/modelstat/b;

    if-nez v0, :cond_a

    const-string v0, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v1, "saveConfig info is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/modelstat/a;->cyx:Lcom/tencent/mm/modelstat/b;

    goto/16 :goto_0

    .line 45
    :cond_a
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "MicroMsg.MobileInfoStorage ReportDataFlow"

    const-string v1, "saveConfig path is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    new-instance v1, Lcom/tencent/mm/platformtools/i;

    invoke-direct {v1, v4}, Lcom/tencent/mm/platformtools/i;-><init>(Ljava/lang/String;)V

    const-string v2, "ispCode"

    iget v3, v0, Lcom/tencent/mm/modelstat/b;->cyz:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/platformtools/i;->x(Ljava/lang/String;I)Z

    const-string v2, "ispName"

    iget-object v3, v0, Lcom/tencent/mm/modelstat/b;->ispName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/platformtools/i;->N(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "subType"

    iget v3, v0, Lcom/tencent/mm/modelstat/b;->cyA:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/platformtools/i;->x(Ljava/lang/String;I)Z

    const-string v2, "extraInfo"

    iget-object v0, v0, Lcom/tencent/mm/modelstat/b;->cyB:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/platformtools/i;->N(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3
.end method
