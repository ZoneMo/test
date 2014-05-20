.class final Lcom/tencent/mm/pluginsdk/model/downloader/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/model/downloader/c;


# instance fields
.field final synthetic dnz:J

.field final synthetic fip:Lcom/tencent/mm/storage/ah;

.field final synthetic fiq:Lcom/tencent/mm/pluginsdk/model/downloader/e;

.field final synthetic fir:Z

.field final synthetic fis:Z

.field final synthetic fit:I

.field final synthetic fiu:Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;Lcom/tencent/mm/storage/ah;Lcom/tencent/mm/pluginsdk/model/downloader/e;JZZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fiu:Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;

    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fiq:Lcom/tencent/mm/pluginsdk/model/downloader/e;

    iput-wide p4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->dnz:J

    iput-boolean p6, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fir:Z

    iput-boolean p7, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fis:Z

    iput p8, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 758
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-nez v0, :cond_4

    .line 760
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v3, "download successful, report to server:[%s],[%s],[%s]"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget-object v5, v5, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget-object v5, v5, Lcom/tencent/mm/storage/ah;->field_downloadKey:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget-object v5, v5, Lcom/tencent/mm/storage/ah;->field_downloadUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    new-instance v3, Lcom/tencent/mm/c/a/fh;

    invoke-direct {v3}, Lcom/tencent/mm/c/a/fh;-><init>()V

    .line 762
    iget-object v0, v3, Lcom/tencent/mm/c/a/fh;->bPU:Lcom/tencent/mm/c/a/fi;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget-object v4, v4, Lcom/tencent/mm/storage/ah;->field_downloadKey:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/mm/c/a/fi;->appId:Ljava/lang/String;

    .line 763
    iget-object v0, v3, Lcom/tencent/mm/c/a/fh;->bPU:Lcom/tencent/mm/c/a/fi;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fiq:Lcom/tencent/mm/pluginsdk/model/downloader/e;

    iget-wide v4, v4, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fin:J

    iput-wide v4, v0, Lcom/tencent/mm/c/a/fi;->bPV:J

    .line 764
    iget-object v0, v3, Lcom/tencent/mm/c/a/fh;->bPU:Lcom/tencent/mm/c/a/fi;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fiq:Lcom/tencent/mm/pluginsdk/model/downloader/e;

    iget-wide v4, v4, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fio:J

    iput-wide v4, v0, Lcom/tencent/mm/c/a/fi;->bPW:J

    .line 765
    iget-object v0, v3, Lcom/tencent/mm/c/a/fh;->bPU:Lcom/tencent/mm/c/a/fi;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget-object v4, v4, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/mm/c/a/fi;->bPY:Ljava/lang/String;

    .line 766
    iget-object v0, v3, Lcom/tencent/mm/c/a/fh;->bPU:Lcom/tencent/mm/c/a/fi;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget-object v4, v4, Lcom/tencent/mm/storage/ah;->field_downloadUrl:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/mm/c/a/fi;->bPZ:Ljava/lang/String;

    .line 767
    iget-object v0, v3, Lcom/tencent/mm/c/a/fh;->bPU:Lcom/tencent/mm/c/a/fi;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget-object v4, v4, Lcom/tencent/mm/storage/ah;->field_md5:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/mm/c/a/fi;->bPX:Ljava/lang/String;

    .line 768
    iget-object v0, v3, Lcom/tencent/mm/c/a/fh;->bPU:Lcom/tencent/mm/c/a/fi;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget v4, v4, Lcom/tencent/mm/storage/ah;->field_source:I

    iput v4, v0, Lcom/tencent/mm/c/a/fi;->bLN:I

    .line 769
    iget-object v4, v3, Lcom/tencent/mm/c/a/fh;->bPU:Lcom/tencent/mm/c/a/fi;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget v0, v0, Lcom/tencent/mm/storage/ah;->field_autoInstall:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v4, Lcom/tencent/mm/c/a/fi;->bQb:Z

    .line 770
    iget-object v4, v3, Lcom/tencent/mm/c/a/fh;->bPU:Lcom/tencent/mm/c/a/fi;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget v0, v0, Lcom/tencent/mm/storage/ah;->field_isGameFile:I

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, v4, Lcom/tencent/mm/c/a/fi;->bQa:Z

    .line 771
    iget-object v4, v3, Lcom/tencent/mm/c/a/fh;->bPU:Lcom/tencent/mm/c/a/fi;

    if-eqz p3, :cond_2

    move v0, v2

    :goto_2
    iput v0, v4, Lcom/tencent/mm/c/a/fi;->bQc:I

    .line 772
    iget-object v0, v3, Lcom/tencent/mm/c/a/fh;->bPU:Lcom/tencent/mm/c/a/fi;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget-object v4, v4, Lcom/tencent/mm/storage/ah;->field_fromAppId:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/mm/c/a/fi;->bQd:Ljava/lang/String;

    .line 773
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 775
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v3, "check md5 finished, report the checked result:appid:[%s],checkedMD5:[%s],origMD5:[%s]"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget-object v5, v5, Lcom/tencent/mm/storage/ah;->field_downloadKey:Ljava/lang/String;

    aput-object v5, v4, v1

    aput-object p2, v4, v2

    aput-object p1, v4, v6

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    new-instance v0, Lcom/tencent/mm/c/a/fj;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fj;-><init>()V

    .line 777
    iget-object v3, v0, Lcom/tencent/mm/c/a/fj;->bQe:Lcom/tencent/mm/c/a/fk;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget-object v4, v4, Lcom/tencent/mm/storage/ah;->field_downloadKey:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/mm/c/a/fk;->appId:Ljava/lang/String;

    .line 778
    iget-object v3, v0, Lcom/tencent/mm/c/a/fj;->bQe:Lcom/tencent/mm/c/a/fk;

    iput-object p2, v3, Lcom/tencent/mm/c/a/fk;->bQg:Ljava/lang/String;

    .line 779
    iget-object v3, v0, Lcom/tencent/mm/c/a/fj;->bQe:Lcom/tencent/mm/c/a/fk;

    iput-object p1, v3, Lcom/tencent/mm/c/a/fk;->bQf:Ljava/lang/String;

    .line 780
    iget-object v3, v0, Lcom/tencent/mm/c/a/fj;->bQe:Lcom/tencent/mm/c/a/fk;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fip:Lcom/tencent/mm/storage/ah;

    iget-object v4, v4, Lcom/tencent/mm/storage/ah;->field_downloadUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/mm/c/a/fk;->bPZ:Ljava/lang/String;

    .line 781
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 782
    if-eqz p3, :cond_3

    .line 783
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fiu:Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;

    iget-wide v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->dnz:J

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fiu:Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;

    iget-boolean v3, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fir:Z

    iget-boolean v4, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fis:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->b(JLandroid/content/Context;ZZ)V

    .line 791
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fiu:Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fit:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->stopSelf(I)V

    .line 792
    return-void

    :cond_0
    move v0, v2

    .line 769
    goto :goto_0

    :cond_1
    move v0, v1

    .line 770
    goto :goto_1

    :cond_2
    move v0, v1

    .line 771
    goto :goto_2

    .line 785
    :cond_3
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v3, "check md5 failed, origmd5:[%s], checked md5:[%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v2

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 786
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fiu:Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;

    iget-wide v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->dnz:J

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/model/downloader/f;->fiu:Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->b(JLandroid/content/Context;)V

    goto :goto_3

    .line 789
    :cond_4
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "no account login, ingnore report"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
