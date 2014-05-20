.class public final Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static fih:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->fih:Ljava/util/Set;

    .line 75
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "off_line_download_ids"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    :try_start_0
    sget-object v1, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->fih:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "MicroMsg.FileDownloadManger"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parse download task failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 541
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)J
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v0, -0x2

    .line 545
    const-string v2, "MicroMsg.FileDownloadManger"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " downloadUrl: ["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] downloadFileName: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] downloadKey : ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] md5: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    const-string v2, "MicroMsg.FileDownloadManger"

    const-string v3, "md5 should not null"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :goto_0
    return-wide v0

    .line 550
    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    const-string v2, "MicroMsg.FileDownloadManger"

    const-string v3, "download url is null"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 555
    const-string v2, "MicroMsg.FileDownloadManger"

    const-string v3, "download fileaName is null"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_2
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/m;->aqu()Lcom/tencent/mm/pluginsdk/model/downloader/l;

    move-result-object v3

    .line 560
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "https"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    move-object v2, v4

    .line 561
    :goto_1
    if-eqz v2, :cond_d

    .line 562
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 563
    invoke-interface {v2, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->gR(Ljava/lang/String;)V

    .line 565
    :cond_4
    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 566
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->setKey(Ljava/lang/String;)V

    .line 570
    :goto_2
    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 571
    invoke-interface {v2, p3}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->qx(Ljava/lang/String;)V

    .line 573
    :cond_5
    invoke-interface {v2, p4}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->kc(I)V

    .line 574
    invoke-interface {v2, p5}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->cd(Z)V

    .line 575
    invoke-interface {v2, p6}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->ce(Z)V

    .line 576
    invoke-interface {v2, p7}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->qy(Ljava/lang/String;)V

    .line 578
    invoke-interface {v3, v2}, Lcom/tencent/mm/pluginsdk/model/downloader/l;->a(Lcom/tencent/mm/pluginsdk/model/downloader/k;)J

    move-result-wide v2

    .line 579
    const-wide/16 v5, -0x4

    cmp-long v5, v2, v5

    if-nez v5, :cond_c

    .line 580
    const-string v2, "MicroMsg.FileDownloadManger"

    const-string v3, "add task by system downloadmanager failed, change to download the file by browser"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/m;->aqv()Lcom/tencent/mm/pluginsdk/model/downloader/l;

    move-result-object v3

    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "http"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "https"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_6
    move-object v2, v4

    :goto_3
    if-nez v2, :cond_b

    const-string v2, "MicroMsg.FileDownloadManger"

    const-string v3, "get download request failed, download url is null or not a http or https url"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v2, v5, :cond_8

    new-instance v2, Lcom/tencent/mm/pluginsdk/model/downloader/g;

    invoke-direct {v2, p0}, Lcom/tencent/mm/pluginsdk/model/downloader/g;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance v2, Lcom/tencent/mm/pluginsdk/model/downloader/h;

    invoke-direct {v2, p0}, Lcom/tencent/mm/pluginsdk/model/downloader/h;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 568
    :cond_9
    invoke-interface {v2, p2}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->setKey(Ljava/lang/String;)V

    goto :goto_2

    .line 581
    :cond_a
    new-instance v2, Lcom/tencent/mm/pluginsdk/model/downloader/h;

    invoke-direct {v2, p0}, Lcom/tencent/mm/pluginsdk/model/downloader/h;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-interface {v3, v2}, Lcom/tencent/mm/pluginsdk/model/downloader/l;->a(Lcom/tencent/mm/pluginsdk/model/downloader/k;)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_c
    move-wide v0, v2

    .line 583
    goto/16 :goto_0

    .line 585
    :cond_d
    const-string v2, "MicroMsg.FileDownloadManger"

    const-string v3, "get download request failed, download url is null or not a http or https url"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(JLcom/tencent/mm/pluginsdk/model/downloader/c;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 620
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    :cond_0
    const-string v0, "MicroMsg.FileDownloadManger"

    const-string v1, "no user login, wait next login"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, " "

    const-string v1, " "

    invoke-interface {p2, v0, v1, v7}, Lcom/tencent/mm/pluginsdk/model/downloader/c;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 658
    :cond_1
    :goto_0
    return-void

    .line 626
    :cond_2
    if-nez p2, :cond_3

    .line 627
    const-string v0, "MicroMsg.FileDownloadManger"

    const-string v1, "callback should no null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_3
    invoke-static {p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->by(J)Lcom/tencent/mm/storage/ah;

    move-result-object v1

    .line 631
    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->a(Lcom/tencent/mm/storage/ah;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 632
    const-string v0, "MicroMsg.FileDownloadManger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get saved downloaditem failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-wide v2, v1, Lcom/tencent/mm/storage/ah;->field_downloadId:J

    invoke-static {v2, v3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->bA(J)I

    .line 634
    if-eqz p2, :cond_1

    .line 635
    iget-object v0, v1, Lcom/tencent/mm/storage/ah;->field_md5:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p2, v0, v1, v6}, Lcom/tencent/mm/pluginsdk/model/downloader/c;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 640
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 642
    const-string v2, "MicroMsg.FileDownloadManger"

    const-string v3, "file not exists:[%s], check the download uri"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    iget-object v2, v1, Lcom/tencent/mm/storage/ah;->field_filePathFromURI:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 645
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/tencent/mm/storage/ah;->field_filePathFromURI:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 649
    const-string v0, "MicroMsg.FileDownloadManger"

    const-string v2, "file not esists:[%s] from downloadurl"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/tencent/mm/storage/ah;->field_downloadUrl:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    if-eqz p2, :cond_1

    .line 651
    iget-object v0, v1, Lcom/tencent/mm/storage/ah;->field_md5:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p2, v0, v1, v6}, Lcom/tencent/mm/pluginsdk/model/downloader/c;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 657
    :cond_6
    iget-object v1, v1, Lcom/tencent/mm/storage/ah;->field_md5:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-interface {p2, v1, v0, v6}, Lcom/tencent/mm/pluginsdk/model/downloader/c;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    new-instance v2, Lcom/tencent/mm/pluginsdk/model/downloader/a;

    invoke-direct {v2, v1, p2, v0}, Lcom/tencent/mm/pluginsdk/model/downloader/a;-><init>(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/model/downloader/c;Ljava/io/File;)V

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/tencent/mm/pluginsdk/model/downloader/k;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    const-string v0, "MicroMsg.FileDownloadManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no user login, wait next login to deal this download :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 384
    :cond_1
    if-nez p0, :cond_2

    .line 385
    const-string v0, "MicroMsg.FileDownloadManger"

    const-string v1, "updateDownloadStatus failed: request is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/storage/ai;->by(J)Lcom/tencent/mm/storage/ah;

    move-result-object v0

    .line 390
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->g(Landroid/content/Context;J)Lcom/tencent/mm/pluginsdk/model/downloader/e;

    move-result-object v3

    .line 392
    if-nez v0, :cond_6

    .line 393
    new-instance v4, Lcom/tencent/mm/storage/ah;

    invoke-direct {v4}, Lcom/tencent/mm/storage/ah;-><init>()V

    .line 394
    iput-wide p1, v4, Lcom/tencent/mm/storage/ah;->field_downloadId:J

    .line 395
    invoke-interface {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/mm/storage/ah;->field_downloadKey:Ljava/lang/String;

    .line 396
    invoke-interface {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    .line 397
    invoke-interface {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->aqn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    .line 398
    iput v2, v4, Lcom/tencent/mm/storage/ah;->field_isNotified:I

    .line 399
    invoke-interface {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->aqp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/mm/storage/ah;->field_md5:Ljava/lang/String;

    .line 400
    invoke-interface {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->aqo()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/mm/storage/ah;->field_downloadUrl:Ljava/lang/String;

    .line 401
    iput v5, v4, Lcom/tencent/mm/storage/ah;->field_status:I

    .line 402
    invoke-interface {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->aqq()I

    move-result v0

    iput v0, v4, Lcom/tencent/mm/storage/ah;->field_source:I

    .line 403
    invoke-interface {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->aqr()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, v4, Lcom/tencent/mm/storage/ah;->field_autoInstall:I

    .line 404
    invoke-interface {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->aqs()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iput v2, v4, Lcom/tencent/mm/storage/ah;->field_isGameFile:I

    .line 405
    invoke-interface {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->aqt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/mm/storage/ah;->field_fromAppId:Ljava/lang/String;

    .line 407
    iget-object v0, v3, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 408
    iget-object v0, v3, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/mm/storage/ah;->field_filePathFromURI:Ljava/lang/String;

    .line 412
    :goto_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ai;->b(Lcom/tencent/mm/sdk/e/ad;)Z

    move-result v0

    .line 413
    const-string v1, "MicroMsg.FileDownloadManger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert downloadinfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", status=2, savePath:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->aqn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 403
    goto :goto_1

    :cond_4
    move v2, v1

    .line 404
    goto :goto_2

    .line 410
    :cond_5
    const-string v0, "MicroMsg.FileDownloadManger"

    const-string v1, "query download uri is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 415
    :cond_6
    iput v5, v0, Lcom/tencent/mm/storage/ah;->field_status:I

    .line 416
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/storage/ai;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    move-result v0

    .line 417
    const-string v1, "MicroMsg.FileDownloadManger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update downloadinfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", status=2, savePath:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/k;->aqn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/tencent/mm/pluginsdk/model/downloader/n;)V
    .locals 1
    .parameter

    .prologue
    .line 501
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/m;->aqu()Lcom/tencent/mm/pluginsdk/model/downloader/l;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/model/downloader/l;->d(Lcom/tencent/mm/pluginsdk/model/downloader/n;)V

    .line 502
    return-void
.end method

.method private static a(Lcom/tencent/mm/storage/ah;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 242
    if-nez p0, :cond_1

    .line 243
    const-string v1, "MicroMsg.FileDownloadManger"

    const-string v2, "filedownload info is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    const-string v2, "MicroMsg.FileDownloadManger"

    const-string v3, "file exist:field_filePath [%s]"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 249
    goto :goto_0

    .line 252
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/storage/ah;->field_filePathFromURI:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/storage/ah;->field_filePathFromURI:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    const-string v2, "MicroMsg.FileDownloadManger"

    const-string v3, "file exist:field_filePathFromURI [%s]"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/storage/ah;->field_filePathFromURI:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 254
    goto :goto_0
.end method

.method public static aX(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ai;->aBQ()Landroid/database/Cursor;

    move-result-object v2

    .line 313
    if-nez v2, :cond_0

    move-object v0, v1

    .line 375
    :goto_0
    return-object v0

    .line 316
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    :cond_1
    new-instance v3, Lcom/tencent/mm/storage/ah;

    invoke-direct {v3}, Lcom/tencent/mm/storage/ah;-><init>()V

    .line 319
    invoke-virtual {v3, v2}, Lcom/tencent/mm/storage/ah;->convertFrom(Landroid/database/Cursor;)V

    .line 320
    const/4 v0, 0x0

    .line 321
    iget-object v4, v3, Lcom/tencent/mm/storage/ah;->field_downloadKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/tencent/mm/storage/ah;->field_downloadKey:Ljava/lang/String;

    const-string v5, "wx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 322
    iget-object v4, v3, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 323
    :cond_2
    iget-object v4, v3, Lcom/tencent/mm/storage/ah;->field_filePathFromURI:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    iget-wide v4, v3, Lcom/tencent/mm/storage/ah;->field_downloadId:J

    invoke-static {p0, v4, v5}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->g(Landroid/content/Context;J)Lcom/tencent/mm/pluginsdk/model/downloader/e;

    move-result-object v0

    .line 325
    iget-object v4, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 326
    iget-object v4, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/storage/ah;->field_filePathFromURI:Ljava/lang/String;

    .line 327
    const-string v4, "MicroMsg.FileDownloadManger"

    const-string v5, "get download successful task: [%s]"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v3, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lcom/tencent/mm/storage/ai;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    .line 329
    const-string v4, "MicroMsg.FileDownloadManger"

    const-string v5, "update local downloadinfo filepath from uri:[%s]"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_3
    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->a(Lcom/tencent/mm/storage/ah;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 335
    if-nez v0, :cond_4

    .line 336
    iget-wide v4, v3, Lcom/tencent/mm/storage/ah;->field_downloadId:J

    invoke-static {p0, v4, v5}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->g(Landroid/content/Context;J)Lcom/tencent/mm/pluginsdk/model/downloader/e;

    move-result-object v0

    .line 338
    :cond_4
    const-string v4, "MicroMsg.FileDownloadManger"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "download filepath is null or file not exist"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget v0, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    if-nez v0, :cond_5

    .line 340
    const-string v0, "MicroMsg.FileDownloadManger"

    const-string v4, "query from content provider download task has been deleted, delete this task, wait another download: [%s]"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v0, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/ai;->b(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    .line 370
    :cond_5
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    :cond_6
    if-eqz v2, :cond_7

    .line 373
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v1

    .line 375
    goto/16 :goto_0

    .line 346
    :cond_8
    iget v4, v3, Lcom/tencent/mm/storage/ah;->field_status:I

    if-ne v4, v10, :cond_9

    .line 347
    iget-object v0, v3, Lcom/tencent/mm/storage/ah;->field_downloadKey:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 348
    iget-object v0, v3, Lcom/tencent/mm/storage/ah;->field_downloadKey:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    :cond_9
    if-nez v0, :cond_a

    .line 353
    iget-wide v4, v3, Lcom/tencent/mm/storage/ah;->field_downloadId:J

    invoke-static {p0, v4, v5}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->g(Landroid/content/Context;J)Lcom/tencent/mm/pluginsdk/model/downloader/e;

    move-result-object v0

    .line 356
    :cond_a
    iget v4, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    if-ne v4, v10, :cond_c

    .line 357
    iget-object v0, v3, Lcom/tencent/mm/storage/ah;->field_downloadKey:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 358
    iget-object v0, v3, Lcom/tencent/mm/storage/ah;->field_downloadKey:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_b
    iput v10, v3, Lcom/tencent/mm/storage/ah;->field_status:I

    .line 361
    const-string v0, "MicroMsg.FileDownloadManger"

    const-string v4, "get download successful task: [%s]"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v0, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/ai;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    goto :goto_1

    .line 363
    :cond_c
    iget v4, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_d

    iget v4, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    if-nez v4, :cond_e

    .line 364
    :cond_d
    const-string v0, "MicroMsg.FileDownloadManger"

    const-string v4, "douwnload task failed, delete this task, wait another download: [%s]"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v0, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/ai;->b(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    goto :goto_1

    .line 367
    :cond_e
    const-string v3, "MicroMsg.FileDownloadManger"

    const-string v4, "download from content provider status:[%d]"

    new-array v5, v9, [Ljava/lang/Object;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method static synthetic aqm()Ljava/util/Set;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->fih:Ljava/util/Set;

    return-object v0
.end method

.method public static b(Lcom/tencent/mm/pluginsdk/model/downloader/n;)V
    .locals 1
    .parameter

    .prologue
    .line 505
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/m;->aqu()Lcom/tencent/mm/pluginsdk/model/downloader/l;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/model/downloader/l;->c(Lcom/tencent/mm/pluginsdk/model/downloader/n;)V

    .line 506
    return-void
.end method

.method public static bA(J)I
    .locals 3
    .parameter

    .prologue
    .line 601
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 602
    const-string v0, "MicroMsg.FileDownloadManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invaild downloadid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const/4 v0, -0x1

    .line 607
    :goto_0
    return v0

    .line 606
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/m;->aqu()Lcom/tencent/mm/pluginsdk/model/downloader/l;

    move-result-object v0

    .line 607
    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/l;->bA(J)I

    move-result v0

    goto :goto_0
.end method

.method public static bw(J)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 260
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_1

    .line 261
    const-string v1, "MicroMsg.FileDownloadManger"

    const-string v2, "download id is not avaiable"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    sget-object v2, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->fih:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    const-string v2, "MicroMsg.FileDownloadManger"

    const-string v3, "offline download task:[%d]"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->g(Landroid/content/Context;J)Lcom/tencent/mm/pluginsdk/model/downloader/e;

    move-result-object v2

    .line 269
    iget-object v2, v2, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    const-string v3, "MicroMsg.FileDownloadManger"

    const-string v4, "file exist:[%s]"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 272
    goto :goto_0

    .line 277
    :cond_2
    invoke-static {p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->by(J)Lcom/tencent/mm/storage/ah;

    move-result-object v0

    .line 278
    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->a(Lcom/tencent/mm/storage/ah;)Z

    move-result v0

    goto :goto_0
.end method

.method public static bx(J)V
    .locals 4
    .parameter

    .prologue
    .line 441
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    const-string v0, "MicroMsg.FileDownloadManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no user login, wait next login to deal this download :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nofity: 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/storage/ai;->by(J)Lcom/tencent/mm/storage/ah;

    move-result-object v0

    .line 447
    if-nez v0, :cond_2

    .line 448
    const-string v0, "MicroMsg.FileDownloadManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query download info failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_2
    const/16 v1, 0x8

    iput v1, v0, Lcom/tencent/mm/storage/ah;->field_status:I

    .line 451
    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/storage/ah;->field_isNotified:I

    .line 452
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/storage/ai;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    move-result v0

    .line 453
    const-string v1, "MicroMsg.FileDownloadManger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update downloadinfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", status=8, notify: 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static by(J)Lcom/tencent/mm/storage/ah;
    .locals 2
    .parameter

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 459
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/storage/ai;->by(J)Lcom/tencent/mm/storage/ah;

    move-result-object v0

    .line 462
    :cond_0
    if-nez v0, :cond_1

    .line 463
    new-instance v0, Lcom/tencent/mm/storage/ah;

    invoke-direct {v0}, Lcom/tencent/mm/storage/ah;-><init>()V

    .line 465
    :cond_1
    return-object v0
.end method

.method public static bz(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 483
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    const-string v0, "MicroMsg.FileDownloadManger"

    const-string v1, "account not ready, ignore delte download file: [%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/storage/ai;->by(J)Lcom/tencent/mm/storage/ah;

    move-result-object v0

    .line 488
    if-nez v0, :cond_2

    .line 489
    const-string v0, "MicroMsg.FileDownloadManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no task added or has been deleted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_2
    iget-object v1, v0, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 494
    iget-object v1, v0, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 497
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/storage/ai;->b(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 528
    invoke-static {p1, p2, p3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 529
    const-string v2, "MicroMsg.FileDownloadManger"

    const-string v3, "add download task with out login:[%d]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 531
    sget-object v2, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->fih:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 532
    const-string v2, "off_line_download_ids"

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 534
    :cond_0
    return-wide v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 513
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g(Landroid/content/Context;J)Lcom/tencent/mm/pluginsdk/model/downloader/e;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 680
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/model/downloader/e;-><init>()V

    .line 681
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 682
    iput v10, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    .line 693
    :goto_0
    return-object v0

    .line 685
    :cond_0
    new-instance v1, Lcom/tencent/mm/pluginsdk/model/downloader/d;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/model/downloader/d;-><init>(Landroid/content/Context;)V

    .line 686
    invoke-virtual {v1, p1, p2}, Lcom/tencent/mm/pluginsdk/model/downloader/d;->bB(J)Landroid/database/Cursor;

    move-result-object v2

    .line 687
    if-nez v2, :cond_1

    .line 688
    iput v11, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    goto :goto_0

    .line 691
    :cond_1
    if-nez v2, :cond_2

    const-string v1, "MicroMsg.FileDownloadManger"

    const-string v2, "query download status failed: cursor is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "status"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v3, "local_uri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "reason"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "bytes_so_far"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "total_size"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-eq v1, v10, :cond_3

    :try_start_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    :cond_3
    if-eq v3, v10, :cond_4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "MicroMsg.FileDownloadManger"

    const-string v7, "get download uri: [%s]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v3, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    :cond_4
    :goto_1
    if-eq v4, v10, :cond_5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v3, "MicroMsg.FileDownloadManger"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "download failed: reason: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3f1

    if-ne v1, v3, :cond_5

    const/16 v1, 0x8

    iput v1, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    :cond_5
    if-eq v5, v10, :cond_6

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fin:J

    :cond_6
    if-eq v6, v10, :cond_7

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fio:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v1, "MicroMsg.FileDownloadManger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FileDownloadQueryItem result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/downloader/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    const-string v1, "MicroMsg.FileDownloadManger"

    const-string v3, "get download uri failed"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "MicroMsg.FileDownloadManger"

    const-string v4, "query download info failed: [%s]"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v11

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x10

    iput v1, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    goto :goto_2
.end method

.method public static qv(Ljava/lang/String;)Lcom/tencent/mm/storage/ah;
    .locals 5
    .parameter

    .prologue
    .line 469
    new-instance v0, Lcom/tencent/mm/storage/ah;

    invoke-direct {v0}, Lcom/tencent/mm/storage/ah;-><init>()V

    .line 470
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    :cond_0
    const-string v1, "MicroMsg.FileDownloadManger"

    const-string v2, "getDownloadInfo account not ready, ignore this query: [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    :cond_1
    :goto_0
    return-object v0

    .line 475
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ai;->qv(Ljava/lang/String;)Lcom/tencent/mm/storage/ah;

    move-result-object v0

    .line 476
    if-nez v0, :cond_1

    .line 477
    new-instance v0, Lcom/tencent/mm/storage/ah;

    invoke-direct {v0}, Lcom/tencent/mm/storage/ah;-><init>()V

    goto :goto_0
.end method

.method public static qw(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 611
    invoke-static {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->qv(Ljava/lang/String;)Lcom/tencent/mm/storage/ah;

    move-result-object v0

    .line 612
    iget-wide v1, v0, Lcom/tencent/mm/storage/ah;->field_downloadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 613
    iget-wide v0, v0, Lcom/tencent/mm/storage/ah;->field_downloadId:J

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->bA(J)I

    .line 617
    :goto_0
    return-void

    .line 615
    :cond_0
    const-string v0, "MicroMsg.FileDownloadManger"

    const-string v1, "removeDownloadTask failed: get downloadinfo faild : [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    invoke-static {p0, p1, p2}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 538
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, v4

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
