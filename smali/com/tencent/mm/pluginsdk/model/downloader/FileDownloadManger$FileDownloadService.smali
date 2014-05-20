.class public Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static a(JLandroid/content/Context;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 824
    const/4 v0, 0x0

    .line 825
    invoke-static {p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->by(J)Lcom/tencent/mm/storage/ah;

    move-result-object v1

    .line 826
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 827
    iget-object v0, v1, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    .line 829
    :cond_0
    long-to-int v1, p0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x1000

    invoke-static {p2, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 830
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/tencent/mm/n;->boa:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p2

    move-wide v1, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->a(Landroid/content/Context;JLandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-static {p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->bA(J)I

    .line 834
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/m;->aqu()Lcom/tencent/mm/pluginsdk/model/downloader/l;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/l;->bo(J)V

    .line 835
    return-void
.end method

.method private static a(JLandroid/content/Context;ZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x1000

    .line 842
    const/4 v0, 0x0

    .line 844
    invoke-static {p2, p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->g(Landroid/content/Context;J)Lcom/tencent/mm/pluginsdk/model/downloader/e;

    move-result-object v1

    .line 845
    invoke-static {p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->by(J)Lcom/tencent/mm/storage/ah;

    move-result-object v2

    .line 846
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 847
    iget-object v0, v2, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    .line 851
    :cond_0
    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 852
    if-eqz p3, :cond_3

    .line 853
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.mm.game.md5check"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 856
    const-string v2, "game_download_id"

    invoke-virtual {v1, v2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 857
    long-to-int v2, p0

    invoke-static {p2, v2, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 858
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->aqm()Ljava/util/Set;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bob:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/tencent/mm/n;->bnZ:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p2

    move-wide v1, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->a(Landroid/content/Context;JLandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_1
    invoke-static {p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->bx(J)V

    .line 864
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/m;->aqu()Lcom/tencent/mm/pluginsdk/model/downloader/l;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/l;->bn(J)V

    .line 886
    :cond_2
    :goto_0
    return-void

    .line 866
    :cond_3
    iget-object v1, v2, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    .line 867
    const-string v2, "MicroMsg.FileDownloadService"

    const-string v3, "filepath:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 869
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 870
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 871
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 874
    long-to-int v2, p0

    invoke-static {p2, v2, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bob:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/tencent/mm/n;->bnZ:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p2

    move-wide v1, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->a(Landroid/content/Context;JLandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/m;->aqu()Lcom/tencent/mm/pluginsdk/model/downloader/l;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/l;->bn(J)V

    .line 877
    if-eqz p4, :cond_2

    .line 878
    invoke-static {p2, v6}, Lcom/tencent/mm/pluginsdk/model/app/u;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    .line 884
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->a(JLandroid/content/Context;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;JLandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 890
    new-instance v1, Landroid/app/Notification;

    const v0, 0x1080082

    const-string v2, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 891
    const-string v0, ""

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 892
    invoke-virtual {v1, p0, p4, p5, p3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 893
    const/4 v0, -0x1

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 894
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 896
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 897
    long-to-int v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 898
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "show notification"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method static synthetic b(JLandroid/content/Context;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 696
    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->by(J)Lcom/tencent/mm/storage/ah;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v1, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    :cond_0
    long-to-int v1, p0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x1000

    invoke-static {p2, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/tencent/mm/n;->boj:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p2

    move-wide v1, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->a(Landroid/content/Context;JLandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->bA(J)I

    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/m;->aqu()Lcom/tencent/mm/pluginsdk/model/downloader/l;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/pluginsdk/model/downloader/l;->bo(J)V

    return-void
.end method

.method static synthetic b(JLandroid/content/Context;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 696
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->a(JLandroid/content/Context;ZZ)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 701
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 706
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "FileDownloadService onCreate"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 708
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 903
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "FileDownloadService onDestroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 905
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 712
    if-nez p1, :cond_0

    .line 714
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "null intent"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0, p3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->stopSelf(I)V

    .line 716
    const/4 v0, 0x3

    .line 807
    :goto_0
    return v0

    .line 719
    :cond_0
    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 720
    invoke-static {v4, v5}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->by(J)Lcom/tencent/mm/storage/ah;

    move-result-object v2

    .line 722
    iget v0, v2, Lcom/tencent/mm/storage/ah;->field_isGameFile:I

    if-nez v0, :cond_2

    const/4 v6, 0x1

    .line 723
    :goto_1
    iget v0, v2, Lcom/tencent/mm/storage/ah;->field_autoInstall:I

    if-nez v0, :cond_3

    const/4 v7, 0x0

    .line 724
    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->aqm()Ljava/util/Set;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 725
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "no user login, wait next login"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0, p3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->stopSelf(I)V

    .line 727
    const/4 v0, 0x3

    goto :goto_0

    .line 722
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 723
    :cond_3
    const/4 v7, 0x1

    goto :goto_2

    .line 730
    :cond_4
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_5

    .line 731
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "receive error downloadId : -1"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0, p3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->stopSelf(I)V

    .line 733
    const/4 v0, 0x3

    goto :goto_0

    .line 736
    :cond_5
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->aqm()Ljava/util/Set;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 737
    invoke-static {v4, v5, p0, v6, v7}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->a(JLandroid/content/Context;ZZ)V

    .line 738
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->stopSelf()V

    .line 739
    const/4 v0, 0x3

    goto :goto_0

    .line 742
    :cond_6
    iget-wide v0, v2, Lcom/tencent/mm/storage/ah;->field_downloadId:J

    const-wide/16 v8, -0x1

    cmp-long v0, v0, v8

    if-nez v0, :cond_7

    .line 743
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "query local downloadinfo failed, maybe changed account"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0, p3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->stopSelf(I)V

    .line 745
    const/4 v0, 0x3

    goto :goto_0

    .line 747
    :cond_7
    invoke-static {p0, v4, v5}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->g(Landroid/content/Context;J)Lcom/tencent/mm/pluginsdk/model/downloader/e;

    move-result-object v3

    .line 748
    iget v0, v3, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 749
    iget-object v0, v3, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 750
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "query from content provider uri is not null, update loacal download info:[%s]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v2, Lcom/tencent/mm/storage/ah;->field_fileName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v0, v1, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    iget-object v0, v3, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/storage/ah;->field_filePathFromURI:Ljava/lang/String;

    .line 752
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sy()Lcom/tencent/mm/storage/ai;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/ai;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    .line 754
    :cond_8
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/downloader/f;

    move-object v1, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/tencent/mm/pluginsdk/model/downloader/f;-><init>(Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;Lcom/tencent/mm/storage/ah;Lcom/tencent/mm/pluginsdk/model/downloader/e;JZZI)V

    invoke-static {v4, v5, v0}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->a(JLcom/tencent/mm/pluginsdk/model/downloader/c;)V

    .line 807
    :goto_3
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 794
    :cond_9
    iget v0, v3, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    .line 795
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-nez v0, :cond_a

    .line 796
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "download failed, do notify"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-static {v4, v5, p0}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->a(JLandroid/content/Context;)V

    .line 801
    :goto_4
    invoke-virtual {p0, p3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->stopSelf(I)V

    goto :goto_3

    .line 799
    :cond_a
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "no account login, ingnore notify"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 803
    :cond_b
    const-string v0, "MicroMsg.FileDownloadService"

    const-string v1, "do not deal this download status:[%d], just stop service"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v3, v3, Lcom/tencent/mm/pluginsdk/model/downloader/e;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    invoke-virtual {p0, p3}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger$FileDownloadService;->stopSelf(I)V

    goto :goto_3
.end method
